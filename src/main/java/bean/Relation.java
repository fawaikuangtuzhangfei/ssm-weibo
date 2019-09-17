package bean;

import java.io.Serializable;
import java.util.Date;

/**
 * t_relation 关注列表 
 * 未关注-关注-互相关注
 * 关注为1 互相关注为2
 * @author nanshoudabaojian
 *
 */
public class Relation implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer relationId;

    private Integer userId;

    private Integer followId;

    private Integer state;
    
    private Date followTime;

	public Integer getRelationId() {
		return relationId;
	}

	public void setRelationId(Integer relationId) {
		this.relationId = relationId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getFollowId() {
		return followId;
	}

	public void setFollowId(Integer followId) {
		this.followId = followId;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public Date getFollowTime() {
		return followTime;
	}

	public void setFollowTime(Date followTime) {
		this.followTime = followTime;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((followTime == null) ? 0 : followTime.hashCode());
		result = prime * result + ((followId == null) ? 0 : followId.hashCode());
		result = prime * result + ((relationId == null) ? 0 : relationId.hashCode());
		result = prime * result + ((state == null) ? 0 : state.hashCode());
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
		Relation other = (Relation) obj;
		if (followTime == null) {
			if (other.followTime != null)
				return false;
		} else if (!followTime.equals(other.followTime))
			return false;
		if (followId == null) {
			if (other.followId != null)
				return false;
		} else if (!followId.equals(other.followId))
			return false;
		if (relationId == null) {
			if (other.relationId != null)
				return false;
		} else if (!relationId.equals(other.relationId))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
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
		return "Relation [relationId=" + relationId + ", userId=" + userId + ", followId=" + followId + ", state="
				+ state + ", followTime=" + followTime + "]";
	}

    
}