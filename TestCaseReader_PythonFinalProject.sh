class TestData: #Class
    def __init__(self,bid,bdescription,btype,brequestmethod,bexpectedstatuscode, burl, bexpectedresult, bexpectedrequestAssert):
        self.bid =  bid 
        self.bdescription = bdescription
        self.btype = btype
        self.brequestmethod = brequestmethod
        self.bexpectedstatuscode = bexpectedstatuscode
        self.burl = burl
        self.bexpectedresult = bexpectedresult
        self.bexpectedrequestAssert = bexpectedrequestAssert

import urllib2  #modules
import json
import xmltodict
from xml.dom import minidom
import requests
import xml.etree.cElementTree as et
import string
import untangle
import xmltodict
from xml.dom import minidom
from xml.dom.minidom import parse
import xml.etree.ElementTree as ET

class TestCaseReader():
     testcases = [] #List
        
     def __init__(self,xmlTestCaseFileName):
            self.xmlTestCaseFileName = xmlTestCaseFileName
            
            
     def readXMLTestCases(self): #functions
        doc = minidom.parse(self.xmlTestCaseFileName)

        testCaseTags = doc.getElementsByTagName("testcase")
        testData = {} #dictionary
        for testcase in testCaseTags:
        
            bid = testcase.getElementsByTagName("id")[0]
            bdescription = testcase.getElementsByTagName("description")[0]
            btype = testcase.getElementsByTagName("type")[0]
            brequestmethod = testcase.getElementsByTagName("requestmethod")[0]
            bexpectedstatuscode = testcase.getElementsByTagName("expectedstatuscode")[0]
            burl =  testcase.getElementsByTagName("url")[0]
            bexpectedresult = testcase.getElementsByTagName("expectedresult")[0]
            bexpectedrequestAssert = testcase.getElementsByTagName("expectedrequestAssert")[0]
               
            print "*****XML OUTPUT********"
            print "id : ",bid.firstChild.data
            print "description : ", bdescription.firstChild.data
            print "expectedstatuscode : ", bexpectedstatuscode.firstChild.data
            print "type : ", btype.firstChild.data
            print "requestmethod :", brequestmethod.firstChild.data
            print "expectedstatuscode : ", bexpectedstatuscode.firstChild.data
            print "url : ", burl.firstChild.data
            print "expectedresult : ", bexpectedresult.firstChild.data
            print "expectedrequestAssert : ", bexpectedrequestAssert.firstChild.data
            print "statuscode :",bexpectedstatuscode.lastChild.data
            print "**************************"
            
            
            testData = TestData(bid.firstChild.data,bdescription.firstChild.data,btype.firstChild.data,brequestmethod.firstChild.data,bexpectedstatuscode.firstChild.data, burl.firstChild.data, bexpectedresult.firstChild.data, bexpectedrequestAssert.firstChild.data)
            
            
            
            
            
            print "In Dict formate : "
            print testData
            self.testcases.append(testData)
            print "******************"
            
        #return
                     
'''
obj = TestCaseReader("/Users/ashwanth/testcases.xml")
obj.readXMLTestCases()
print obj.testcases
'''

class TestCaseExecutor():
    
    results = {}
    def execute(self,testcases):
        for testcase in testcases:
            print testcase.bid,testcase.btype,testcase.burl

            response = self.executeRestWebService(testcase.burl, testcase.btype)
            self.validateResponse(response, testcase)
        
            print
            
    def executeRestWebService(self,burl, requestmethod):
        self.burl = burl
        self.requestmethod = requestmethod
        
        return requests.get(self.burl)
       
        
    def validateResponse(self, response, testcase):
        self.response = response
        self.testcase = testcase
        print "status_code :", response.status_code
        print "testcase.bexpectedstatuscode :" , testcase.bexpectedstatuscode
        
        try:  #try except exception.
            if self.testcase.bexpectedstatuscode ==  200 or self.response.status_code == 200:
                k = self.results[testcase.bid] = "pass"
            
            elif self.testcase.bexpectedstatuscode ==300 or self.response.status_code == 300:
                k = self.results[testcase.bid] = "fail" 
                print k
            
            elif self.testcase.bexpectedstatuscode == 404 or self.response.status_code == 404:
                k = self.results[testcase.bid] = "404 Found!"
                print k
        except IOError, e:
            print 'Failed to open "%s".' % url
        
        
    
    def printReport(self):
        '''
        last_output = { k: v for k,v in self.results.iteritems()} #Dictionary comprehension
        print last_output    
        '''
        for k,v in self.results.iteritems(): #iterators.
            print  k,v
           
                    

obj = TestCaseReader("/Users/ashwanth/testcases.xml")
obj.readXMLTestCases()
listOfTestCases = obj.testcases

executor = TestCaseExecutor()
executor.execute(listOfTestCases)
print "Final output : "
executor.printReport()



