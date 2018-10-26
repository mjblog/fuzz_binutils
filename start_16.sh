i=0
while [ $i -lt 16 ]
do
 ./afl-fuzz -m  1000  -i ./test_binutils/in -o test_binutils/out  -S fuzzer${i} --  test_binutils/gas/as-new &

  i=$((i+1))
done
