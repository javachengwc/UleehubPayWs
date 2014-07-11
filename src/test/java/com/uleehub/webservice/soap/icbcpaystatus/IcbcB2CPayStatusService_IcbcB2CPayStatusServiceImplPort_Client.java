
package com.uleehub.webservice.soap.icbcpaystatus;

/**
 * Please modify this class to meet your needs
 * This class is not complete
 */

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import javax.xml.namespace.QName;
import java.util.concurrent.Future;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.AsyncHandler;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.Response;
import javax.xml.ws.ResponseWrapper;

/**
 * This class was generated by Apache CXF 2.7.1
 * 2014-07-05T17:31:09.291+08:00
 * Generated source version: 2.7.1
 * 
 */
public final class IcbcB2CPayStatusService_IcbcB2CPayStatusServiceImplPort_Client {

    private static final QName SERVICE_NAME = new QName("http://uleehub.pay.com", "IcbcB2cPayStatusService");

    private IcbcB2CPayStatusService_IcbcB2CPayStatusServiceImplPort_Client() {
    }

    public static void main(String args[]) throws java.lang.Exception {
        URL wsdlURL = IcbcB2CPayStatusService_Service.WSDL_LOCATION;
        if (args.length > 0 && args[0] != null && !"".equals(args[0])) { 
            File wsdlFile = new File(args[0]);
            try {
                if (wsdlFile.exists()) {
                    wsdlURL = wsdlFile.toURI().toURL();
                } else {
                    wsdlURL = new URL(args[0]);
                }
            } catch (MalformedURLException e) {
                e.printStackTrace();
            }
        }
      
        IcbcB2CPayStatusService_Service ss = new IcbcB2CPayStatusService_Service(wsdlURL, SERVICE_NAME);
        IcbcB2CPayStatusService port = ss.getIcbcB2CPayStatusServiceImplPort();  
        
        {
        System.out.println("Invoking queryAsync...");
        java.lang.String _queryAsync_outTradeNo = "";
        Response<com.uleehub.webservice.soap.icbcpaystatus.QueryResponse> _queryAsync__return = port.queryAsync(_queryAsync_outTradeNo);
        System.out.println("queryAsync.result=" + _queryAsync__return);


        }
        {
        System.out.println("Invoking queryAsync...");
        java.lang.String _queryAsync_outTradeNo = "";
        AsyncHandler<com.uleehub.webservice.soap.icbcpaystatus.QueryResponse> _queryAsync_asyncHandler = null;
        Future<?> _queryAsync__return = port.queryAsync(_queryAsync_outTradeNo, _queryAsync_asyncHandler);
        System.out.println("queryAsync.result=" + _queryAsync__return);


        }
        {
        System.out.println("Invoking query...");
        java.lang.String _query_outTradeNo = "";
        com.uleehub.webservice.soap.icbcpaystatus.GetQueryStatusResult _query__return = port.query(_query_outTradeNo);
        System.out.println("query.result=" + _query__return);


        }

        System.exit(0);
    }

}