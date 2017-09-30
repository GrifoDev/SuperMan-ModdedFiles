.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 5

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getComment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setComment(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPermissionSetId()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPermissionSetId(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setParentId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getChildrenList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getChildrenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentInfoResponse;->getChildrenList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/CommentId;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/CommentId;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/CommentInfo;->setCommentId(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;->setChildrenList(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/comment/GetCommentTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/comment/GetCommentListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/comment/GetCommentResponse;)V

    goto/16 :goto_0
.end method
