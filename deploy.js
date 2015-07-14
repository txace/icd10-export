var util = require('mis-util');
var config = require('./config.ignore');
var Q = require('q');

var options = {
   sysname: '/c1/FRSH',
   connect: {
      host: 'gccmhc',
      user: 'tim',
      password: config.user
   },
   cron: {
      user: 'datamgr',
      pass: config.cron
   },
   parm_path: {
      local: './'
   },
   usc_path: {
      local: './'
   }
};

var mis = util(options);

console.log('deploying to: ' + options.sysname);

//read the dstlist file
mis.parm.dstlisttojson('./icd10.dstlist')

//add in the sql columns
.then(function(data) { 
   return Q([].concat.apply([], data.map(function(dst) {
      dst.sqlcol = dst.shortname.replace('C.DX10.','').replace(/\./g, '');
      if (dst.sqlcol === 'DT') dst.sqlcol = 'DXDT';
      if (dst.sqlcol === 'TIME') dst.sqlcol = 'DXTIME';
      return dst;
      //if (!dst.dct) { 
      //   return [dst];
      //}
      //return [dst, 
      //   {
      //      shortname: dst.shortname,
      //      dct: dst.dct,
      //      sqlcol: dst.sqlcol + '_description'
      //   }
      //];
   })));
})

//filter out the header records
.then(function(data) { 
   return Q(data.filter(function(dst) { 
      return dst.type !== 'R';
   }).filter(function(dst) { 
      return dst.shortname.toUpperCase() !== 'C.DX10.CONVERTED';
   }));
})

//generate the dst parmlines
.then(mis.parm.dstjsontoparm.bind(mis, [
   {parmname: 'dst', dstfield: 'shortname'},
   //{parmname: 'dst_lkp', dstfield: 'dct'},
   {parmname: 'sql_col', dstfield: 'sqlcol'}
]))

//concat in the other sql-export parm options
.then(function(data) {
   console.log('dst data length: ', data.length);
   return mis.parm.fromflatfile('DX10EXP.txt')
   .then(function(parm) {
      console.log('concat parms');
      return Q([].concat.apply([
         '** Parameters for the sql-export script **',
         '** This parm was automatically generated **',
         '*'
      ], parm.concat(data)));
   });
})

//write the 80 byte file
.then(mis.parm.tofile.bind(mis, './DX10EXP.parm'))

//deploy to cmhc system
//.then(mis.deploy.parm);
