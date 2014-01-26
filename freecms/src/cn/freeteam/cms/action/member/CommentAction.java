package cn.freeteam.cms.action.member;

import java.util.List;
import java.util.Map;

import cn.freeteam.base.BaseAction;
import cn.freeteam.cms.model.Comment;
import cn.freeteam.cms.service.CommentService;
import cn.freeteam.cms.service.CreditruleService;
import cn.freeteam.util.OperLogUtil;
import cn.freeteam.util.Pager;
/**
 * 
 * <p>Title: CommentAction.java</p>
 * 
 * <p>Description: 评论相关操作</p>
 * 
 * <p>Date: Feb 6, 2013</p>
 * 
 * <p>Time: 2:08:47 PM</p>
 * 
 * <p>Copyright: 2013</p>
 * 
 * <p>Company: freeteam</p>
 * 
 * @author freeteam
 * @version 1.0
 * 
 * <p>============================================</p>
 * <p>Modification History
 * <p>Mender: </p>
 * <p>Date: </p>
 * <p>Reason: </p>
 * <p>============================================</p>
 */
public class CommentAction extends BaseAction {
	private String msg;
	private String pageFuncId;
	private String order=" addtime desc ";
	private String ids;
	
	private CommentService commentService;
	private CreditruleService creditruleService;
	private Comment comment;
	private List<Comment> commentList;
	private Map<String, String> objtypes;
	
	public CommentAction() {
		init("commentService");
	}
	


	/**
	 * 列表
	 * @return
	 */
	public String list(){
		if (comment==null ){
			comment=new Comment();
		}
		objtypes=comment.getObjtypes();
		if (order.trim().length()==0) {
			order=" addtime desc ";
		}
		comment.setMemberid(getLoginMember().getId());
		commentList=commentService.find(comment, order, currPage, pageSize,false);
		totalCount=commentService.count(comment,false);
		Pager pager=new Pager(getHttpRequest());
		pager.appendParam("comment.isanonymous");
		pager.appendParam("comment.objtype");
		pager.appendParam("comment.objid");
		pager.appendParam("comment.content");
		pager.appendParam("comment.state");
		pager.appendParam("order");
		pager.appendParam("pageSize");
		pager.appendParam("pageFuncId");
		pager.setCurrPage(currPage);
		pager.setPageSize(pageSize);
		pager.setTotalCount(totalCount);
		pager.setOutStrNoTable("comment_list.do");
		pageStr=pager.getOutStrNoTable();
		return "list";
	}
	/**
	 * 删除
	 * @return
	 */
	public String del(){
		if (ids!=null && ids.trim().length()>0) {
			StringBuilder sb=new StringBuilder();
			String[] idArr=ids.split(";");
			if (idArr!=null && idArr.length>0) {
				init("creditruleService");
				for (int i = 0; i < idArr.length; i++) {
					if (idArr[i].trim().length()>0) {
						try {
							commentService.del(idArr[i]);
							sb.append(idArr[i]+";");
							//处理积分
							creditruleService.credit(getLoginMember(), "comment_del");
						} catch (Exception e) {
							DBProException(e);
						}
					}
				}
			}
			write(sb.toString(), "UTF-8");
		}
		return null;
	}

	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getPageFuncId() {
		return pageFuncId;
	}
	public void setPageFuncId(String pageFuncId) {
		this.pageFuncId = pageFuncId;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public String getIds() {
		return ids;
	}
	public void setIds(String ids) {
		this.ids = ids;
	}
	public CommentService getCommentService() {
		return commentService;
	}
	public void setCommentService(CommentService commentService) {
		this.commentService = commentService;
	}
	public Comment getComment() {
		return comment;
	}
	public void setComment(Comment comment) {
		this.comment = comment;
	}
	public List<Comment> getCommentList() {
		return commentList;
	}
	public void setCommentList(List<Comment> commentList) {
		this.commentList = commentList;
	}



	public Map<String, String> getObjtypes() {
		return objtypes;
	}



	public void setObjtypes(Map<String, String> objtypes) {
		this.objtypes = objtypes;
	}



	public CreditruleService getCreditruleService() {
		return creditruleService;
	}



	public void setCreditruleService(CreditruleService creditruleService) {
		this.creditruleService = creditruleService;
	}

}
