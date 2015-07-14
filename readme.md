## Configuration files for exporting the DX10 CMHC DST Record

### Assumptions

This project assumes that you are using the DX10 DST Record as defined by [txace/icd10-sql](https://github.com/txace/icd10-sql).

### Dependencies

[cmhc-export](https://github.com/txace/cmhc-export)

#### Build Dependencies

   * iojs
   * npm

### Manual Install

   - Copy DX10EXP.parm into your $sysname/PARM dir as DX10EXP
   - Use CMHC to edit the DX10EXP Parm file and update the following parameters as appropriate for your system:
      * admin
      * SQL_TABLE
      * SQL_DSNFILE

### Manual Execute

   - Execute the sql-export script with DX10EXP as the first argument
      * sql-export is [available here](https://github.com/txace/cmhc-export)

### Automated Build / Install

   - Install iojs
   - update deploy.js and export.js with parameters appropriate for your system:
      * sysname
      * username
      * cronuser
   - add a config.ignore.json file with the following info:
   ```
   {
      "user": "youruserpassword",
      "cron": "yourcronpassword"
   }
   ```
   - update DX10EXP.txt file with parameters appropriate for your system:
   - `iojs deploy` to build the parmfile and install in your system
   - `iojs export` to build the parmfile and install in your system and run the export script

