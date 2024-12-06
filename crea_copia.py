filestxt = ['moca.txt', 'ridelim.txt']
 

fil = open('hosts.dat', 'r')

pati = ':/misc/tournoux2/santosg/linux_IP'

datos = fil.readlines()

comando = open('comandos.sh', 'w')
comando.write('#!/bin/bash\n')
comando.write('\n')

k=1
for pref in filestxt:
 pos = pref.find('.txt')
 nombre = pref[:pos]

 for ss in datos:
  ss = ss.replace('\n', '')
  ss = ss.replace(' ', '')
  ss=ss.split(';')

  ipO = ss[0]
  ipN = ss[1]
  maquina = ss[3]
  if nombre == maquina:
   print(maquina)
   comando.write('scp '+ pref + ' santosg@' + ipO + pati +'/etc/network/interfaces'+str(k)+'\n')
   k=k+1

comando.close()

'''
# print(ipO)
# print(ipN)
# print(maquina)
 if len(ipN)>1:
  filename =  maquina+'.txt'
#  print(filename)
  fileo = open(filename, 'w')
  fileo.write('iface eth0 inet static\n')
  fileo.write('address '+ipN+'\n')
  fileo.write('netmask 255.255.255.0\n')
  fileo.write('gateway 172.24.220.254\n')
  fileo.close()
'''


