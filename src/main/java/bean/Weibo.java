package bean;

import java.io.Serializable;
import java.util.Date;

/**
 * 发布微博的实体类 t_weibo
 * @author nanshoudabaojian
 *
 */
public class Weibo implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer userId;
	private Date postTime;
	private String content;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	private String pic5;
	private String pic6;
	private String pic7;
	private String pic8;
	private String pic9;
	
	//1为原创 0为非原创
	private Integer original;
	//转发自哪条微博 ->直接存本表t_weibo的id
	private Integer repostId;
	//记录转发的微博
	private Weibo repost;
	
	//t_user
	private String username;
	private String face;
	
	
	
	public String getFace() {
		return face;
	}
	public void setFace(String face) {
		this.face = face;
	}
	public Weibo getRepost() {
		return repost;
	}
	public void setRepost(Weibo repost) {
		this.repost = repost;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Date getPostTime() {
		return postTime;
	}
	public void setPostTime(Date postTime) {
		this.postTime = postTime;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPic1() {
		return pic1;
	}
	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}
	public String getPic2() {
		return pic2;
	}
	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}
	public String getPic3() {
		return pic3;
	}
	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}
	public String getPic4() {
		return pic4;
	}
	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
	public String getPic5() {
		return pic5;
	}
	public void setPic5(String pic5) {
		this.pic5 = pic5;
	}
	public String getPic6() {
		return pic6;
	}
	public void setPic6(String pic6) {
		this.pic6 = pic6;
	}
	public String getPic7() {
		return pic7;
	}
	public void setPic7(String pic7) {
		this.pic7 = pic7;
	}
	public String getPic8() {
		return pic8;
	}
	public void setPic8(String pic8) {
		this.pic8 = pic8;
	}
	public String getPic9() {
		return pic9;
	}
	public void setPic9(String pic9) {
		this.pic9 = pic9;
	}
	public Integer getOriginal() {
		return original;
	}
	public void setOriginal(Integer original) {
		this.original = original;
	}
	public Integer getRepostId() {
		return repostId;
	}
	public void setRepostId(Integer repostId) {
		this.repostId = repostId;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((original == null) ? 0 : original.hashCode());
		result = prime * result + ((pic1 == null) ? 0 : pic1.hashCode());
		result = prime * result + ((pic2 == null) ? 0 : pic2.hashCode());
		result = prime * result + ((pic3 == null) ? 0 : pic3.hashCode());
		result = prime * result + ((pic4 == null) ? 0 : pic4.hashCode());
		result = prime * result + ((pic5 == null) ? 0 : pic5.hashCode());
		result = prime * result + ((pic6 == null) ? 0 : pic6.hashCode());
		result = prime * result + ((pic7 == null) ? 0 : pic7.hashCode());
		result = prime * result + ((pic8 == null) ? 0 : pic8.hashCode());
		result = prime * result + ((pic9 == null) ? 0 : pic9.hashCode());
		result = prime * result + ((postTime == null) ? 0 : postTime.hashCode());
		result = prime * result + ((repostId == null) ? 0 : repostId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Weibo other = (Weibo) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (original == null) {
			if (other.original != null)
				return false;
		} else if (!original.equals(other.original))
			return false;
		if (pic1 == null) {
			if (other.pic1 != null)
				return false;
		} else if (!pic1.equals(other.pic1))
			return false;
		if (pic2 == null) {
			if (other.pic2 != null)
				return false;
		} else if (!pic2.equals(other.pic2))
			return false;
		if (pic3 == null) {
			if (other.pic3 != null)
				return false;
		} else if (!pic3.equals(other.pic3))
			return false;
		if (pic4 == null) {
			if (other.pic4 != null)
				return false;
		} else if (!pic4.equals(other.pic4))
			return false;
		if (pic5 == null) {
			if (other.pic5 != null)
				return false;
		} else if (!pic5.equals(other.pic5))
			return false;
		if (pic6 == null) {
			if (other.pic6 != null)
				return false;
		} else if (!pic6.equals(other.pic6))
			return false;
		if (pic7 == null) {
			if (other.pic7 != null)
				return false;
		} else if (!pic7.equals(other.pic7))
			return false;
		if (pic8 == null) {
			if (other.pic8 != null)
				return false;
		} else if (!pic8.equals(other.pic8))
			return false;
		if (pic9 == null) {
			if (other.pic9 != null)
				return false;
		} else if (!pic9.equals(other.pic9))
			return false;
		if (postTime == null) {
			if (other.postTime != null)
				return false;
		} else if (!postTime.equals(other.postTime))
			return false;
		if (repostId == null) {
			if (other.repostId != null)
				return false;
		} else if (!repostId.equals(other.repostId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Weibo [id=" + id + ", userId=" + userId + ", postTime=" + postTime + ", content=" + content + ", pic1="
				+ pic1 + ", pic2=" + pic2 + ", pic3=" + pic3 + ", pic4=" + pic4 + ", pic5=" + pic5 + ", pic6=" + pic6
				+ ", pic7=" + pic7 + ", pic8=" + pic8 + ", pic9=" + pic9 + ", original=" + original + ", repostId="
				+ repostId + ", username=" + username + "]";
	}
	
	
	
	
}
