date +%R
date +"%m-%d-%y"
date +"%D"
date +"%T"
cd home/ubuntu/oslab/
touch date_parse.sh
echo "#! /usr/bin/bash" >> data_parse.sh
echo "Year='date +%Y'" >> data_parse.sh
echo "Month='date +%m'" >> data_parse.sh
echo "Day='date +%d'" >> data_parse.sh
echo "Hour='date +%H'" >> data_parse.sh
echo "Minute='date +%M'" >> data_parse.sh
echo "Second='date +%S'" >> data_parse.sh
echo "echo 'date'" >> data_parse.sh
echo 'echo "Current Date is: $Day-$Month-$Year"' >> data_parse.sh
echo 'echo "Current Time is: $Hour:$Minute:$Second"' >> data_parse.sh
bash data_parse.sh
touch /tmp/saved-timestamp
date > /tmp/saved-timestamp
touch /tmp/last-100boot-messages
tail -n 100 /var/log/dmesg > /tmp/last-100boot-messages
touch file1 file2 file3 file4
touch /tmp/all-four-in-one
cat file1 file2 file3 file4 > /tmp/all-four-in-one
touch /tmp/my-file-names
ls -a > /tmp/my-file-names
touch /tmp/many-lines-of-information
echo "new line of information" >> /tmp/many-lines-of-information
touch /tmp/tracking-changes-made
touch previous-file
touch current-file
diff previous-file current-file >> /tmp/tracking-changes-made
find /etc -name passwd 2> /tmp/errors
find /etc -name passwd > /tmp/output 2> /tmp/errors
find /etc -name passwd &> /tmp/save-both
find /etc -name passwd >> /tmp/save-both 2>&1
ls -l /usr/bin | less
ls | wc -l
ls -t | head -n 10 > /tmp/ten-last-changed-files
ls > /tmp/saved-output | less
ls -l | tee /tmp/saved-output | less
ls -t | head -n 10 | tee /tmp/ten-last-changed-files
id
ls -l /tmp
ps au
su -
touch whoWhatWhich
chmod whoWhatWhich file|directory
chmod go-rw file1
chmod a+x file2
mkdir sampledir
chmod 750 sampledir
useradd student
chown student foofile
touch foofile
chown student foofile
mkdir foodir
chown -R student foodir
useradd admins
chown :admins foodir
useradd visitor
useradd guests
chown visitor:guests foodir
ps aux