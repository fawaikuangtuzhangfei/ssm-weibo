package exception;
/**
 * 用户名已经存在的异常
 * @author 77515
 *
 */
public class UsernameAlreadyExistException extends RuntimeException{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public UsernameAlreadyExistException() {
		
	}
	
	public UsernameAlreadyExistException(String msg) {
		super(msg);
	}

}
