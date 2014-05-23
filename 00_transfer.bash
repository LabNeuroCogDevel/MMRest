# rsync commands to get files from wallace (raw)

rsync -hiva $1 foranw@wallace:/data/Luna1/MultiModal/FS_Subjects\*/ --include="*/mri" --include="*/mri/T1.mgz" --include="*/mri/aseg.mgz" --exclude="*/mri/**" --exclude="*/**" ./

rsync -hiva $1 foranw@wallace:/data/Luna1/Raw/Multi\*/ --include='*/Rest*' --include='*/Rest*/**' --include='*/*mprage*' --include='*/*mprage*/**' --include='*/gre*' --include='*/gre*/**' --exclude='*/**' ./

