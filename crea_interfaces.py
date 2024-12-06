fil = open('hosts.dat', 'r')

datos = fil.readlines()

for ss in datos:
 ss = ss.replace('\n', '')
 ss = ss.replace(' ', '')
 ss=ss.split(';')

 ipO = ss[0]
 ipN = ss[1]
 maquina = ss[3]

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



