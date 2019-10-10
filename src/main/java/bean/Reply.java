package bean;

import java.io.Serializable;

/**
 * t_reply 回复
 * @author nanshoudabaojian
 *
 */
public class Reply implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer replyId;

    private Integer commentId;

    private Integer fromId;

    private Integer toId;

    private String replyContent;
    
    private String time;
    
    //t_user
    private String fromUsername;
    private String toUsername;
    private String fromFace;
    private String fromProvince;
    private String toProvince;
    
    //t_weibo
    private Weibo weibo;
    
	//粉丝数量、关注数量、微博数量
	private Integer fans;
	private Integer follows;
	private Integer weibos;
	
    
	public Integer getFans() {
		return fans;
	}

	public void setFans(Integer fans) {
		this.fans = fans;
	}

	public Integer getFollows() {
		return follows;
	}

	public void setFollows(Integer follows) {
		this.follows = follows;
	}

	public Integer getWeibos() {
		return weibos;
	}

	public void setWeibos(Integer weibos) {
		this.weibos = weibos;
	}

	public String getFromFace() {
		return fromFace;
	}

	public void setFromFace(String fromFace) {
		this.fromFace = fromFace;
	}

	public Weibo getWeibo() {
		return weibo;
	}

	public void setWeibo(Weibo weibo) {
		this.weibo = weibo;
	}

	public Integer getReplyId() {
		return replyId;
	}

	public void setReplyId(Integer replyId) {
		this.replyId = replyId;
	}

	public Integer getCommentId() {
		return commentId;
	}

	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
	}

	public Integer getFromId() {
		return fromId;
	}

	public void setFromId(Integer fromId) {
		this.fromId = fromId;
	}

	public Integer getToId() {
		return toId;
	}

	public void setToId(Integer toId) {
		this.toId = toId;
	}


	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
		result = prime * result + ((replyContent == null) ? 0 : replyContent.hashCode());
		result = prime * result + ((fromId == null) ? 0 : fromId.hashCode());
		result = prime * result + ((replyId == null) ? 0 : replyId.hashCode());
		result = prime * result + ((time == null) ? 0 : time.hashCode());
		result = prime * result + ((toId == null) ? 0 : toId.hashCode());
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
		Reply other = (Reply) obj;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		if (replyContent == null) {
			if (other.replyContent != null)
				return false;
		} else if (!replyContent.equals(other.replyContent))
			return false;
		if (fromId == null) {
			if (other.fromId != null)
				return false;
		} else if (!fromId.equals(other.fromId))
			return false;
		if (replyId == null) {
			if (other.replyId != null)
				return false;
		} else if (!replyId.equals(other.replyId))
			return false;
		if (time == null) {
			if (other.time != null)
				return false;
		} else if (!time.equals(other.time))
			return false;
		if (toId == null) {
			if (other.toId != null)
				return false;
		} else if (!toId.equals(other.toId))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Reply [replyId=" + replyId + ", commentId=" + commentId + ", fromId=" + fromId + ", toId=" + toId
				+ ", replyContent=" + replyContent + ", time=" + time + ", fromUsername=" + fromUsername
				+ ", toUsername=" + toUsername + ", fromFace=" + fromFace + ", fromProvince=" + fromProvince
				+ ", toProvince=" + toProvince + ", weibo=" + weibo + ", fans=" + fans + ", follows=" + follows
				+ ", weibos=" + weibos + "]";
	}

	public String getReplyContent() {
		return replyContent;
	}

	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}

	public String getFromUsername() {
		return fromUsername;
	}

	public void setFromUsername(String fromUsername) {
		this.fromUsername = fromUsername;
	}

	public String getToUsername() {
		return toUsername;
	}

	public void setToUsername(String toUsername) {
		this.toUsername = toUsername;
	}

	public String getFromProvince() {
		return fromProvince;
	}

	public void setFromProvince(String fromProvince) {
		this.fromProvince = fromProvince;
	}

	public String getToProvince() {
		return toProvince;
	}

	public void setToProvince(String toProvince) {
		this.toProvince = toProvince;
	}
    
}