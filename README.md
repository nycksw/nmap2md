# nmap2md
An exercise in XSLT

## Usage

````console
$ xsltproc nmap2md.xsl test_servmon.xml
Warning: program compiled against libxml 212 using older 209
### TCP

- Target: `servmon.htb 10.10.10.184`
- Command: `nmap -v --reason -Pn -T4 --min-rate 10000 -p- --open -sCV -oX foo.xml servmon.htb

#### 21/tcp-ftp `Microsoft ftpd`

```
__ftp-anon:
Anonymous FTP login allowed (FTP code 230)
02-28-22  07:35PM       <DIR>          Users
__ftp-syst:
  SYST: Windows_NT
```

#### 22/tcp-ssh `OpenSSH` `for_Windows_8.0` `(protocol 2.0)`

```
__ssh-hostkey:
  3072 c7:1a:f6:81:ca:17:78:d0:27:db:cd:46:2a:09:2b:54 (RSA)
  256 3e:63:ef:3b:6e:3e:4a:90:f3:4c:02:e9:40:67:2e:42 (ECDSA)
  256 5a:48:c8:cd:39:78:21:29:ef:fb:ae:82:1d:03:ad:af (ED25519)
```

#### 80/tcp-http

```
__http-methods:
  Supported Methods: GET HEAD POST OPTIONS
__fingerprint-strings:
  GetRequest, HTTPOptions, RTSPRequest:
    HTTP/1.1 200 OK
    Content-type: text/html
    Content-Length: 340
    Connection: close
    AuthInfo:
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <title></title>
    <script type="text/javascript">
    window.location.href = "Pages/login.htm";
    </script>
    </head>
    <body>
    </body>
    </html>
  NULL:
    HTTP/1.1 408 Request Timeout
    Content-type: text/html
    Content-Length: 0
    Connection: close
    AuthInfo:
__http-favicon:
Unknown favicon MD5: 3AEF8B29C4866F96A539730FAB53A88F
__http-title:
Site doesn't have a title (text/html).
```

#### 135/tcp-msrpc `Microsoft Windows RPC`

#### 139/tcp-netbios-ssn `Microsoft Windows netbios-ssn`

#### 445/tcp-microsoft-ds

#### 5666/tcp-tcpwrapped

#### 6063/tcp-x11

#### 6699/tcp-napster

#### 8443/tcp-https-alt

```
__ssl-cert:
Subject: commonName=localhost
Issuer: commonName=localhost
Public Key type: rsa
Public Key bits: 2048
Signature Algorithm: sha1WithRSAEncryption
Not valid before: 2020-01-14T13:24:20
Not valid after:  2021-01-13T13:24:20
MD5:   1d03:0c40:5b7a:0f6d:d8c8:78e3:cba7:38b4
SHA-1: 7083:bd82:b4b0:f9c0:cc9c:5019:2f9f:9291:4694:8334
__ssl-date:
TLS randomness does not represent time
__http-title:
NSClient++
Requested resource was /index.html
__http-methods:
  Supported Methods: GET
__fingerprint-strings:
  FourOhFourRequest, HTTPOptions, RTSPRequest, SIPOptions:
    HTTP/1.1 404
    Content-Length: 18
    Document not found
  GetRequest:
    HTTP/1.1 302
    Content-Length: 0
    Location: /index.html
```

#### 49664/tcp-msrpc `Microsoft Windows RPC`

#### 49665/tcp-msrpc `Microsoft Windows RPC`

#### 49666/tcp-msrpc `Microsoft Windows RPC`

#### 49667/tcp-msrpc `Microsoft Windows RPC`

#### 49668/tcp-msrpc `Microsoft Windows RPC`

#### 49669/tcp-msrpc `Microsoft Windows RPC`

#### 49670/tcp-msrpc `Microsoft Windows RPC`
````

Results:

### TCP

- Target: `servmon.htb 10.10.10.184`
- Command: `nmap -v --reason -Pn -T4 --min-rate 10000 -p- --open -sCV -oX foo.xml servmon.htb

#### 21/tcp-ftp `Microsoft ftpd`

```
__ftp-anon:
Anonymous FTP login allowed (FTP code 230)
02-28-22  07:35PM       <DIR>          Users
__ftp-syst:
  SYST: Windows_NT
```

#### 22/tcp-ssh `OpenSSH` `for_Windows_8.0` `(protocol 2.0)`

```
__ssh-hostkey:
  3072 c7:1a:f6:81:ca:17:78:d0:27:db:cd:46:2a:09:2b:54 (RSA)
  256 3e:63:ef:3b:6e:3e:4a:90:f3:4c:02:e9:40:67:2e:42 (ECDSA)
  256 5a:48:c8:cd:39:78:21:29:ef:fb:ae:82:1d:03:ad:af (ED25519)
```

#### 80/tcp-http

```
__http-methods:
  Supported Methods: GET HEAD POST OPTIONS
__fingerprint-strings:
  GetRequest, HTTPOptions, RTSPRequest:
    HTTP/1.1 200 OK
    Content-type: text/html
    Content-Length: 340
    Connection: close
    AuthInfo:
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <title></title>
    <script type="text/javascript">
    window.location.href = "Pages/login.htm";
    </script>
    </head>
    <body>
    </body>
    </html>
  NULL:
    HTTP/1.1 408 Request Timeout
    Content-type: text/html
    Content-Length: 0
    Connection: close
    AuthInfo:
__http-favicon:
Unknown favicon MD5: 3AEF8B29C4866F96A539730FAB53A88F
__http-title:
Site doesn't have a title (text/html).
```

#### 135/tcp-msrpc `Microsoft Windows RPC`

#### 139/tcp-netbios-ssn `Microsoft Windows netbios-ssn`

#### 445/tcp-microsoft-ds

#### 5666/tcp-tcpwrapped

#### 6063/tcp-x11

#### 6699/tcp-napster

#### 8443/tcp-https-alt

```
__ssl-cert:
Subject: commonName=localhost
Issuer: commonName=localhost
Public Key type: rsa
Public Key bits: 2048
Signature Algorithm: sha1WithRSAEncryption
Not valid before: 2020-01-14T13:24:20
Not valid after:  2021-01-13T13:24:20
MD5:   1d03:0c40:5b7a:0f6d:d8c8:78e3:cba7:38b4
SHA-1: 7083:bd82:b4b0:f9c0:cc9c:5019:2f9f:9291:4694:8334
__ssl-date:
TLS randomness does not represent time
__http-title:
NSClient++
Requested resource was /index.html
__http-methods:
  Supported Methods: GET
__fingerprint-strings:
  FourOhFourRequest, HTTPOptions, RTSPRequest, SIPOptions:
    HTTP/1.1 404
    Content-Length: 18
    Document not found
  GetRequest:
    HTTP/1.1 302
    Content-Length: 0
    Location: /index.html
```

#### 49664/tcp-msrpc `Microsoft Windows RPC`

#### 49665/tcp-msrpc `Microsoft Windows RPC`

#### 49666/tcp-msrpc `Microsoft Windows RPC`

#### 49667/tcp-msrpc `Microsoft Windows RPC`

#### 49668/tcp-msrpc `Microsoft Windows RPC`

#### 49669/tcp-msrpc `Microsoft Windows RPC`

#### 49670/tcp-msrpc `Microsoft Windows RPC`
