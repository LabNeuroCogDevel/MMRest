# rsync commands to get files from wallace (raw)

# grab freesurfer
rsync -hiva $1 foranw@wallace:/data/Luna1/MultiModal/FS_Subjects\*/ --include="*/mri" --include="*/mri/T1.mgz" --include="*/mri/aseg.mgz" --exclude="*/mri/**" --exclude="*/**" ./

# grab raw MRI
rsync -hiva $1 foranw@wallace:/data/Luna1/Raw/Multi\*/ --include='*/Rest*' --include='*/Rest*/**' --include='*/*mprage*' --include='*/*mprage*/**' --include='*/gre*' --include='*/gre*/**' --exclude='*/**' ./

# remove unneeded files matching pattern
rm -r rh.EC_average lh.EC_average incomplete morph-maps fsaverage* torm.sh incomplete 10901-head.fif
