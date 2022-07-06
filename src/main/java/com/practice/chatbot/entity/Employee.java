package com.practice.chatbot.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="employee")
public class Employee {
	
	
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		private long id;
		
		private String que;
		
		public long getId() {
			return id;
		}

		public void setId(long id) {
			this.id = id;
		}

		public String getQue() {
			return que;
		}

		public void setQue(String que) {
			this.que = que;
		}

		public String getAns() {
			return ans;
		}

		public Employee(long id, String que, String ans) {
			super();
			this.id = id;
			this.que = que;
			this.ans = ans;
		}

		public Employee() {
			// TODO Auto-generated constructor stub
		}

		@Override
		public String toString() {
			return "Book [id=" + id + ", que=" + que + ", ans=" + ans + "]";
		}

		public void setAns(String ans) {
			this.ans = ans;
		}

		private String ans;
		
		
		
		
		
	}


