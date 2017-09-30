.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;

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

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCommentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getUpdatedTime()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setUpdatedAt(Ljava/lang/Long;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/UpdateCommentMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/UpdateCommentMetaCounterListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/UpdateCommentMetaCounterResponse;)V

    goto :goto_0
.end method
