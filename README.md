# rename_photos.pl
Rename Photorec recovered .jpg files with creation date

Photorec is a recovery tool for accidentaly deleted files. The recovered files may be your beloved own photos or temporary
web content images - say garbage.
This Perl script, inspired from the source at https://www.cgsecurity.org/wiki/After_Using_PhotoRec#JPEG, rename .jpg files 
grabbing the timestamp of the moment the photo is taken from metadata and renaming the file accordingly.
In addition, lets you almost distinguish by name your photos from garbage. 

Requires: Linux, Bash, jhead and exif
