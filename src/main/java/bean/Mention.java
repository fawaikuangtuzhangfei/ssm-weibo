package bean;

import java.io.Serializable;

/**
 * t_mention 与我相关
 * @author nanshoudabaojian
 *
 */
public class Mention implements Serializable{
	
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private Integer mentionId;

    private Integer userId;

    private Integer repostcount;

    private Integer commentcount;

    private Integer replycount;

    private Integer likecount;

    private Integer fanscount;

    public Integer getMentionId() {
        return mentionId;
    }

    public void setMentionId(Integer mentionId) {
        this.mentionId = mentionId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getRepostcount() {
        return repostcount;
    }

    public void setRepostcount(Integer repostcount) {
        this.repostcount = repostcount;
    }

    public Integer getCommentcount() {
        return commentcount;
    }

    public void setCommentcount(Integer commentcount) {
        this.commentcount = commentcount;
    }

    public Integer getReplycount() {
        return replycount;
    }

    public void setReplycount(Integer replycount) {
        this.replycount = replycount;
    }

    public Integer getLikecount() {
        return likecount;
    }

    public void setLikecount(Integer likecount) {
        this.likecount = likecount;
    }

    public Integer getFanscount() {
        return fanscount;
    }

    public void setFanscount(Integer fanscount) {
        this.fanscount = fanscount;
    }

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((commentcount == null) ? 0 : commentcount.hashCode());
		result = prime * result + ((fanscount == null) ? 0 : fanscount.hashCode());
		result = prime * result + ((likecount == null) ? 0 : likecount.hashCode());
		result = prime * result + ((mentionId == null) ? 0 : mentionId.hashCode());
		result = prime * result + ((replycount == null) ? 0 : replycount.hashCode());
		result = prime * result + ((repostcount == null) ? 0 : repostcount.hashCode());
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
		Mention other = (Mention) obj;
		if (commentcount == null) {
			if (other.commentcount != null)
				return false;
		} else if (!commentcount.equals(other.commentcount))
			return false;
		if (fanscount == null) {
			if (other.fanscount != null)
				return false;
		} else if (!fanscount.equals(other.fanscount))
			return false;
		if (likecount == null) {
			if (other.likecount != null)
				return false;
		} else if (!likecount.equals(other.likecount))
			return false;
		if (mentionId == null) {
			if (other.mentionId != null)
				return false;
		} else if (!mentionId.equals(other.mentionId))
			return false;
		if (replycount == null) {
			if (other.replycount != null)
				return false;
		} else if (!replycount.equals(other.replycount))
			return false;
		if (repostcount == null) {
			if (other.repostcount != null)
				return false;
		} else if (!repostcount.equals(other.repostcount))
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
		return "Mention [mentionId=" + mentionId + ", userId=" + userId + ", repostcount=" + repostcount
				+ ", commentcount=" + commentcount + ", replycount=" + replycount + ", likecount=" + likecount
				+ ", fanscount=" + fanscount + "]";
	}
    
    
}