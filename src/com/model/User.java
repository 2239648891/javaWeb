package com.model;

public class User {
	
		private String username;
		private String password;
		private String phone;
		private String sex;
		private String idcard;
		
		public User() {
			super();
		}
		public User(String username, String password, String phone, String sex, String idcard) {
			super();
			this.username = username;
			this.password = password;
			this.phone = phone;
			this.sex = sex;
			this.idcard = idcard;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getIdcard() {
			return idcard;
		}
		public void setIdcard(String idcard) {
			this.idcard = idcard;
		}
		@Override
		public String toString() {
			return "User [username=" + username + ", password=" + password + ", phone=" + phone + ", sex=" + sex
					+ ", idcard=" + idcard + ", getUsername()=" + getUsername() + ", getPassword()=" + getPassword()
					+ ", getPhone()=" + getPhone() + ", getSex()=" + getSex() + ", getIdcard()=" + getIdcard()
					+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
					+ "]";
		}
		
}
