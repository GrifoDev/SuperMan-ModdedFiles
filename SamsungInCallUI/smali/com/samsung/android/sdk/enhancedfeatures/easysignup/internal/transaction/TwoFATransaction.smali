.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;
.super Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/PushTokenClient$IPushTokenRegChangedListener;
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TokenValue;


# static fields
.field private static final FAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwoFATransaction"


# instance fields
.field private m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

.field private mAppId:Ljava/lang/String;

.field private mAuthCode:Ljava/lang/String;

.field private mAuthReqType:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mCC:Ljava/lang/String;

.field private mErrorCode:I

.field private mGenDuid:Z

.field private mImsi:Ljava/lang/String;

.field private mIsV3:Z

.field private mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

.field private mPhoneNumber:Ljava/lang/String;

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

.field private mSuccessCount:I

.field private mTokenReceived:I

.field private mpush_muid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/BaseTransaction;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthReqType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAppId:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mIsV3:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mpush_muid:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mTokenReceived:I

    return-void
.end method

.method private confirm2FA(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "confirm2FA"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    const-string v0, "2FA"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    const-string v0, "Authcode empty."

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    const/16 v5, 0x52

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->req2FAuthConfirm(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method private getSuccessCount([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    iget v3, v3, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private handleError(I)V
    .locals 2

    const/16 v0, 0xe6

    if-eq v0, p1, :cond_0

    const/16 v0, 0x78

    if-ne v0, p1, :cond_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    const/16 v1, 0x4e21

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->removeAccount(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyDeregister()V

    const-string v0, "BR : com.samsung.android.coreapps.easysignup.ACTION_DEAUTH_RESULT, result = 0"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    return-void
.end method

.method private initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->isImsiAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Sim is not ready"

    const-string v2, "TwoFATransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x65

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SimUtil;->getIMSI()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "device id is not ready"

    const-string v2, "TwoFATransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x6b

    iput v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private notifyAuthResult()V
    .locals 3

    const-string v0, "notifyAuthResultcom.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.coreapps.easysignup.ACTION_AUTH_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_auth_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private notifyResult()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyResult error code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " auth type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mTokenReceived:I

    iget v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mSuccessCount:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;-><init>(II)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "JOIN"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SMS_2FA"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "2FA"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getEnhancedFeaturesInstance()Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->notifyRegister()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;

    iget v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;->onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V

    goto :goto_0
.end method

.method private requestGetUser()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    const/16 v2, 0xe6

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->getUser(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    return-void
.end method

.method private requestIsAuth()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAuth:Before"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ssf/SsfClient;->getServer()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->isAuth(Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "isAuth: server URL is missing in isAuthenticated() "

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x2ee3

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    :cond_1
    return-void
.end method

.method private requestJoin()V
    .locals 14

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

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

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;-><init>()V

    iget v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mpush_muid:I

    if-nez v1, :cond_3

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v5

    const/16 v6, 0x78

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    invoke-virtual/range {v0 .. v9}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;[IILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mpush_muid:I

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v11

    const/16 v12, 0x78

    move-object v5, v0

    move-object v10, v4

    move-object v13, p0

    invoke-virtual/range {v5 .. v13}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpUserManager;->join(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;[IILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method private requestPushTokens()V
    .locals 6

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

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

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

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestReq2FA()V

    goto :goto_0
.end method

.method private requestReq2FA()V
    .locals 11

    const-string v0, "Req2FAuthState enter"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "ccc & national phone number invalid"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e3f

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getSppRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SPP"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonFeature;->SUPPORT_GCM:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->getGcmRegId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GCM"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/sdk/ssf/account/io/PushInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/samsung/android/sdk/ssf/account/io/PushInfo;

    array-length v0, v6

    if-nez v0, :cond_4

    const-string v0, "no push id, go to result"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x66

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-boolean v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mIsV3:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthReqType:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    const/16 v8, 0x56

    iget-object v9, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAppId:Ljava/lang/String;

    move-object v10, p0

    invoke-virtual/range {v0 .. v10}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->req2FAuthV3(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;ZILjava/lang/String;Lcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/DeviceUtils;->getDefaultLocale()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthReqType:Ljava/lang/String;

    const/16 v7, 0x51

    move-object v8, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->req2FAuth(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/samsung/android/sdk/ssf/account/io/PushInfo;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel2FARequest(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 6

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    const-string v0, "Cancel2FAuthReq enter"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "ccc & national phone number invalid"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x4e3f

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    const/16 v4, 0x55

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->cancel2FAReq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public confirm2FA(Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;)V
    .locals 1

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->confirm2FA(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public confirm2FA(Ljava/lang/String;ZLcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 1

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->confirm2FA(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public confirm2FAWithSMS(Ljava/lang/String;ZLjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;",
            ")V"
        }
    .end annotation

    const-string v0, "confirm2FAWithSMS"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    const-string v0, "SMS_2FA"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    const-string v0, "Authcode empty."

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    iget-object v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    const/16 v5, 0x52

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->req2FAuthConfirm(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public onPushRegCompleted()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestReq2FA()V

    return-void
.end method

.method public onResponse(ILjava/lang/Object;Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/Object;)V
    .locals 7

    const v6, 0x493e1

    const/16 v3, 0x64

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/16 v0, 0xc8

    iget v1, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->httpStatusCode:I

    if-ne v0, v1, :cond_d

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAuth:processMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getAuthStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getMsisdn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setMsisdn(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->setTNCsettingTime(Ljava/lang/String;J)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestPushTokens()V

    goto :goto_0

    :cond_1
    const-string v0, "get OK but no response, IS_AUTH"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto :goto_0

    :sswitch_1
    if-eqz p2, :cond_2

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-static {v0, p2, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->addAccount(Ljava/lang/String;Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;Ljava/util/ArrayList;)V

    const-string v0, "updated_app_version"

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PackageUtils;->getAppVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/CommonPref;->putInt(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/CommonApplication;->getSsfClient(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/SsfClient;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getDPServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServer(Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ServerInterface;->getSAServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setSAServer(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getDuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getAccessToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/AccountDBMgr;->getRefreshToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/ssf/SsfClient;->setConfigureInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ssf/SsfClient;->setServerURL([Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/JoinResponse;->getServerUrls()[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/db/GldDBMgr;->setGldData(Landroid/content/Context;[Lcom/samsung/android/sdk/ssf/account/io/ServerInfo;)V

    const-string v0, "BR : com.samsung.android.coreapps.easysignup.ACTION_LOGIN_RESULT, result = 0"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestGetUser()V

    goto/16 :goto_0

    :cond_2
    const-string v0, "get OK but no response, JOIN"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_2
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/GetUserResponse;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

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

    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_3
    const-string v0, "get OK but no response, GET_USER"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "2FA_REQ sent"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_5

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthResp;

    if-eqz v0, :cond_5

    iput v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthResp;

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthResp;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

    if-eqz v0, :cond_4

    array-length v1, v0

    if-lez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    iget v2, v2, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TwoFATransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v0, v4

    iget v1, v1, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    packed-switch v1, :pswitch_data_0

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->getSuccessCount([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mSuccessCount:I

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :pswitch_0
    iput v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_1

    :pswitch_1
    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_1

    :pswitch_2
    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_1

    :cond_5
    const-string v0, "get OK but no response, 2FA_REQ"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "Got TOKEN_2FA_REQ_V3 "

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_7

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthRespV3;

    if-eqz v0, :cond_7

    iput v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthRespV3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auth code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthRespV3;->auth_code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Req2FAuthRespV3;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

    if-eqz v0, :cond_6

    array-length v1, v0

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    iget v2, v2, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TwoFATransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v0, v4

    iget v1, v1, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    packed-switch v1, :pswitch_data_1

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->getSuccessCount([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mSuccessCount:I

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :pswitch_3
    iput v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_2

    :pswitch_4
    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_2

    :pswitch_5
    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_2

    :cond_7
    const-string v0, "get OK but no response, 2FA_REQ_V3"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "2FA_CANCEL_REQ sent"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_9

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Cancel2FAResp;

    if-eqz v0, :cond_9

    iput v5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/Cancel2FAResp;

    iget-object v0, p2, Lcom/samsung/android/sdk/ssf/account/io/Cancel2FAResp;->receiver_info:[Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;

    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v0, v4

    iget v2, v2, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TwoFATransaction"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v1, v0, v4

    iget v1, v1, Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;->st:I

    packed-switch v1, :pswitch_data_2

    :goto_3
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->getSuccessCount([Lcom/samsung/android/sdk/ssf/account/io/ReceiverInfo$ReceiverInfoResp;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mSuccessCount:I

    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :pswitch_6
    iput v6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_3

    :pswitch_7
    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_3

    :pswitch_8
    iput v3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    goto :goto_3

    :cond_9
    const-string v0, "get OK but no response, 2FA_REQ_CANCEL"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_6
    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    const-string v0, "SMS_2FA"

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "2FA_REQ sent"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestJoin()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyAuthResult()V

    goto/16 :goto_0

    :cond_a
    const-string v0, "2FA_REQ sent"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    if-eqz v0, :cond_b

    if-eqz p2, :cond_c

    instance-of v0, p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    if-eqz v0, :cond_c

    check-cast p2, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getDuid()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ssf/account/io/AuthResponse;->getDeviceIdx()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;-><init>(JI)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;)V

    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->m2FaConfirmListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;

    new-instance v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;

    const-wide/16 v2, -0x1

    invoke-direct {v1, v2, v3, v5}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;-><init>(JI)V

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccount2FAAuthConfirmListener;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccount2FAConfirmInfo;)V

    goto :goto_4

    :sswitch_7
    iput v4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    const-string v0, "2FA_REQ refuse sent"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto/16 :goto_0

    :cond_d
    const-string v0, "TwoFATransaction"

    invoke-static {p3, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->logErrorResponse(Lcom/samsung/android/sdk/ssf/SsfResult;Ljava/lang/String;)V

    iget v0, p3, Lcom/samsung/android/sdk/ssf/SsfResult;->resultCode:I

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->handleError(I)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x51 -> :sswitch_3
        0x52 -> :sswitch_6
        0x54 -> :sswitch_7
        0x55 -> :sswitch_5
        0x56 -> :sswitch_4
        0x78 -> :sswitch_1
        0xe6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public refuse2FA(Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 4

    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mErrorCode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->notifyResult()V

    goto :goto_0

    :cond_1
    const-string v0, "Req2FAuthRefuseState enter"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthCode:Ljava/lang/String;

    const/16 v3, 0x54

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/accountinterface/EasySignUpAuthManager;->refuse2FAuthConfirm(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sdk/ssf/SsfListener;)V

    goto :goto_0
.end method

.method public register2FA(ILjava/util/ArrayList;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Predefined conditon not satisfied"

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mpush_muid:I

    const-string v0, "JOIN"

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mServiceIdList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestJoin()V

    goto :goto_0
.end method

.method public request2FA(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)V
    .locals 2

    invoke-direct {p0, p7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->initAndCheckDeviceStatus(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Device was not ready to process.."

    const-string v1, "TwoFATransaction"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mCC:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mPhoneNumber:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mGenDuid:Z

    iput-object p5, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAuthReqType:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mAppId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mListener:Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;

    iput-boolean p4, p0, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->mIsV3:Z

    invoke-direct {p0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/TwoFATransaction;->requestIsAuth()V

    goto :goto_0
.end method
