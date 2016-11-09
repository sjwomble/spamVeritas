while : 
do

fname=`sort --random-sort fnames | head -n 1`
lname=`sort --random-sort lnames | head -n 1`

txt=`sort --random-sort txts | head -n 1`
txt="$txt. ".`sort --random-sort txts | head -n 1`

echo "first name =$fname last name =$lname text =$txt"

ret=$(curl --ciphers ecdhe_rsa_aes_128_gcm_sha_256 'https://pvforms.wufoo.com/embed/z1u2ligd1ulqeug/' -H 'Pragma: no-cache' -H 'Origin: https://pvforms.wufoo.com' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-GB,en;q=0.8,en-US;q=0.6' -H 'Upgrade-Insecure-Requests: 1' -H 'User-Agent: FBI Official Election Rigging 2016' -H 'Content-Type: multipart/form-data; boundary=----WebKitFormBoundarywa5Ko6QhtjYYAC75' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8' -H 'Cache-Control: no-cache' -H 'Referer: https://pvforms.wufoo.com/embed/z1u2ligd1ulqeug/'  -H 'Connection: keep-alive' --data-binary $'------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field8"\r\n\r\n${fname}\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field9"\r\n\r\n$lname\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field1"\r\n\r\nf@you.com\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field3"\r\n\r\n$\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field5"\r\n\r\nAZ\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field6"\r\n\r\nNV\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field10"\r\n\r\n122\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field10-1"\r\n\r\n112\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field10-2"\r\n\r\n1232\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="Field12"; filename=""\r\nContent-Type: application/octet-stream\r\n\r\n\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="currentPage"\r\n\r\n92YePF6MNwuBeDB5GCzmiwuslashfvNs9q9jzyVMAFe89BpwcNAc=\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="saveForm"\r\n\r\nSubmit\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="comment"\r\n\r\n\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="idstamp"\r\n\r\nVzzKCWQsjWaLywwMi0WScl7l5XwpRn2WZViIN0qP2Ck=\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="stats"\r\n\r\n{"errors":0,"startTime":17739,"endTime":62649,"referer":"http://projectveritas.com/report-voter-fraud-here/"}\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75\r\nContent-Disposition: form-data; name="clickOrEnter"\r\n\r\nclick\r\n------WebKitFormBoundarywa5Ko6QhtjYYAC75--\r\n' --compressed)

echo $ret

sleep 5

done
