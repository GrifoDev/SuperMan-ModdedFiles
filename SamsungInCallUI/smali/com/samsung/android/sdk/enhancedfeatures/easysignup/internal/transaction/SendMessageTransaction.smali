.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const-string v0, "SendMessageTransaction"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSSFPushMessage(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;)Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v9, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;

    invoke-direct {v9}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->getTargetSid()I

    move-result v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->setTargetSid(I)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->setLanguage(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->getPushMessage()Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;

    const-string v1, "noti"

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getOpenType()I

    move-result v6

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getImageUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$PushMessage;->getExternalFields()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->setPushMessage(Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest$PushMessage;)V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;->getReciverInformation()[Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v0, v2

    if-lez v0, :cond_2

    array-length v0, v2

    new-array v3, v0, [Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

    array-length v4, v2

    move v0, v11

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v5, v2, v0

    add-int/lit8 v1, v11, 0x1

    new-instance v6, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;->getCcc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest$ReceiverInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v3, v11

    add-int/lit8 v0, v0, 0x1

    move v11, v1

    goto :goto_0

    :cond_0
    move-object v0, v10

    :goto_1
    return-object v0

    :cond_1
    invoke-virtual {v9, v3}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;->setReciverInformation([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo;)V

    move-object v0, v9

    goto :goto_1

    :cond_2
    move-object v0, v10

    goto :goto_1
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_1

    const-string v0, "Send message.."

    const-string v1, "SendMessageTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;

    invoke-virtual {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->sendResult(Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "get OK but no response"

    const-string v1, "SendMessageTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0

    :cond_1
    const-string v0, "SendMessageTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public sendMessage(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;)V
    .locals 4

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->getSSFPushMessage(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/request/EnhancedAccountMessageRequest;)Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;-><init>()V

    const-string v2, "PUSH"

    const/16 v3, 0xfa

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpServiceManager;->SendMessage(Ljava/lang/String;Lcom/samsung/android/sdk/ssf/account/io/PushMessageRequest;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0

    :cond_1
    const-string v0, "Message request was null"

    const-string v1, "SendMessageTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public sendResult(Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;)V
    .locals 12

    const/4 v0, 0x0

    new-instance v3, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;

    invoke-direct {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;->getReciverInformation()[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v1, v4

    if-lez v1, :cond_1

    array-length v1, v4

    new-array v5, v1, [Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;

    array-length v6, v4

    move v1, v0

    :goto_0
    if-ge v0, v6, :cond_0

    aget-object v7, v4, v0

    add-int/lit8 v2, v1, 0x1

    new-instance v8, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->getCcc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    iget v11, v7, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    iget-object v7, v7, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->rmsg:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    aput-object v8, v5, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->setReciverInformation([Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse$ReceiverInfo;)V

    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ssf/account/io/PushMessageResponse;->getLeftBlockingHour()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;->setLeftBlockingHour(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/SendMessageTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;

    invoke-interface {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountMessageListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountMessageResponse;)V

    return-void

    :cond_1
    const-string v0, "ReceiverInfo in response was null"

    const-string v1, "SendMessageTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
