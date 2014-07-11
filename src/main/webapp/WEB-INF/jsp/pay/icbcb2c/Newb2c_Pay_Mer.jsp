<%@ page contentType="text/html; charset=GBK" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="cn.com.infosec.icbc.ReturnValue" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.httpclient.*,org.apache.commons.httpclient.methods.*,java.io.*,java.util.zip.*" %>
<%@ page import="org.apache.*" %>
<%@ page import="com.icbc.b2c.notify.*" %>
<%@ page import="com.icbc.b2c.model.*" %>
<html>
<head>
</head>
<body>

<table>
<%
//String notifyData = request.getParameter("notifyData");
String notifyData="<?xml  version=\"1.0\" encoding=\"GBK\" standalone=\"no\" ?><B2CRes><interfaceName>ICBC_PERBANK_B2C</interfaceName><interfaceVersion>1.0.0.3</interfaceVersion><orderInfo><orderDate>20160302141706</orderDate><orderid>20130218141706</orderid><amount>20</amount><curType>001</curType><merID>0200EC23335149</merID><merAcct>0200024109031548569</merAcct></orderInfo><custom><verifyJoinFlag>0</verifyJoinFlag><JoinFlag></JoinFlag><UserNum></UserNum></custom><bank><TranSerialNo>HFG000000000000608</TranSerialNo><notifyDate>20160302142140</notifyDate><tranStat>1</tranStat><comment>���׳ɹ���</comment></bank></B2CRes>";
//String signMsg = request.getParameter("signMsg");
String signMsg="f3SUyX2EN9anega6d0eB21z3HYvKCsBhArgTA6Lmc2NxPDEgKUU0NHb21sePjviDLrGZWRFg/4SoHcx2BwHXYlv59vHVnJUQQNZ+xFmNWwCjVMCsMvOtpr06aovsjJSrBXXSHuEN0nyDLDGnftkM8M10IL8BSuIhUGmwJrs4HIk=";
System.out.println("signMsg["+signMsg+"]");
System.out.println();
notifyData=new String(ReturnValue.base64enc(notifyData.getBytes()));
System.out.println("notifyData======"+notifyData);
out.println("���ģ�<textarea style='height:140; width:600;'>");
out.println(notifyData);
out.println("</textarea><br>���ģ�<textarea style='height:140; width:600;'>");
out.println(signMsg);
out.println("</textarea>");
String certPath="d:\\b2c.xml";	
IcbcB2CNotifyImpl notifyImpl=new IcbcB2CNotifyImpl();
NotifyData notifyData1=new NotifyData();
notifyData1=notifyImpl.createNotifyData(notifyData, signMsg, certPath);//"D:/b2c.xml"Ϊ�����ļ��Ĵ��·�����̻����и��ġ�

if(notifyData1==null)
{
	System.out.println("����ֵΪnull����������֪ͨ��Ϣ����");
	
}
else
{
	//��ӡ����������notifyData������Ϣ
	if("1.0.0.11".equals(notifyData1.getInterfaceVersion())||"1.0.0.13".equals(notifyData1.getInterfaceVersion())||"1.0.0.14".equals(notifyData1.getInterfaceVersion())){
	System.out.println("Comment:"+notifyData1.getComment());//��������
	System.out.println("CurType:"+notifyData1.getCurType());//֧������
	System.out.println("InterfaceName:"+notifyData1.getInterfaceName());//�ӿ�����
	System.out.println("InterfaceVersion:"+notifyData1.getInterfaceVersion());//�ӿڰ汾��
	System.out.println("JoinFlag:"+notifyData1.getJoinFlag());//�ͻ�������־
	System.out.println("MerID:"+notifyData1.getMerID());//�̻�����
	System.out.println("NotifyData:"+notifyData1.getNotifyData());//notifyData1������XML��
	System.out.println("NotifyDate:"+notifyData1.getNotifyDate());//����֪ͨ����ʱ��
	System.out.println("OrderDate:"+notifyData1.getOrderDate());//��������ʱ��
	System.out.println("TranBatchNo:"+notifyData1.getTranBatchNo());//���κ�
	System.out.println("TranStat:"+notifyData1.getTranStat());//��������״̬
	System.out.println("UserNum:"+notifyData1.getUserNum());//������Ա��
	System.out.println("VerifyJoinFlag:"+notifyData1.getVerifyJoinFlag());//����������־
	List orderInfoList=notifyData1.getSubOrderInfoList();
	for(int i=0;i<orderInfoList.size();i++)
	{
		int num=i+1;
		System.out.println("��"+num+"�ʶ�����Ϣ��");
		NotifyOrderInfo notifyOrderInfo=(NotifyOrderInfo)orderInfoList.get(i);
		System.out.println("orderid:"+notifyOrderInfo.getOrderid());//������
		System.out.println("amount:"+notifyOrderInfo.getAmount());//�������
		System.out.println("installmentTimes:"+notifyOrderInfo.getInstallmentTimes());//���ڸ�������
		System.out.println("merAcct:"+notifyOrderInfo.getMerAcct());//�̻��˺�
		System.out.println("tranSerialNo:"+notifyOrderInfo.getTranSerialNo());//����ָ�����
	}
	
}
	if("1.0.0.3".equals(notifyData1.getInterfaceVersion())||"1.0.0.8".equals(notifyData1.getInterfaceVersion())){ 
		List orderInfoList=notifyData1.getSubOrderInfoList();
		NotifyOrderInfo notifyOrderInfo=(NotifyOrderInfo)orderInfoList.get(0);
		
		System.out.println("Comment:"+notifyData1.getComment());//��������
		System.out.println("InterfaceName:"+notifyData1.getInterfaceName());//�ӿ�����
		System.out.println("InterfaceVersion:"+notifyData1.getInterfaceVersion());//�ӿڰ汾��
		System.out.println("orderid:"+notifyOrderInfo.getOrderid());//������
		System.out.println("amount:"+notifyOrderInfo.getAmount());//�������
		System.out.println("curType:"+notifyData1.getCurType());//֧������
		System.out.println("MerID:"+notifyData1.getMerID());//�̻�����
		System.out.println("merAcct:"+notifyOrderInfo.getMerAcct());//�̻��˺�
		System.out.println("TranSerialNo:"+notifyOrderInfo.getTranSerialNo());//�̻��˺�
		System.out.println("VerifyJoinFlag:"+notifyData1.getVerifyJoinFlag());//�̻�����
		
	}
}
String	sessionId = (String)request.getAttribute ("dse_sessionId");	
%>

</table>
</body>
</html>