from pyzabbix import ZabbixAPI

# Create ZabbixAPI class instance
zapi = ZabbixAPI(url='http://51.255.211.205/zabbix/', user='Admin', password='zabbix')

# Get all disabled hosts
result = zapi.host.get(status=1)
hostnames = [host['host'] for host in result]
print (hostnames)

# Other way to get all disabled hosts
result2 = zapi.do_request('host.get', {'status':1})
hostnames2 = [host['host'] for host in result2['result']]
print(hostnames2)