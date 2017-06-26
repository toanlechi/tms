package vn.tms.utils;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

import vn.tms.entity.MailContent;

public class TMSMail {
	public static void sendMail(MailContent mailContent) {
		try {
			Email email = new SimpleEmail();
			email.setHostName("smtp.googlemail.com");
			email.setSmtpPort(465);
			email.setAuthenticator(new DefaultAuthenticator(Constant.EMAIL.MY_EMAIL, Constant.EMAIL.MY_PASSWORD));

			email.setSSLOnConnect(true);
			email.setFrom(mailContent.getFrom());
			email.setSubject(mailContent.getSubject());
			email.setMsg(mailContent.getBody());
			email.addTo(mailContent.getTo());
			email.send();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
