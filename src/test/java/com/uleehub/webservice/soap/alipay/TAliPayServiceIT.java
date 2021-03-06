
package com.uleehub.webservice.soap.alipay;

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
 * 2014-07-05T13:21:24.009+08:00
 * Generated source version: 2.7.1
 * 
 */
public final class TAliPayServiceIT {

    private static final QName SERVICE_NAME = new QName("http://uleehub.pay.com", "AliPayService");

    private TAliPayServiceIT() {
    }

    public static void main(String args[]) throws java.lang.Exception {
        URL wsdlURL = AliPayService_Service.WSDL_LOCATION;
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
      
        AliPayService_Service ss = new AliPayService_Service(wsdlURL, SERVICE_NAME);
        AliPayService port = ss.getAliPayServiceImplPort();  
        
        {
        System.out.println("Invoking payAsync...");
        java.lang.String _payAsync_outTradeNo = "1234566";
        java.lang.String _payAsync_subject = "iPad Air";
        java.lang.String _payAsync_subjectNum = "1";
        java.lang.String _payAsync_totalFee = "400";
        java.lang.String _payAsync_body = "iPad Air";
        java.lang.String _payAsync_showUrl = "http://apple.com/iPad/detail/1";
        java.lang.String _payAsync_exterInvokeIp = "192.168.2.3";
        java.lang.String _payAsync_purchaserId = "mtwu";
        java.lang.String _payAsync_purchaserName = "wujian";
        Response<PayResponse> _payAsync__return = port.payAsync(_payAsync_outTradeNo, _payAsync_subject, _payAsync_subjectNum, _payAsync_totalFee, _payAsync_body, _payAsync_showUrl, _payAsync_exterInvokeIp, _payAsync_purchaserId, _payAsync_purchaserName);
        System.out.println("payAsync.result=" + _payAsync__return.get().getReturn().getSHtmlText());


        }
        /**
        {
        System.out.println("Invoking payAsync...");
        java.lang.String _payAsync_outTradeNo = "";
        java.lang.String _payAsync_subject = "";
        java.lang.String _payAsync_subjectNum = "";
        java.lang.String _payAsync_totalFee = "";
        java.lang.String _payAsync_body = "";
        java.lang.String _payAsync_showUrl = "";
        java.lang.String _payAsync_exterInvokeIp = "";
        java.lang.String _payAsync_purchaserId = "";
        java.lang.String _payAsync_purchaserName = "";
        AsyncHandler<com.uleehub.webservice.soap.alipay.PayResponse> _payAsync_asyncHandler = null;
        Future<?> _payAsync__return = port.payAsync(_payAsync_outTradeNo, _payAsync_subject, _payAsync_subjectNum, _payAsync_totalFee, _payAsync_body, _payAsync_showUrl, _payAsync_exterInvokeIp, _payAsync_purchaserId, _payAsync_purchaserName, _payAsync_asyncHandler);
        System.out.println("payAsync.result=" + _payAsync__return);


        }
        {
        System.out.println("Invoking pay...");
        java.lang.String _pay_outTradeNo = "";
        java.lang.String _pay_subject = "";
        java.lang.String _pay_subjectNum = "";
        java.lang.String _pay_totalFee = "";
        java.lang.String _pay_body = "";
        java.lang.String _pay_showUrl = "";
        java.lang.String _pay_exterInvokeIp = "";
        java.lang.String _pay_purchaserId = "";
        java.lang.String _pay_purchaserName = "";
        com.uleehub.webservice.soap.alipay.GetSHtmlTextResult _pay__return = port.pay(_pay_outTradeNo, _pay_subject, _pay_subjectNum, _pay_totalFee, _pay_body, _pay_showUrl, _pay_exterInvokeIp, _pay_purchaserId, _pay_purchaserName);
        System.out.println("pay.result=" + _pay__return);


        }
        {
        System.out.println("Invoking payByDTOAsync...");
        com.uleehub.webservice.soap.alipay.TradeInfo _payByDTOAsync_tradeInfo = null;
        Response<com.uleehub.webservice.soap.alipay.PayByDTOResponse> _payByDTOAsync__return = port.payByDTOAsync(_payByDTOAsync_tradeInfo);
        System.out.println("payByDTOAsync.result=" + _payByDTOAsync__return);


        }
        {
        System.out.println("Invoking payByDTOAsync...");
        com.uleehub.webservice.soap.alipay.TradeInfo _payByDTOAsync_tradeInfo = null;
        AsyncHandler<com.uleehub.webservice.soap.alipay.PayByDTOResponse> _payByDTOAsync_asyncHandler = null;
        Future<?> _payByDTOAsync__return = port.payByDTOAsync(_payByDTOAsync_tradeInfo, _payByDTOAsync_asyncHandler);
        System.out.println("payByDTOAsync.result=" + _payByDTOAsync__return);


        }
        {
        System.out.println("Invoking payByDTO...");
        com.uleehub.webservice.soap.alipay.TradeInfo _payByDTO_tradeInfo = null;
        com.uleehub.webservice.soap.alipay.GetSHtmlTextResult _payByDTO__return = port.payByDTO(_payByDTO_tradeInfo);
        System.out.println("payByDTO.result=" + _payByDTO__return);


        }
        {
        System.out.println("Invoking queryPayStatusAsync...");
        java.lang.String _queryPayStatusAsync_outTradeNo = "";
        Response<com.uleehub.webservice.soap.alipay.QueryPayStatusResponse> _queryPayStatusAsync__return = port.queryPayStatusAsync(_queryPayStatusAsync_outTradeNo);
        System.out.println("queryPayStatusAsync.result=" + _queryPayStatusAsync__return);


        }
        {
        System.out.println("Invoking queryPayStatusAsync...");
        java.lang.String _queryPayStatusAsync_outTradeNo = "";
        AsyncHandler<com.uleehub.webservice.soap.alipay.QueryPayStatusResponse> _queryPayStatusAsync_asyncHandler = null;
        Future<?> _queryPayStatusAsync__return = port.queryPayStatusAsync(_queryPayStatusAsync_outTradeNo, _queryPayStatusAsync_asyncHandler);
        System.out.println("queryPayStatusAsync.result=" + _queryPayStatusAsync__return);


        }
        {
        System.out.println("Invoking queryPayStatus...");
        java.lang.String _queryPayStatus_outTradeNo = "";
        com.uleehub.webservice.soap.alipay.GetStatusResult _queryPayStatus__return = port.queryPayStatus(_queryPayStatus_outTradeNo);
        System.out.println("queryPayStatus.result=" + _queryPayStatus__return);


        }
		**/
        System.exit(0);
    }

}
