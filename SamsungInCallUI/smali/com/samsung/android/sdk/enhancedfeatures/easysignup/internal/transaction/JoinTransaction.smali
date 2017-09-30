.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final TAG:Ljava/lang/String; = "JoinTransaction"


# instance fields
.field private mAuthCode:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mAutoMOResponse:Landroid/os/Messenger;

.field private mEntryPoint:Ljava/lang/String;

.field private mErrorCode:I

.field private mErrorState:Ljava/lang/String;

.field private mFromEULA:Z

.field private mGuid:Ljava/lang/String;

.field private mImsi:Ljava/lang/String;

.field private mIsAgreeMarketing:Z

.field private mIsAnonymous:Z

.field private mIsMOSupport:Z

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

.field private mMoNumber:Ljava/lang/String;

.field private mMoPrefix:Ljava/lang/String;

.field private mRegDisclaimerAgreed:Z

.field private mRequestedAuthType:Ljava/lang/String;

.field private mRequestedMsisdn:Ljava/lang/String;

.field private mSaDuid:Ljava/lang/String;

.field private mServiceIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mToken:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedAuthType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mSaDuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedMsisdn:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsMOSupport:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    return-void
.end method

.method private initValues()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mGuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mSaDuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedMsisdn:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    return-void
.end method

.method private notifyJoinResult(Z)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyJoinResult : result = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JoinTransaction"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    const-string v0, "is_mo_sms_sent"

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->remove(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Registered]["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "JoinTransaction"

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyRegister()V

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-direct {v4, v0, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;-><init>(II)V

    invoke-interface {v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/BroadcasterToCoreapps;->sendBroadcastServiceOnResult(Landroid/content/Context;Z)V

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->sendEULAResult(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "join failed. state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->unregisterGcm(Landroid/content/Context;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/network/SppPushClient;->deregister(Landroid/content/Context;)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setSppRegId(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private notifyResult()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyJoinResult(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyJoinResult(Z)V

    goto :goto_0
.end method

.method private obtainEventMessage(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "agreeMarketing"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsAgreeMarketing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAgreeMarketing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AuthRequestFrom"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEntryPoint : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->debugStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_reg_disclaimer_agreed"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRegDisclaimerAgreed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRegDisclaimerAgreed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRegDisclaimerAgreed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EULA"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    const-string v0, "auto_mo_handler"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    iput-boolean v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsMOSupport:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFromEULA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extra_requested_auth_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedAuthType:Ljava/lang/String;

    const-string v0, "auth_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthCode:Ljava/lang/String;

    const-string v0, "auth_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    const-string v0, "extra_guid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mGuid:Ljava/lang/String;

    const-string v0, "extra_sa_duid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mSaDuid:Ljava/lang/String;

    const-string v0, "extra_requested_msisdn"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedMsisdn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAuthType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRequestedAuthType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "service_id_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->action2token(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mToken:I

    const-string v0, "is_anonymous"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " anonymous:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestAuth()V
    .locals 3

    const-string v0, "requestAuth start"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imsi"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_auth_type"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_requested_auth_type"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_requested_msisdn"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRequestedMsisdn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "auth_code"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_mo_number"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mMoNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_mo_prefix"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mMoPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "AuthRequestFrom"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_guid"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mGuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_sa_duid"

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mSaDuid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;

    invoke-direct {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction;->authenticate(Landroid/content/Context;Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/AuthTransaction$IDeviceRegChangedListener;)V

    return-void
.end method

.method private requestGetUser()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    const/16 v2, 0xe6

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getUser(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private requestPushTokens()V
    .locals 6

    const-string v0, "requestPushTokens start"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient;->getPushToken(Landroid/content/Context;ZZLjava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Both tokens are activated.GCM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SPP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestJoin()V

    goto :goto_0
.end method

.method public static unregisterGcm(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction$1;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    const-string v0, "GCM RegID was null. So no need to unregister."

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public action2token(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_JOIN"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xa

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_SPP_REG_DONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x6e

    goto :goto_0
.end method

.method public join(Landroid/content/Intent;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 2

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->initValues()V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->obtainEventMessage(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->startAuth()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Unknown Intent."

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/BaseListener;I)V

    goto :goto_0
.end method

.method public onDeviceRegCompleted(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onDeviceRegCompleted start"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "extra_auth_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_msisdn"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    if-eqz v0, :cond_0

    const-string v0, "extra_is_mo_support"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsMOSupport:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AuthTransaction PASS. But value  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsMOSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestPushTokens()V

    :goto_0
    return-void

    :cond_1
    const-string v0, "extra_error_code"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const-string v0, "Join.AuthState"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto :goto_0

    :cond_2
    const-string v0, "Data was null."

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const-string v0, "Join.AuthState"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto :goto_0
.end method

.method public onPushRegCompleted()V
    .locals 2

    const-string v0, "Push token registration completed."

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestJoin()V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 4

    const/16 v2, 0x2af8

    const/4 v3, 0x0

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_6

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown token: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mFromEULA:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mRegDisclaimerAgreed:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->addAccount(Ljava/lang/String;Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/SsfClient;->setConfigureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServerURL([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    if-eqz v1, :cond_2

    const-string v1, "http://localhost/"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setFileServerUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setQuotaServerUrl(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setPrimaryMessageProxy(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;->setGldData(Landroid/content/Context;[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setDeviceId(Ljava/lang/String;)V

    const-string v0, "updated_app_version"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getAppVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "ENTR"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mEntryPoint:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/SLog;->single(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "[JoinState] result = 0"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "0000000000000000"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->isLduDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestGetUser()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "get OK but no response, JOIN"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    goto :goto_1

    :sswitch_1
    if-eqz p2, :cond_5

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;->getDevice_idx()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "get OK but no response, GET_USER"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    goto :goto_2

    :cond_6
    const-string v0, "JoinTransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    const/16 v0, 0x78

    if-ne v0, p1, :cond_8

    const-string v0, "JOIN"

    :goto_3
    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    const-string v0, "[JoinState] notifyDeregister : result = 0"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_8
    const-string v0, "GET USER"

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xe6 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestJoin()V
    .locals 10

    const-string v0, "requestJoin start"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const-string v0, "Join"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPP"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GCM"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->setDeviceId(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v5

    const/16 v6, 0x78

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mSaDuid:Ljava/lang/String;

    iget-object v8, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mGuid:Ljava/lang/String;

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;[IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public sendEULAResult(Z)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x384

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "extra_is_mo_support"

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsMOSupport:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extra_auth_result"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "extra_error_code"

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAutoMOResponse:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send reuslt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed Send reuslt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected startAuth()V
    .locals 2

    const-string v0, "startAuth start"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mToken:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->isImsiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Sim is not ready"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x65

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const-string v0, "Join.Idle"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    :cond_1
    const-string v0, "JOIN"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestJoin()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "device id is not ready"

    const-string v1, "JoinTransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x6b

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorCode:I

    const-string v0, "Join.Idle"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setDeviceId(Ljava/lang/String;)V

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mIsAnonymous:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestJoin()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->requestAuth()V

    goto :goto_0

    :cond_7
    const-string v0, "Join.Idle"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->mErrorState:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/JoinTransaction;->notifyResult()V

    goto :goto_0
.end method
