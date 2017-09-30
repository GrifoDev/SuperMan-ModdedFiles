.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 9

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getTotal()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setTotal(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCount(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getDisplayCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setDisplayCount(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getOffset()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setOffset(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getPagesRemain()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setPagesRemain(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getSid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setSid(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPermissionSetId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPermissionSetId(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCommentCount()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCommentCount(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getGroupId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;

    invoke-direct {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->isOnlyOnce()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setArticleMetaCounterList(Ljava/util/List;)V

    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleList(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaDataResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetadata/GetArticleMetaDataResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleMetaDataList(Ljava/util/List;)V

    :cond_6
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getArticleMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->isOnlyOnce()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/articlemetacounter/GetArticleMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setArticleMetaCounterList(Ljava/util/List;)V

    :cond_8
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setComment(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPermissionSetId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPermissionSetId(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setParentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommenMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;

    invoke-direct {v7}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->isOnlyOnce()Z

    move-result v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCommentMetaCounterList(Ljava/util/List;)V

    :cond_a
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentList(Ljava/util/List;)V

    :cond_c
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaDataResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetadata/GetCommentMetaDataResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_d
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentMetaDataList(Ljava/util/List;)V

    :cond_e
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_10

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/SearchSocialResponse;->getCommentMetaCounterList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->isOnlyOnce()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_f
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;->setCommentMetaCounterList(Ljava/util/List;)V

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/search/SocialSearchTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/search/SocialSearchListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/search/SocialSearchResponse;)V

    goto/16 :goto_0
.end method
