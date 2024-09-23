package model;

public class member {
	private String role;
	private int id;
	private String memberId;
	private String memberPw;
	private String name;
	private String birth;
	private String phoneNumber;
	private String email;
	private String address;
	private String nickName;
	private Boolean memberOut;
	private String createDate;
	private Boolean reportYn;
	private Boolean blockYn;

	public member(String role, String memberId, String memberPw, String name, String birth, String phoneNumber,
			String email, String address, String nickName) {
		this.role = role;
		this.memberId = memberId;
		this.memberPw = memberPw;
		this.name = name;
		this.birth = birth;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.address = address;
		this.nickName = nickName;
	}
	
	public String toString() {
		return role +","+memberId+","+memberPw+","+name+","+birth+","+phoneNumber+","+email+","+address+","+nickName;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public Boolean getMemberOut() {
		return memberOut;
	}
	public void setMemberOut(Boolean memberOut) {
		this.memberOut = memberOut;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public Boolean getReportYn() {
		return reportYn;
	}
	public void setReportYn(Boolean reportYn) {
		this.reportYn = reportYn;
	}
	public Boolean getBlockYn() {
		return blockYn;
	}
	public void setBlockYn(Boolean blockYn) {
		this.blockYn = blockYn;
	}
	
	
}
