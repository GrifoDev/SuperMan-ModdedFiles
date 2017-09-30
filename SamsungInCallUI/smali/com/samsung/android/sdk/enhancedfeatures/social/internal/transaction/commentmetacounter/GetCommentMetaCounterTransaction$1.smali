.class Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;

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

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCommentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCommentId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMetaKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMetaKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setValue(I)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->isOnlyOnce()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setOnlyOnce(Z)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getCreatedTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setCreatedAt(Ljava/lang/Long;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/social/io/CommentMetaCounterResponse;->getMemberList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getMemberId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setMemberId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setValue(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/social/io/MemberDetails;->getUpdatedTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/MemberInfo;->setUpdatedAt(Ljava/lang/Long;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setMemberList(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/social/internal/transaction/commentmetacounter/GetCommentMetaCounterTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/listener/commentmetacounter/GetCommentMetaCounterListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/social/apis/response/commentmetacounter/GetCommentMetaCounterResponse;)V

    goto/16 :goto_0
.end method
