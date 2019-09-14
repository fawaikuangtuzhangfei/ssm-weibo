package bean;

import java.io.Serializable;
import java.util.Date;

/**
 * t_collect 收藏 
 * @author nanshoudabaojian
 *
 */
public class Collect implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer collectId;

    private Integer weiboId;

    private Integer userId;

    private Date collectTime;

    public Integer getCollectId() {
        return collectId;
    }

    public void setCollectId(Integer collectId) {
        this.collectId = collectId;
    }

    public Integer getWeiboId() {
        return weiboId;
    }

    public void setWeiboId(Integer weiboId) {
        this.weiboId = weiboId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getCollectTime() {
        return collectTime;
    }

    public void setCollectTime(Date collectTime) {
        this.collectTime = collectTime;
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((collectId == null) ? 0 : collectId.hashCode());
		result = prime * result + ((collectTime == null) ? 0 : collectTime.hashCode());
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
		Collect other = (Collect) obj;
		if (collectId == null) {
			if (other.collectId != null)
				return false;
		} else if (!collectId.equals(other.collectId))
			return false;
		if (collectTime == null) {
			if (other.collectTime != null)
				return false;
		} else if (!collectTime.equals(other.collectTime))
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
		return "Collect [collectId=" + collectId + ", weiboId=" + weiboId + ", userId=" + userId + ", collectTime="
				+ collectTime + "]";
	}
    
}