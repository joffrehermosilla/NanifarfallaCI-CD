crumb=$(curl -u "angela:1234" -s 'http://jenkins.local:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
#curl -u "angela:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec
curl -u "angela:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/db-ansible-users/buildWithParameters?EDAD=24