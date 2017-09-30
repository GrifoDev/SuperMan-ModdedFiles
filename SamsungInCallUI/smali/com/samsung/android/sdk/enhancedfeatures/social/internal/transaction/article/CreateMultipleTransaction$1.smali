.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 8

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->getArticleCount()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->setArticlesCount(I)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->getArticles()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->getArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/ArticlesInfoResponse;->getArticles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->getArticleId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;->setArticleId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/ArticleDetails;->getCreatedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ArticleInfo;->setCreatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;->setArticles(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/article/CreateMultipleTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/article/CreateMultipleListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/article/CreateMultipleResponse;)V

    goto :goto_0
.end method
