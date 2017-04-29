function request(){
	if [ ! -z  $1 ]
	then
		curl -s -G "192.237.172.192/?find=$1" >> /tmp/madura.html
		cat /tmp/madura.html | grep 'class="td">' | cut -d">" -f7 | grep -v "^&" | cut -d"<" -f1
		rm /tmp/madura.html
	else
		echo "madura: [word]"
	fi
	
}

request "$1"
