SOURCE=$1
TARGET=$2
INTERIM=`basename $SOURCE`

for i in `cat cluster`; do
scp -i ./ohio.pem $SOURCE centos@$i:~/
ssh -t -i ./ohio.pem centos@$i "sudo cp $INTERIM $TARGET"
done

