.class Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;
.super Lcom/samsung/android/sdk/ssf/SsfListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;

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

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;-><init>()V

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setReqId(I)V

    invoke-virtual {v0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setUserData(Ljava/lang/Object;)V

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setResultCode(I)V

    iget-wide v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorCode:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorCode(J)V

    iget-object v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->serverErrorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;->setServerErrorMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/ErrorResponse;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;-><init>()V

    check-cast p2, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryResp;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;->setReqId(I)V

    invoke-virtual {v1, p4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;->setUserData(Ljava/lang/Object;)V

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryResp;->getAccessoryInfo()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryResp;->getAccessoryInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/accessory/io/GetAccessoryResp;->getAccessoryInfo()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;

    invoke-direct {v4}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getResourceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->setResourceId(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getServiceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->setServiceId(I)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->setSerialNo(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getCpCustomInfo()Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;

    invoke-direct {v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getCpCustomInfo()Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ssf/accessory/io/CpCustomInfo;->getCpCustomText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;->setCpCustomText(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->setCpCustomInfo(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/CpCustom;)V

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getResourceStatus()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getResourceStatus()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/AccessoryInfo;->getResourceStatus()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;

    new-instance v7, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;

    invoke-direct {v7}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;-><init>()V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->getAttributeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->setAttributeName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/accessory/io/ResourceStatusInfo;->getAttributeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/request/StatusFilter;->setAttributeValue(Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/AccessoryDetails;->setResourceStatus(Ljava/util/List;)V

    :cond_3
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;->setAccessoryDetails(Ljava/util/List;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction$1;->this$0:Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;->access$000(Lcom/samsung/android/sdk/enhancedfeatures/mate/internal/transaction/GetAccessoryTransaction;)Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/listener/GetAccessoryListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/mate/apis/response/GetAccessoryResponse;)V

    goto/16 :goto_0
.end method
