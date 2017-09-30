.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String; = "DeleteAccountTransaction"


# instance fields
.field private mErrorCode:I

.field private mImsi:Ljava/lang/String;

.field private mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

.field private mRemoveSettingAccount:Z

.field private mServiceCount:I

.field private mServiceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mErrorCode:I

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceCount:I

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mRemoveSettingAccount:Z

    return-void
.end method

.method private deleteService()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->getAgentStatus()I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceId:I

    const/16 v3, 0x91

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->deleteService(IIILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private getAgentStatus()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getJoinServices(Landroid/content/Context;)[I

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->getJoinServices(Landroid/content/Context;)[I

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "error no join service list"

    const-string v2, "DeleteAccountTransaction"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget v3, v2, v0

    const/4 v4, 0x4

    if-ge v3, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgentStatus true service id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteAccountTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isDeleteService()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isCoreAppsAgent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDeAuthResult(Z)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDeAuthResult : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteAccountTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;

    const/4 v2, -0x1

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mRemoveSettingAccount:Z

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;-><init>(IIZ)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/BroadcasterToCoreapps;->sendBroadcastDeregisterResult(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->isDeleteService()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceCount:I

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mRemoveSettingAccount:Z

    invoke-direct {v1, v4, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;-><init>(IIZ)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mErrorCode:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    goto :goto_0
.end method

.method private removeAuthData()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mRemoveSettingAccount:Z

    return-void
.end method


# virtual methods
.method protected deleteAccount()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    const/16 v2, 0x8c

    invoke-virtual {v1, v0, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->deleteUser(Ljava/util/List;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method public deleteAccount(ILcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 2

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mErrorCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mRemoveSettingAccount:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->isImsiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mListner:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mImsi:Ljava/lang/String;

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceId:I

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isAnonymous()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isLduDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->removeAuthData()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyResult()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->isDeleteService()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->deleteService()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->deleteAccount()V

    goto :goto_0
.end method

.method public notifyResult()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyDeAuthResult(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyDeAuthResult(Z)V

    goto :goto_0
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 2

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_4

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->removeAuthData()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyResult()V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/DeleteServiceResponse;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/DeleteServiceResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remaining services: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/samsung/android/sdk/ssf/account/io/DeleteServiceResponse;->app_count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeleteAccountTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/samsung/android/sdk/ssf/account/io/DeleteServiceResponse;->app_count:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceCount:I

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceCount:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->isCoreAppsAgent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->removeAuthData()V

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyResult()V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mServiceCount:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mImsi:Ljava/lang/String;

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/account/io/DeleteServiceResponse;->services:[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setJoinSIDs(Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/ServiceInfo;)V

    goto :goto_1

    :cond_3
    const-string v0, "get OK but no response"

    const-string v1, "DeleteAccountTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2af8

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mErrorCode:I

    goto :goto_1

    :cond_4
    const-string v0, "DeleteAccountTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x4e28

    if-eq v0, v1, :cond_5

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_6

    :cond_5
    const-string v0, "account is already deleted"

    const-string v1, "DeleteAccountTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->removeAuthData()V

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->notifyResult()V

    goto :goto_0

    :cond_6
    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/DeleteAccountTransaction;->mErrorCode:I

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x8c -> :sswitch_0
        0x91 -> :sswitch_1
    .end sparse-switch
.end method
