echo 'Disk command'

df -H

echo 'Memory command'

free -m

echo 'top Command'

# Intervalo em segundos
top -d 1

# C - Show full command path
# K - KIll a process


sed 's/java/guava/' example.txt
sed 's/java/guava/2' example.txt
sed 's/java/guava/g' example.txt
sed 's/java/guava/2g' example.txt
sed 's/java/guava/p' example.txt


#SHOW USED PORTS
netstat -tulpn


# HTTP POST call
curl -X POST --header 'Content-Type: application/json' --header 'Accept: text/plain' 'http://localhost:8090/api/product/create' -d '{"id: "123", "description" : "Samsung"}'


#CRONTAB
# De hora em hora. Entre 8 e 18. Dia útil apenas.
H 8-18 * * 1-5


# Find files or Folders
find . -type d -name vault
