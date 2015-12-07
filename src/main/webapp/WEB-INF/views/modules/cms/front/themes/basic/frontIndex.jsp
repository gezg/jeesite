<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/modules/cms/front/include/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<title>司法首页</title>
	<meta name="decorator" content="cms_default_${site.theme}"/>
	<meta name="description" content="JeeSite ${site.description}" />
	<meta name="keywords" content="JeeSite ${site.keywords}" />
</head>
<body>
    <%-- <div class="hero-unit" style="padding-bottom:35px;margin:10px 0;">
      <c:set var="article" value="${fnc:getArticle('2')}"/>
      <h1>${fns:abbr(article.title,28)}</h1><p></p>
      <p>${fns:abbr(fns:replaceHtml(article.articleData.content),260)}</p>
      <p><a href="${article.url}" class="btn btn-primary btn-large">&nbsp;&nbsp;&nbsp;查看详情 &raquo;&nbsp;&nbsp;&nbsp;</a></p>
    </div> --%>
    <div class="row">
    	<div class="span12">
	        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>组织机构</h4>
	        <div id="slideBox" class="slideBox">
                <div class="hd">
                    <ul></ul>
                </div>
                <div class="bd">
                    <ul>
						<c:forEach items="${fnc:getArticleList(site.id, 2, 4, '')}" var="article">
							<li>
								<a href="${article.url}">
		                            <img src="${article.image}" />
		                        </a>
								<%-- <span class="pull-right">
									<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
								</span>
								<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a> --%>
							</li>
						</c:forEach>
					</ul>
                </div>
                <!-- 下面是前/后按钮代码，如果不需要删除即可 -->
                <a class="prev" href="javascript:void(0)"></a>
                <a class="next" href="javascript:void(0)"></a>
            </div>
      </div>
    </div>
    <div class="row">
      <div class="span6">
        <h4> <small><a href="${ctx}/list-6${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>质量监督</h4>
		<ul class="justice_ul"><c:forEach items="${fnc:getArticleList(site.id, 6, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
      <div class="span6">
        <h4><small><a href="${ctx}/list-2${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>政策法规</h4>
		<ul class="justice_ul"><c:forEach items="${fnc:getArticleList(site.id, 10, 8, '')}" var="article">
			<li><span class="pull-right"><fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/></span><a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a></li>
		</c:forEach></ul>
      </div>
    </div>
    
    <div class="row">
      <div class="span6">
        <h4> <small><a href="${ctx}/list-10${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>软件介绍</h4>
		<ul class="nav nav-tabs" id="myTab">
		   <li class="active"><a href="#justiceTabs1" data-toggle="tab">组织机构</a></li>
		   <li><a href="#justiceTabs2" data-toggle="tab">软件介绍</a></li>
		   <li><a href="#justiceTabs3" data-toggle="tab">质量检查</a></li>
		   <li><a href="#justiceTabs4" data-toggle="tab">友情连接</a></li>
		</ul>
		
		<div class="tab-content">
		   <div class="tab-pane fade in active" id="justiceTabs1">
		   		<ul class="justice_ul">
					<c:forEach items="${fnc:getArticleList(site.id, 2, 4, '')}" var="article">
						<li>
							<span class="pull-right">
								<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
							</span>
							<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a>
						</li>
					</c:forEach>
				</ul>
		   </div>
		   <div class="tab-pane fade" id="justiceTabs2">
		      <ul class="justice_ul">
					<c:forEach items="${fnc:getArticleList(site.id, 6, 4, '')}" var="article">
						<li>
							<span class="pull-right">
								<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
							</span>
							<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a>
						</li>
					</c:forEach>
				</ul>
		   </div>
		   <div class="tab-pane fade" id="justiceTabs3">
		   		<ul class="justice_ul">
					<c:forEach items="${fnc:getArticleList(site.id, 10, 4, '')}" var="article">
						<li>
							<span class="pull-right">
								<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
							</span>
							<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a>
						</li>
					</c:forEach>
				</ul>
		   </div>
		   <div class="tab-pane fade" id="justiceTabs4">
		   		<ul class="justice_ul">
					<c:forEach items="${fnc:getArticleList(site.id, 2, 4, '')}" var="article">
						<li>
							<span class="pull-right">
								<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
							</span>
							<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a>
						</li>
					</c:forEach>
				</ul>
		   </div>
		</div>
      </div>
      <div class="span6">
        <h4><small><a href="${ctx}/list-18${urlSuffix}" class="pull-right">更多&gt;&gt;</a></small>友情连接</h4>
        <div class="txtScroll-top" id="txtScroll-top">
			<div class="hd1">
				<a class="next"></a>
				<ul></ul>
				<a class="prev"></a>
				<span class="pageState"></span>
			</div>
			<div class="bd1">
				<ul class="infoList">
					<c:forEach items="${fnc:getArticleList(site.id, 14, 8, '')}" var="article">
						<li>
							<span class="pull-right">
								<fmt:formatDate value="${article.updateDate}" pattern="yyyy.MM.dd"/>
							</span>
							<a href="${article.url}" style="color:${article.color}">${fns:abbr(article.title,28)}</a>
						</li>
					</c:forEach>
				</ul>
			</div>
		</div>
      </div>
    </div>
    <script type="text/javascript">
    	$(document).ready(function(){
    		$("#slideBox").slide({
    			container:'.slideBox',
    		    titCell:".hd ul",
    		    mainCell:".bd ul",
    		    autoPage:true,
    		    effect:"left",
    		    autoPlay:true
    		});
    		
    		$("#txtScroll-top").slide({
    			container:'.txtScroll-top',
    			titCell:".hd1 ul",
    			mainCell:".bd1 ul",
    			effect:"topMarquee",
    			autoPlay:true,
    			vis:6,
    			interTime:40
    		});
    	});
    </script>
</body>
</html>