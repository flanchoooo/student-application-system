from __future__ import print_function
import json
import hashlib
from textreading import read_file
from virus_total_apis import PublicApi as VirusTotalPublicApi

API_KEY = 'cb99ce752ee1e7c4944cd5e6f735860f05f22d5a19a70d61736f3a81596259d0'

EICAR = "psych.jpg".encode('utf-8')
EICAR_MD5 = hashlib.md5(EICAR).hexdigest()

vt = VirusTotalPublicApi(API_KEY)

response = vt.get_file_report(EICAR_MD5)
print(json.dumps(response, sort_keys=False, indent=4))