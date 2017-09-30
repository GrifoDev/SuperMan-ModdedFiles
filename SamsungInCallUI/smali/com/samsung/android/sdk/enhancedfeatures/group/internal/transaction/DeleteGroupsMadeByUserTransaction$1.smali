.class Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;

    invoke-direct {p0}, Lcom/samsung/android/sdk/ssf/SsfListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 6

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->getGroups_count()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->setGroupsCount(I)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->getGroupsCount()I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/group/io/GroupDeleteResponse;->getGroups()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;->setId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/group/io/DeletedGroupInfo;->getDeleted()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse$Group;->setDeleted(I)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->setGroups(Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/group/internal/transaction/DeleteGroupsMadeByUserTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/DeleteGroupsMadeByUserListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupsMadeByUserResponse;)V

    goto :goto_0
.end method
