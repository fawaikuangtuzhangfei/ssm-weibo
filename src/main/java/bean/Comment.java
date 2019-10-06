package bean;

import java.io.Serializable;
import java.util.List;

import com.fasterxml.jackson.databind.annotation.JsonDeserialize;

import utils.CustomJsonDateDeserializer;

/**
 * t_comment 实体类
 * @author nanshoudabaojian
 *
 */
public class Comment implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer commentId;

    private Integer userId;

    private Integer weiboId;

    @JsonDeserialize(using = CustomJsonDateDeserializer.class)
    private String commentTime;

    private String commentContent; //评论内容
    
    //t_user
    private String username; //用户名
    private String face; //头像
    private Integer nowUserId; //当前用户id
    private String province; //当前用户id

	//t_weibo
	private String content;// 微博内容
	
	//t_reply
	private List<Reply> reply; //回复
	private Integer countReply; //回复总数
    
	
    public String getCommentTime() {
		return commentTime;
	}

	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}

	public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
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

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent == null ? null : commentContent.trim();
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentContent == null) ? 0 : commentContent.hashCode());
		result = prime * result + ((commentId == null) ? 0 : commentId.hashCode());
		result = prime * result + ((commentTime == null) ? 0 : commentTime.hashCode());
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
		Comment other = (Comment) obj;
		if (commentContent == null) {
			if (other.commentContent != null)
				return false;
		} else if (!commentContent.equals(other.commentContent))
			return false;
		if (commentId == null) {
			if (other.commentId != null)
				return false;
		} else if (!commentId.equals(other.commentId))
			return false;
		if (commentTime == null) {
			if (other.commentTime != null)
				return false;
		} else if (!commentTime.equals(other.commentTime))
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
		return "Comment [commentId=" + commentId + ", userId=" + userId + ", weiboId=" + weiboId + ", commentTime="
				+ commentTime + ", commentContent=" + commentContent + ", username=" + username + ", face=" + face
				+ ", nowUserId=" + nowUserId + ", province=" + province + ", content=" + content + ", reply=" + reply
				+ ", countReply=" + countReply + "]";
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getFace() {
		return face;
	}

	public void setFace(String face) {
		this.face = face;
	}

	public Integer getNowUserId() {
		return nowUserId;
	}

	public void setNowUserId(Integer nowUserId) {
		this.nowUserId = nowUserId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public List<Reply> getReply() {
		return reply;
	}

	public void setReply(List<Reply> reply) {
		this.reply = reply;
	}

	public Integer getCountReply() {
		return countReply;
	}

	public void setCountReply(Integer countReply) {
		this.countReply = countReply;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}
    
    
}