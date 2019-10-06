package bean;

import java.io.Serializable;

/**
 * t_likes 点赞
 * @author nanshoudabaojian
 *
 */
public class Likes implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer likesId;

	private Integer userId;

	private Integer weiboId;

	private String likeTime;
	
	//t_user
	private String username;
	private String face;
	private Integer nowUserId;
	private String province;

	//t_weibo
	private String content;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public Integer getLikesId() {
		return likesId;
	}

	public void setLikesId(Integer likesId) {
		this.likesId = likesId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getWeiboId() {
		return weiboId;
	}

	public void setWeiboId(Integer weiboId) {
		this.weiboId = weiboId;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((getLikeTime() == null) ? 0 : getLikeTime().hashCode());
		result = prime * result + ((likesId == null) ? 0 : likesId.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result + ((weiboId == null) ? 0 : weiboId.hashCode());
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
		Likes other = (Likes) obj;
		if (getLikeTime() == null) {
			if (other.getLikeTime() != null)
				return false;
		} else if (!getLikeTime().equals(other.getLikeTime()))
			return false;
		if (likesId == null) {
			if (other.likesId != null)
				return false;
		} else if (!likesId.equals(other.likesId))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (weiboId == null) {
			if (other.weiboId != null)
				return false;
		} else if (!weiboId.equals(other.weiboId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Likes [likesId=" + likesId + ", userId=" + userId + ", weiboId=" + weiboId + ", likeTime=" + likeTime
				+ ", username=" + username + ", face=" + face + ", nowUserId=" + nowUserId + ", province=" + province
				+ ", content=" + content + "]";
	}

	public String getLikeTime() {
		return likeTime;
	}

	public void setLikeTime(String likeTime) {
		this.likeTime = likeTime;
	}

	public String getUserName() {
		return username;
	}

	public void setUserName(String username) {
		this.username = username;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Integer getNowUserId() {
		return nowUserId;
	}

	public void setNowUserId(Integer nowUserId) {
		this.nowUserId = nowUserId;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}
	
}