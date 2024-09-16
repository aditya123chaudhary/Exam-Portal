package com.questions;

public class Questions {
	private int id;
	private String question;
	private String [] options = new String[4];
	private int correctans;
	private int marks;
	
	public Questions(int id, String question, String[] options, int correctans, int marks) {
        this.id = id;
        this.question = question;
        this.options = options;
        this.correctans = correctans;
        this.marks = marks;
    }
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String[] getOptions() {
		return options;
	}
	public void setOptions(String[] options) {
		this.options = options;
	}
	public int getCorrectans() {
		return correctans;
	}
	public void setCorrectans(int correctans) {
		this.correctans = correctans;
	}
	public int getMarks() {
		return marks;
	}

	public void setMarks(int marks) {
		this.marks = marks;
	}
	
}
