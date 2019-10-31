<html>
  <head>
    <title>JSP JavaMail Example </title>
  </head>

<body>

<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<table>

<%
    try{
    String host = "yourmailhost";
    String to = request.getParameter("to");
    String from = request.getParameter("from");
    String subject = request.getParameter("subject");
    String messageText = request.getParameter("body");
    boolean sessionDebug = false;

    Properties props = System.getProperties();
    props.put("mail.host", host);
    props.put("mail.transport.protocol", "smtp");

    Session mailSession = Session.getDefaultInstance(props, null);

    mailSession.setDebug(sessionDebug);

    Message msg = new MimeMessage(mailSession);

    msg.setFrom(new InternetAddress(from));
    InternetAddress[] address = {new InternetAddress(to)};
    msg.setRecipients(Message.RecipientType.TO, address);
    msg.setSubject(subject);
    msg.setSentDate(new Date());
    msg.setText(messageText);

    Transport.send(msg);
    
    out.println("Mail was sent to " + to);
    out.println(" from " + from);
    out.println(" using host " + host + ".");
    }catch(Exception e){
        out.println(e.toString());
    }

%>
    </table>
  </body>
</html>
