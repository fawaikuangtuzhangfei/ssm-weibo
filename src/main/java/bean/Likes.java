package bean;

import java.io.Serializable;
import java.util.Date;

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

	private Date likeTime;

	public Date getLikeTime() {
		return likeTime;
	}

	public void setLikeTime(Date likeTime) {
		this.likeTime = likeTime;
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
		result = prime * result + ((likeTime == null) ? 0 : likeTime.hashCode());
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
		if (likeTime == null) {
			if (other.likeTime != null)
				return false;
		} else if (!likeTime.equals(other.likeTime))
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
				+ "]";
	}
	
}