import sys

maquina = sys.argv[1]
ip = sys.argv[2]

file = maquina+'_01-network-manager-all.yaml'

fil = open(file,'w')

var = ''' # Let NetworkManager manage all devices on this system
network:
  version: 2
  renderer: NetworkManager
  ethernets:
    enp0s25:
      dhcp4: no
'''

fil.write(var)

adress = '      addresses: ['+ ip + '/24]'

#fil.write('      addresses: [172.24.80.73/24]')
fil.write(adress)
var2= '''
      gateway4: 172.24.80.94
      nameservers:
          addresses: [132.248.10.2, 132.248.204.1, 208.67.222.222]
'''

fil.write(var2)
fil.close()

