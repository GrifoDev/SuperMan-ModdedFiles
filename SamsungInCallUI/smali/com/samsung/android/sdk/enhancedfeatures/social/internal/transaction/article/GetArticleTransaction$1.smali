.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getArticleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getSid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setSid(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setName(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPermissionSetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPermissionSetId(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCommentCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCommentCount(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getOwnerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setOwnerId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setGroupId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getPushNotification()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setPushNotification(Ljava/lang/Boolean;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticleInfoResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/GetArticleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/GetArticleListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/GetArticleResponse;)V

    goto :goto_0
.end method
