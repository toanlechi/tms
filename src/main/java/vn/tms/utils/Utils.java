package vn.tms.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.apache.commons.mail.DefaultAuthenticator;
import org.apache.commons.mail.Email;
import org.apache.commons.mail.SimpleEmail;

import vn.tms.entity.MailContent;

public class Utils {
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

	public static List<String> getDayOfWeek(int dec) {
		List<String> result = new ArrayList<>();
		String bin = Integer.toBinaryString(dec);
		System.out.println(bin);
		char[] binArr = bin.toCharArray();
		int index = 0;
		for (int i = binArr.length - 1; i >= 0; i--) {
			index = ((binArr.length - 1) - i);
			if (index == 0 && binArr[i] == '1') {
				result.add("CN");
			} else if (index == 1 && binArr[i] == '1') {
				result.add("7");
			} else if (index == 2 && binArr[i] == '1') {
				result.add("6");
			} else if (index == 3 && binArr[i] == '1') {
				result.add("5");
			} else if (index == 4 && binArr[i] == '1') {
				result.add("4");
			} else if (index == 5 && binArr[i] == '1') {
				result.add("3");
			} else if (index == 6 && binArr[i] == '1') {
				result.add("2");
			}
		}

		Collections.reverse(result);
		System.out.println(result);
		return result;
	}

	public static int convertToDec(List<String> list) {
		char[] charArr = new char[8];

		return 0;
	}

	public static void main(String[] args) {

		getDayOfWeek(13);

	}
}
