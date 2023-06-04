# Week - 2 Files & Navigation

In this lab I learned how to create files and folders and also learned how to manipulate files and folders.

## GIT commands

- The init command will initialize an empty repository:
```bash
git init
```
- This command is used to make a copy of a repository from an existing URL:
```bash
git clone
```
- This command is used to add one or more files to staging (Index) area.
```bash
git add
```
- This command changes the head. It records or snapshots the file permanently in the version history with a message.
```bash
git commit -m 
```
- This command sends the changes made on the master branch, to your remote repository.
```bash
git push 
```
## Linux file system hierarchy
- Create directory
```bash
mkdir nameOfDirectory
```
- Copy a file
```bash
cp file new-file
```
- Copy a directory
```bash
cp -r directory new-directory
```
- Move or rename a directory or file
```bash
mv file new-file
```
- Remove a file
```bash
rm file
```
- Remove a directory containing directory
```bash
rm -r directory
```
- Remove an empty directory
```bash
rmdir directory
```
## Changing file/directory permissions
- Remove read and write permission for group and other on file1
```bash
chmod go-rw file1
```
- Add execute permission for everyone file2
```bash
chmod a+x file2
```
- Set read, write, and execute permission for user read and execute for group and no permission for other on sampledir
```bash
chmod 750 sampledir
```


## Autor
Aitmatov Adilet;\
Student id: 12230114;
