Web Service Regression Testing in Python
Introduction:
 The main object of this project is to develop simple regression testing utility or framework to test
REST web services. Web services are web components that transfer data between client and server. Client
sends a web request to the server through HTTP protocol and the server then responds to client with content
and response code.
In order to develop, I have used the following features from Python:
1. Classes
2. Functions
3. Used list data structure
4. User created iterator
5. Error checks using try-except
6. File input and output
7. Importing external modules
8. Dictionary
Requirements :
 In addition, framework also uses the following modules from Python
import urllib2
import json
import xmltodict
from xml.dom import minidom
import requests
import string
import untangle
from xml.dom.minidom import parse
Description of the Python program :
XML is used to keep regression test cases with the following structure:
<?xml version="1.0"?>
<testcases>
 <testcase>
 <id>1</id>
 <description>Testing Web Service</description>
 <type>GET</type>
 <requestmethod>*****</requestmethod>
 <url>http://finance.yahoo.com/webservice/v1/symbols/BABA/quote?
format=json</url>
 <expectedstatuscode>200</expectedstatuscode>
 <expectedresult>Pass</expectedresult>
 <expectedrequestAssert>checking</expectedrequestAssert>
 </testcase>
 <testcase>
 <id>2</id>
 <description>Testing Web Service</description>
 <type>POST</type>
 <requestmethod>****url****</requestmethod>
 <url>http://finance.yahoo.com/webservice/v1/symbols/AAPL/quote?
format=json</url>
 <expectedstatuscode>200</expectedstatuscode>
 <expectedresult>Pass</expectedresult>
 <expectedrequestAssert>checking</expectedrequestAssert>
 </testcase>
 <testcase>
 <id>3</id>
 <description>Testing Web Service</description>
 <type>GET</type>
 <requestmethod>url</requestmethod>
 <url>http://www.404errorpages.com/sathya</url>
 <expectedstatuscode>404</expectedstatuscode>
 <expectedresult>Pass</expectedresult>
 <expectedrequestAssert>checking</expectedrequestAssert>
 <expectedrequestAssert>checking</expectedrequestAssert>
 </testcase>
 <testcase>
 <id>4</id>
 <description>Testing Web Service</description>
 <type>GET</type>
 <requestmethod>*****</requestmethod>
 <url>http://www.checkupdown.com/status/E304.html</url>
 <expectedstatuscode>200</expectedstatuscode>
 <expectedresult>****</expectedresult>
 <expectedrequestAssert>checking</expectedrequestAssert>
 </testcase>
</testcases>
Python mini DOM package is used to parse XML document. After parsing, each testcase will be constructed
as object and stored in Array.
For the testcase array, framework iterates each test case and executes REST endpoint one by one. After
receiving response from the service, response status code and expected status code from the testcase will
be compared to decide whether test is pass or fail.
Also, at the end of the all testcases execution, report will be printed with testcase ID and status.
Screenshots of the program output:
*****XML OUTPUT********
id : 1
description : Testing Web Service
expectedstatuscode : 200
type : GET
requestmethod : *****
expectedstatuscode : 200
url : http://finance.yahoo.com/webservice/v1/symbols/BABA/quote?format=json
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10b9c83f8>
******************
*****XML OUTPUT********
id : 2
description : Testing Web Service
expectedstatuscode : 200
expectedstatuscode : 200
type : POST
requestmethod : ****url****
expectedstatuscode : 200
url : http://finance.yahoo.com/webservice/v1/symbols/AAPL/quote?format=json
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10b9a5ef0>
******************
*****XML OUTPUT********
id : 3
description : Testing Web Service
expectedstatuscode : 404
type : GET
requestmethod : url
expectedstatuscode : 404
url : http://www.404errorpages.com/sathya
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 404
**************************
In Dict formate :
<__main__.TestData instance at 0x10b9c2ab8>
******************
*****XML OUTPUT********
id : 4
description : Testing Web Service
expectedstatuscode : 200
type : GET
type : GET
requestmethod : *****
expectedstatuscode : 200
url : http://www.checkupdown.com/status/E304.html
expectedresult : ****
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10b9c28c0>
******************
[<__main__.TestData instance at 0x10b9c83f8>, <__main__.TestData instance at 0x10b9a5ef0>,
<__main__.TestData instance at 0x10b9c2ab8>, <__main__.TestData instance at 0x10b9c28c0>]
-------------------------------------------
*****XML OUTPUT********
id : 1
description : Testing Web Service
expectedstatuscode : 200
type : GET
requestmethod : *****
expectedstatuscode : 200
url : http://finance.yahoo.com/webservice/v1/symbols/BABA/quote?format=json
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10b9c8638>
******************
*****XML OUTPUT********
id : 2
description : Testing Web Service
description : Testing Web Service
expectedstatuscode : 200
type : POST
requestmethod : ****url****
expectedstatuscode : 200
url : http://finance.yahoo.com/webservice/v1/symbols/AAPL/quote?format=json
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10bc02908>
******************
*****XML OUTPUT********
id : 3
description : Testing Web Service
expectedstatuscode : 404
type : GET
requestmethod : url
expectedstatuscode : 404
url : http://www.404errorpages.com/sathya
expectedresult : Pass
expectedrequestAssert : checking
statuscode : 404
**************************
In Dict formate :
<__main__.TestData instance at 0x10bc02950>
******************
*****XML OUTPUT********
id : 4
description : Testing Web Service
expectedstatuscode : 200
expectedstatuscode : 200
type : GET
requestmethod : *****
expectedstatuscode : 200
url : http://www.checkupdown.com/status/E304.html
expectedresult : ****
expectedrequestAssert : checking
statuscode : 200
**************************
In Dict formate :
<__main__.TestData instance at 0x10bc02998>
******************
1 GET http://finance.yahoo.com/webservice/v1/symbols/BABA/quote?format=json
status_code : 200
testcase.bexpectedstatuscode : 200
2 POST http://finance.yahoo.com/webservice/v1/symbols/AAPL/quote?format=json
status_code : 200
testcase.bexpectedstatuscode : 200
3 GET http://www.404errorpages.com/sathya
status_code : 404
testcase.bexpectedstatuscode : 404
404 Found!
4 GET http://www.checkupdown.com/status/E304.html
status_code : 200
testcase.bexpectedstatuscode : 200
1 GET http://finance.yahoo.com/webservice/v1/symbols/BABA/quote?format=json
status_code : 200
testcase.bexpectedstatuscode : 200
testcase.bexpectedstatuscode : 200
2 POST http://finance.yahoo.com/webservice/v1/symbols/AAPL/quote?format=json
status_code : 200
testcase.bexpectedstatuscode : 200
3 GET http://www.404errorpages.com/sathya
status_code : 404
testcase.bexpectedstatuscode : 404
404 Found!
4 GET http://www.checkupdown.com/status/E304.html
status_code : 200
testcase.bexpectedstatuscode : 200
Final output :
1 pass
3 404 Found!
2 pass
4 pass
Conclusion:
This tool helps to automate Web Service testing. In future, by adding response assertion this can be
used in real time project.
