

#ÿ5���ַ���߼��ϻ��з�"\n"
[root@local_game_server2 test]# echo "12345678901"|sed -r ':1;s/([^\n]{5})([^\n])/\1\n\2/;t1'
12345
67890
1
[root@local_game_server2 test]# echo "12345678901"|sed -n 'l6'|sed 's/.$//g'
12345
67890
1
[root@local_game_server2 test]# echo "12345678901"|grep -Eo '.{1,5}'
12345
67890
1
[root@local_game_server2 test]# echo "1234567890"|awk --re-interval -F '' 'gsub(".{5}","&\n")' (������bug)
12345
67890





#��ʮ����IPת���ɶ�����IP��

255.5.2.10
echo "obase=2;255"|bc

awk -F\.  '{for(i=1;i<=4;i++){"echo \"obase=2;"$i"\"|bc"|getline a;printf(a=="0")?"00000000":"%08s",a OFS};print ""}' OFS="." <<<"255.5.2.10"|sed 's/\.$//g'