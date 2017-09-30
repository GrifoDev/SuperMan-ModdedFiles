.class public Lcom/cmcc/sso/sdk/auth/AuthnHelper;
.super Ljava/lang/Object;


# static fields
.field private static final CMCC_SSO_SDK_VERION:Ljava/lang/String; = "ANDIDMP-ANDROIDV2.2.0_SDK"

.field private static mCurrentAppPkgName:Ljava/lang/String;

.field private static mLatestSvcPkgName:Ljava/lang/String;


# instance fields
.field private isCheckAppSignOk:Z

.field private isRunning:Z

.field private mAppid:Ljava/lang/String;

.field private mCallback:Lcom/cmcc/sso/service/IPCCallback;

.field public mContext:Landroid/content/Context;

.field private mIService:Lcom/cmcc/sso/service/ISsoService;

.field private mIsDefaultUI:Z

.field private mIsTest:Z

.field public mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

.field private mPassId:Ljava/lang/String;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;

    invoke-direct {v0, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/cmcc/sso/sdk/util/ServiceUtils;

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmcc/sso/sdk/util/ServiceUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->startService()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    return-void
.end method

.method static synthetic access$1(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mPassId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lcom/cmcc/sso/service/ISsoService;)V
    .locals 0

    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    return-void
.end method

.method static synthetic access$4(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/ISsoService;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/IPCCallback;
    .locals 1

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    return-object v0
.end method

.method private callbackToApp(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    :cond_0
    iput-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmcc/sso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const-string v0, "commandid"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    const-string v0, "commandid"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "nextcommandid"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "appkey"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "packagename"

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "istest"

    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "procCheckApp, the app packagename is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const-string v0, "appid"

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "no ssoservice exist."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;

    invoke-direct {v0, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    invoke-virtual {v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sdkVersion"

    const-string v1, "ANDIDMP-ANDROIDV2.2.0_SDK"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    invoke-interface {v0, p1, p2}, Lcom/cmcc/sso/service/ISsoService;->callback(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string v0, "ServiceConnection, cmcc-sso-sdk.jar version[ANDIDMP-ANDROIDV2.2.0_SDK]."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;

    invoke-direct {v0, p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.cmcc.sso.Action.SsoService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    const-string v2, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "bind latest version service failed."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    sget-object v1, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    const-string v2, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bind current app service failed."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18e71

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4

    const v1, 0x18f3b

    const-string v0, "startGetToken start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "startGetToken, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "startGetToken, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "startGetToken, appid or appkey contains only space."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_5

    const-string v0, "startGetToken running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "default"

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    :cond_6
    const-string p4, "gba,wap,datasms,mannal"

    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "logintype"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "istest"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "issipapp"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "showuname"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto/16 :goto_0
.end method

.method private startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4

    const v2, 0x18f3b

    const-string v0, "startGetTokenByCondition start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p7, :cond_0

    const-string v0, "startGetTokenByCondition, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p7, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "startGetTokenByCondition, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "startGetTokenByCondition, input param contains only white space char."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_5

    const-string v0, "startGetTokenByCondition running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    packed-switch p3, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startGetTokenByCondition, authnType is ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    :pswitch_0
    const/4 v0, 0x4

    :goto_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "isdefault"

    iget-boolean v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "username"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "showuname"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "issipapp"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "password"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v1, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private tryNativeMail()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;

    invoke-direct {v0, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public changeAccount(Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "changAccount start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string v0, "changAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "changAccount running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v0, :cond_2

    const-string v0, "changAccount, checkappsign failed."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3a

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "changAccount, appid or username is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "commandid"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "changePassword start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "changePassword, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "changePassword, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "changePassword running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "newpassword"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public checkSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "checkSmsCode start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "checkSmsCode, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "checkSmsCode, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "checkSmsCode running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "busitype"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "validcode"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x11

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public cleanSSO(Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "cleanSSO start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "changAccount, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :cond_0
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v0, :cond_1

    const-string v0, "cleanSSO, check app sign first please."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3a

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "commandid"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "appid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "passid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mPassId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 7

    const-string v0, "getAccessToken start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const-string v5, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 8

    const-string v0, "getAccessTokenByCondition start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const-string v6, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public getAccountList(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 2

    const-string v0, "getAccountList start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v0, "getAccountList, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "getAccountList, appid or appkey is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "getAccountList running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x7

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public getAppPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 7

    const-string v0, "getAppPassword start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const-string v5, "2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public getAppPasswordByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 8

    const-string v0, "getAppPasswordByCondition start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const-string v6, "2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    return-void
.end method

.method public getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 2

    const-string v0, "getSmsCode start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const-string v0, "getSmsCode, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :cond_0
    iput-object p5, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "getSmsCode, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "busitype"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetSmsCode(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public registerForRandom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "registerUser start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "registerUser, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "registerUser, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "registerUser running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "registerUser start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "registerUser, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "registerUser, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "registerUser running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "resetPassword start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "resetPassword, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "resetPassword, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "resetPassword running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public resetPwdForRandom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3

    const-string v0, "resetPwdForRandom start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p6, :cond_0

    const-string v0, "resetPwdForRandom, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "resetPwdForRandom, input param is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v0, :cond_3

    const-string v0, "resetPwdForRandom running."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3c

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x13

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public selectSimLogin(IJLcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4

    const-string v0, "selectSimLogin start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    if-nez p4, :cond_0

    const-string v0, "selectSimLogin, listener is null."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-object p4, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "selectSimLogin, simno is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3b

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v0, :cond_4

    const-string v0, "selectSimLogin, check app sign first please."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    const v0, 0x18f3a

    invoke-static {v0}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "commandid"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "simno"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "randomsso"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetSmsCode(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setConnectUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "connectUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "connectSmsPort"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "commandid"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    return-void
.end method

.method public setDefaultUI(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDefaultUI = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    return-void
.end method

.method public startGetSmsCode(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    return-void
.end method
