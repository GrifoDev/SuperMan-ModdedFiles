.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String; = "GetUserTransaction"


# instance fields
.field private mCbHandler:Landroid/os/Messenger;

.field mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private sendResponseMessage(ILjava/lang/Object;)V
    .locals 4

    const/16 v2, 0xe6

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    if-nez v0, :cond_1

    const-string v0, "callback handler is null"

    const-string v1, "GetUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->what:I

    if-ne p1, v2, :cond_4

    const/4 v0, 0x0

    :goto_1
    iput v0, v1, Landroid/os/Message;->arg1:I

    if-ne v2, p1, :cond_3

    if-eqz p2, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getDevice_idx()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getDevice_idx()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v2, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getUser(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v0, "extra_cb_handler"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mCbHandler:Landroid/os/Messenger;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error in auth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2710

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    const/16 v1, 0xe6

    invoke-virtual {v0, p1, v1, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getUser(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method public getUserV2(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;)V
    .locals 6

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->checkAuthentication(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const-string v0, "guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    const/4 v3, 0x1

    const/16 v4, 0xeb

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getUserV2(Ljava/lang/String;Ljava/lang/String;IILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    const/16 v3, 0x2710

    const/4 v1, 0x0

    const/16 v0, 0xc8

    iget v2, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v2, :cond_4

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GetUserTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "get OK but no response, GET_USER"

    const-string v2, "GetUserTransaction"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;->user_info:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserV2Response;->user_info:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;

    iget v3, v0, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;->device_idx:I

    if-nez v3, :cond_1

    iget-object v0, v0, Lcom/samsung/android/sdk/ssf/account/io/UserInfoV2;->duid:Ljava/lang/String;

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send latest duid:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GetUserTransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Didn\'t find any duid.."

    const-string v2, "GetUserTransaction"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "get OK but no response, GET_USER_V2"

    const-string v2, "GetUserTransaction"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "GetUserTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    const/16 v0, 0xe6

    if-ne v0, p1, :cond_5

    invoke-direct {p0, v3, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->sendResponseMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountPreviousDeviceListener;

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetUserTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_0
        0xeb -> :sswitch_1
    .end sparse-switch
.end method
