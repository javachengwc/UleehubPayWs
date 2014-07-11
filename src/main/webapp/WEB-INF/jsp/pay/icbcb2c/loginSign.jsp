<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<TITLE>������B2C����ҳ�����</TITLE>
<%@ page contentType="text/html; charset=GBK" %>

<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<%@ page import="com.icbc.b2c.model.*" %>
<%@ page import="com.icbc.b2c.pay.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="javax.servlet.http.HttpServletRequest" %>


<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="cn.com.infosec.icbc.ReturnValue" %>


<% 
String InterfaceName="ICBC_PERBANK_B2C";
String MerCert="f:/AllWorkSpace/Uleehub/UleehubPayWs/src/main/webapp/WEB-INF/jsp/pay/icbcb2c/cltest.cer";
String MerSignMsg="f:/AllWorkSpace/Uleehub/UleehubPayWs/src/main/webapp/WEB-INF/jsp/pay/icbcb2c/cltest.key";
String TranData="";
String InterfaceVersion="1.0.0.11";//�ӿ�����

System.out.println(request.getParameter("MerCustomPhone"));
DiskFileUpload upload = new DiskFileUpload();
List items = upload.parseRequest(request);

String OrderDate="20140630222620";//��������ʱ��
String GoodsType="1";//������Ʒ/ʵ����Ʒ��־λ
String MerCustomID="123456";//����û���
String MerCustomPhone="13466780886";//�����ϵ�绰
String GoodsAddress="������";//�ջ���ַ
String orderCount="1";//��������
String HangSupportFlag="true";//�Ƿ�֧���첽��־
String HangTimeInterval="24";//������Чʱ��
String IP="192.168.1.2";//�̻�IP



System.out.println("orderCount============="+orderCount);
System.out.println("interfaceVersion============="+InterfaceVersion);
IcbcB2CPay pay=new IcbcB2CPayImpl(); 
TranData t=new TranData();//tranData����
List l=new ArrayList();

t.setOrderDate(OrderDate);
t.setGoodsType(GoodsType);//1.0.0.3 1.0.0.8�ӿ���������
t.setMerCustomID(MerCustomID);//1.0.0.3 1.0.0.8�ӿ���������
t.setMerCustomPhone(MerCustomPhone);//1.0.0.3 1.0.0.8�ӿ���������
t.setGoodsAddress(GoodsAddress);//1.0.0.3 1.0.0.8�ӿ���������
t.setInterfaceVersion(InterfaceVersion);
t.setHangSupportFlag(HangSupportFlag);//1.0.0.3 1.0.0.8�ӿ���������
t.setHangTimeInterval(HangTimeInterval);//1.0.0.3 1.0.0.8�ӿ���������
t.setMerCustomIp(IP);//1.0.0.3 1.0.0.8�ӿ���������
int j=Integer.parseInt(orderCount);

for(int i=1;i<j+1;i++)//�˴�Ϊ����������Ϣ
{		
	
	Iterator iter2 = items.iterator();
	String Amount="200";//�������
	String CarriageAmt="200";//�Ѻ��˷ѽ��
	String GoodsID="001";//��Ʒ���
	String GoodsName="������";//��Ʒ����
	String GoodsNum="1";//��Ʒ����
	String InstallmentTimes="1";//���ڸ�������
	String Orderid="0001";//������
	
	OrderInfo order=new OrderInfo();//��������
	order.setAmount(Amount);
	order.setCarriageAmt(CarriageAmt);
	order.setGoodsID(GoodsID);
	order.setGoodsName(GoodsName);
	order.setGoodsNum(GoodsNum);
	order.setInstallmentTimes(InstallmentTimes);//1.0.0.3 1.0.0.8�ӿ���������
	order.setOrderid(Orderid);
	l.add(order);
		
	if(l.size()>0)//������һ��������Ϣ
	{
		t.setOrderInfoVector(l);//��������Ϣ�ӵ�tranData������
		FormData fd=pay.createFormData(t);//����CreateFormData����������formData�еı�����
		//test=fd.getTranData();
		InterfaceName=fd.getInterfaceName();
		//InterfaceVersion=fd.getInterfaceVersion();
		MerCert=fd.getMerCert();
		MerSignMsg=fd.getMerSignMsg();
		 TranData=fd.getTranData();
		//request.setAttribute("InterfaceName", fd.getInterfaceName());	//���ɵĽӿ�����
		//request.setAttribute("InterfaceVersion", fd.getInterfaceVersion());	//���ɵĽӿڰ汾��
		//request.setAttribute("MerCert", fd.getMerCert());	//���ɵĽ�������
		//request.setAttribute("MerSignMsg", fd.getMerSignMsg());	//���ɵĶ���ǩ������
		//request.setAttribute("TranData", fd.getTranData());	//���ɵ��̳�֤�鹫Կ
	}
}
%>
<html>
<head>

<BODY bgcolor=Silver>
<font face='Arial' size='4' color='Green'>�����̻�B2C֧������ҳ��</font>
<FORM  name="order" METHOD=POST ACTION="https://mybank3.dccnet.com.cn/servlet/NewB2cMerPayReqServlet">
  <table width="98%"  border="1">
   <tr>
      <td width="27%">�ӿ�����</td>
      <td width="26%"><INPUT id="interfaceName" NAME="interfaceName" TYPE="text" value="<%=InterfaceName%>" ></td>
	</tr>
<tr>      
<td width="20%">�ӿڰ汾��</td>
      <td width="27%">
		<INPUT id=interfaceVersion NAME="interfaceVersion" TYPE="text" value="<%=InterfaceVersion%>" >	
	</td>
    </tr>

    <tr>
      <td width="14%">�ӿ�����</td>
      <td width="26%">
      <textarea id="tranData" name="tranData" style='height:140; width:600;'><%=TranData%></textarea>
    </tr>
     <tr>
      <td width="14%">ǩ������</td>
      <td width="26%">
      <INPUT id="merSignMsg" NAME="merSignMsg" TYPE="text" value="<%=MerSignMsg%>">
    </tr>
    <tr>
      <td width="14%">֤������</td>
      <td width="26%">
      <INPUT id="merCert" NAME="merCert" TYPE="text" value="<%=MerCert%>">
    </tr>
 </table>
	<table>
	<tr>
		<td>
			<INPUT TYPE="submit" value=" �� �� �� �� ">
		</td>
		<td>
			<INPUT  type="button" value=" �� �� �� �� " onClick="javascript:history.go(-1)">
		</td>
	</tr>
	</table>
	<%System.out.println("HangSupportFlag======="+HangSupportFlag); %>
	<INPUT id="HangSupportFlag" NAME="HangSupportFlag" TYPE="hidden" value="<%=HangSupportFlag%>">
	<INPUT id="HangTimeInterval" NAME="HangTimeInterval" TYPE="hidden" value="<%=HangTimeInterval%>">
</FORM>
ע������������޺Ϸ��Լ�飬��������д������ģʽB2C���ԡ�
</BODY>
</html>


