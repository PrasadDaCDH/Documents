for i in `cat cluster`; do
ssh -t -i ./ohio.pem centos@$i $* 
done

