.class Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;

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

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setReqId(I)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->setUserData(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->getResourceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->getCpServiceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->setCpServiceId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/RegisterAccessoryResp;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->getAttributeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->setAttributeName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->setAttributeValue(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;->setResourceStatus(Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/RegisterAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/RegisterAccessoryListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/RegisterAccessoryResponse;)V

    goto :goto_0
.end method
