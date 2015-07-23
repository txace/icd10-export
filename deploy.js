var util = require('mis-util');
var config = require('./config.ignore');
var Q = require('Q');

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

mis.parm.dstlisttojson('./icd10.dstlist')
.then(function(data) { 
   return Q([].concat.apply([], data.map(function(dst) {
      dst.sqlcol = dst.shortname.replace(/\./g, '_');
      if (!dst.dct) { 
         return [dst];
      }
      return [dst, 
         {
            shortname: dst.shortname,
            dct: dst.dct,
            sqlcol: dst.sqlcol + '_description'
         }
      ];
   })));
})
.then(mis.parm.dstjsontoparm.bind(mis, [
   {parmname: 'dst', dstfield: 'shortname'},
   {parmname: 'dst_lkp', dstfield: 'dct'},
   {parmname: 'sql_col', dstfield: 'sqlcol'}
]))
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
.then(mis.parm.tofile.bind(mis, './DX10EXP.parm'))
.then(mis.deploy.parm);
