files=`find -name "id:*"`
let i=0
let now=0
for file in ${files}
do
        echo "now ${file}, total ${now}"
        timeout 5s /home/majiang/open-tools/afl-2.52b-full-cap/test_binutils/as-new ${file} &
	pid=$!
	echo  "${pid}  ${file}" >> cmdlog
        i=$((i+1))
	now=$((now+1))
       if [ ${i} -gt 256 ] ; then
               wait
               i=0
       fi
done

