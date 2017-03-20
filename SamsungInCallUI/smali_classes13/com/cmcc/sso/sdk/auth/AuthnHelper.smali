.class public Lcom/cmcc/sso/sdk/auth/AuthnHelper;
.super Ljava/lang/Object;
.source "AuthnHelper.java"


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

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    .line 40
    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    .line 49
    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    .line 59
    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    .line 61
    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 63
    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    .line 1047
    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;

    invoke-direct {v0, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$1;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    iput-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    .line 73
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/cmcc/sso/sdk/util/ServiceUtils;

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cmcc/sso/sdk/util/ServiceUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/cmcc/sso/sdk/util/ServiceUtils;->startService()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method static synthetic access$0(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    return-void
.end method

.method static synthetic access$1(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mPassId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$3(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Lcom/cmcc/sso/service/ISsoService;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    return-void
.end method

.method static synthetic access$4(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/ISsoService;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    return-object v0
.end method

.method static synthetic access$5(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)Lcom/cmcc/sso/service/IPCCallback;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    return-object v0
.end method

.method private callbackToApp(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "jsonobj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 1107
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1110
    iput-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1113
    :cond_0
    iput-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 1116
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->debug(Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    invoke-interface {v0, p1}, Lcom/cmcc/sso/sdk/auth/TokenListener;->onGetTokenComplete(Lorg/json/JSONObject;)V

    .line 1121
    :cond_1
    return-void
.end method

.method private procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "appkey"    # Ljava/lang/String;
    .param p4, "commandId"    # I

    .prologue
    .line 913
    const-string v0, "commandid"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 919
    iput-object p2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    .line 922
    const-string v0, "commandid"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 923
    const-string v0, "nextcommandid"

    invoke-virtual {p1, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 924
    const-string v0, "appkey"

    invoke-virtual {p1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v0, "packagename"

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v0, "istest"

    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 927
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

    .line 930
    const-string v0, "appid"

    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    return-void
.end method

.method private requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    .locals 5
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "callback"    # Lcom/cmcc/sso/service/IPCCallback;

    .prologue
    const/4 v4, 0x1

    .line 964
    sget-object v2, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 966
    const-string v2, "no ssoservice exist."

    invoke-static {v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 968
    new-instance v2, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;

    invoke-direct {v2, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    .line 975
    invoke-virtual {v2}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$3;->start()V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    const-string v2, "sdkVersion"

    const-string v3, "ANDIDMP-ANDROIDV2.2.0_SDK"

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    if-eqz v2, :cond_2

    .line 987
    :try_start_0
    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIService:Lcom/cmcc/sso/service/ISsoService;

    invoke-interface {v2, p1, p2}, Lcom/cmcc/sso/service/ISsoService;->callback(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 989
    :catch_0
    move-exception v0

    .line 991
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 996
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v2, "ServiceConnection, cmcc-sso-sdk.jar version[ANDIDMP-ANDROIDV2.2.0_SDK]."

    invoke-static {v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 998
    new-instance v2, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;

    invoke-direct {v2, p0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$4;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 1027
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1028
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.cmcc.sso.Action.SsoService"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    sget-object v2, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mLatestSvcPkgName:Ljava/lang/String;

    const-string v3, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1034
    const-string v2, "bind latest version service failed."

    invoke-static {v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 1036
    sget-object v2, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCurrentAppPkgName:Ljava/lang/String;

    const-string v3, "com.cmcc.sso.service.SsoService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1041
    const-string v2, "bind current app service failed."

    invoke-static {v2}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 1042
    const v2, 0x18e71

    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method private startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "loginType"    # Ljava/lang/String;
    .param p5, "isGetSipPwd"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    const v2, 0x18f3b

    .line 197
    const-string v1, "startGetToken start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 199
    if-nez p6, :cond_0

    .line 201
    const-string v1, "startGetToken, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 205
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    :cond_1
    const-string v1, "startGetToken, appid or appkey is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 210
    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 217
    :cond_3
    const-string v1, "startGetToken, appid or appkey contains only space."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 218
    invoke-static {v2}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 222
    :cond_4
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_5

    .line 224
    const-string v1, "startGetToken running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 225
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 229
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 231
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "default"

    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 233
    :cond_6
    const-string p4, "gba,wap,datasms,mannal"

    .line 236
    :cond_7
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 238
    const-string v1, "logintype"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v1, "istest"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsTest:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 240
    const-string v1, "issipapp"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "showuname"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 246
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto/16 :goto_0
.end method

.method private startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "authnType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "isGetSipPwd"    # Ljava/lang/String;
    .param p7, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    const v3, 0x18f3b

    .line 293
    const-string v1, "startGetTokenByCondition start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 295
    if-nez p7, :cond_0

    .line 297
    const-string v1, "startGetTokenByCondition, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 301
    :cond_0
    iput-object p7, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 303
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    :cond_1
    const-string v1, "startGetTokenByCondition, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 306
    invoke-static {v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 312
    :cond_3
    const-string v1, "startGetTokenByCondition, input param contains only white space char."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 313
    invoke-static {v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 317
    :cond_4
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_5

    .line 319
    const-string v1, "startGetTokenByCondition running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->error(Ljava/lang/String;)V

    .line 320
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 324
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 326
    packed-switch p3, :pswitch_data_0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startGetTokenByCondition, authnType is ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 346
    invoke-static {v3}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto/16 :goto_0

    .line 330
    :pswitch_0
    const/4 p3, 0x4

    .line 350
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 352
    const-string v1, "username"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "showuname"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "issipapp"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "password"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 359
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto/16 :goto_0

    .line 335
    .end local v0    # "values":Landroid/os/Bundle;
    :pswitch_1
    const/4 p3, 0x5

    .line 336
    goto :goto_1

    .line 340
    :pswitch_2
    const/4 p3, 0x6

    .line 341
    goto :goto_1

    .line 326
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private tryNativeMail()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 84
    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;

    invoke-direct {v0, p0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;-><init>(Lcom/cmcc/sso/sdk/auth/AuthnHelper;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 130
    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    return-void
.end method


# virtual methods
.method public changeAccount(Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 370
    const-string v1, "changAccount start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 372
    if-nez p2, :cond_0

    .line 374
    const-string v1, "changAccount, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 417
    :goto_0
    return-void

    .line 378
    :cond_0
    iput-object p2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 380
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_1

    .line 382
    const-string v1, "changAccount running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 383
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 394
    :cond_1
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v1, :cond_2

    .line 396
    const-string v1, "changAccount, checkappsign failed."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 397
    const v1, 0x18f3a

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 401
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    const-string v1, "changAccount, appid or username is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 406
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 410
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 411
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "commandid"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 414
    const-string v1, "appid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public changePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "newPassword"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 850
    const-string v1, "changePassword start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 852
    if-nez p6, :cond_0

    .line 854
    const-string v1, "changePassword, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 885
    :goto_0
    return-void

    .line 858
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 860
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 862
    :cond_1
    const-string v1, "changePassword, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 863
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 867
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 869
    const-string v1, "changePassword running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 870
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 874
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 876
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 877
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 878
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v1, "newpassword"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const/16 v1, 0xc

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 884
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public checkSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "validCode"    # Ljava/lang/String;
    .param p5, "busiType"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 547
    const-string v1, "checkSmsCode start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 549
    if-nez p6, :cond_0

    .line 551
    const-string v1, "checkSmsCode, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 582
    :goto_0
    return-void

    .line 555
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 557
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 559
    :cond_1
    const-string v1, "checkSmsCode, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 560
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 564
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 566
    const-string v1, "checkSmsCode running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 567
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 571
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 573
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 574
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 575
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v1, "busitype"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v1, "validcode"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const/16 v1, 0x11

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 581
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public cleanSSO(Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 468
    const-string v1, "cleanSSO start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 470
    if-nez p1, :cond_0

    .line 472
    const-string v1, "changAccount, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 475
    :cond_0
    iput-object p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 484
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v1, :cond_1

    .line 486
    const-string v1, "cleanSSO, check app sign first please."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 487
    const v1, 0x18f3a

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    .line 498
    :goto_0
    return-void

    .line 491
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "commandid"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 493
    const-string v1, "appid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "passid"

    iget-object v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mPassId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 7
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "loginType"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 171
    const-string v0, "getAccessToken start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 172
    const-string v5, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    .line 173
    return-void
.end method

.method public getAccessTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 8
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "authnType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 266
    const-string v0, "getAccessTokenByCondition start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 267
    const-string v6, "1"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    .line 268
    return-void
.end method

.method public getAccountList(Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 2
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 428
    const-string v1, "getAccountList start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 430
    if-nez p3, :cond_0

    .line 432
    const-string v1, "getAccountList, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 459
    :goto_0
    return-void

    .line 436
    :cond_0
    iput-object p3, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 438
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 440
    :cond_1
    const-string v1, "getAccountList, appid or appkey is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 441
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 447
    const-string v1, "getAccountList running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 448
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 452
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 454
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 456
    .local v0, "values":Landroid/os/Bundle;
    const/4 v1, 0x7

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 458
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public getAppPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 7
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "loginType"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 191
    const-string v0, "getAppPassword start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 192
    const-string v5, "2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    .line 193
    return-void
.end method

.method public getAppPasswordByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 8
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "authnType"    # I
    .param p4, "username"    # Ljava/lang/String;
    .param p5, "content"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 287
    const-string v0, "getAppPasswordByCondition start."

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 288
    const-string v6, "2"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetTokenByCondition(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V

    .line 289
    return-void
.end method

.method public getSmsCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 2
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "busiType"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 510
    const-string v1, "getSmsCode start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 512
    if-nez p5, :cond_0

    .line 514
    const-string v1, "getSmsCode, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 517
    :cond_0
    iput-object p5, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 519
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 521
    :cond_1
    const-string v1, "getSmsCode, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 522
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    .line 533
    :goto_0
    return-void

    .line 526
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 527
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v1, "busitype"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const/16 v1, 0xd

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 532
    invoke-virtual {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetSmsCode(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public registerForRandom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "randomCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 703
    const-string v1, "registerUser start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 705
    if-nez p6, :cond_0

    .line 707
    const-string v1, "registerUser, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 738
    :goto_0
    return-void

    .line 711
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 713
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 715
    :cond_1
    const-string v1, "registerUser, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 716
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 720
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 722
    const-string v1, "registerUser running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 723
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 727
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 731
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    const/16 v1, 0x12

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 737
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public registerUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "validCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 654
    const-string v1, "registerUser start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 656
    if-nez p6, :cond_0

    .line 658
    const-string v1, "registerUser, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 689
    :goto_0
    return-void

    .line 662
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 664
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 666
    :cond_1
    const-string v1, "registerUser, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 667
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 671
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 673
    const-string v1, "registerUser running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 674
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 678
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/16 v1, 0xa

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "validCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 752
    const-string v1, "resetPassword start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 754
    if-nez p6, :cond_0

    .line 756
    const-string v1, "resetPassword, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 787
    :goto_0
    return-void

    .line 760
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 762
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 764
    :cond_1
    const-string v1, "resetPassword, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 765
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 769
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 771
    const-string v1, "resetPassword running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 772
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 776
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 778
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 779
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 780
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/16 v1, 0xb

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 786
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public resetPwdForRandom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 3
    .param p1, "appid"    # Ljava/lang/String;
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "phoneNo"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "randomCode"    # Ljava/lang/String;
    .param p6, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 801
    const-string v1, "resetPwdForRandom start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 803
    if-nez p6, :cond_0

    .line 805
    const-string v1, "resetPwdForRandom, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 836
    :goto_0
    return-void

    .line 809
    :cond_0
    iput-object p6, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 813
    :cond_1
    const-string v1, "resetPwdForRandom, input param is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 814
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 818
    :cond_2
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    if-eqz v1, :cond_3

    .line 820
    const-string v1, "resetPwdForRandom running."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 821
    const v1, 0x18f3c

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 825
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isRunning:Z

    .line 827
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "isdefault"

    iget-boolean v2, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 829
    const-string v1, "username"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v1, "password"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    const-string v1, "validcode"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const/16 v1, 0x13

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->procCheckApp(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;I)V

    .line 835
    iget-object v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mCallback:Lcom/cmcc/sso/service/IPCCallback;

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    goto :goto_0
.end method

.method public selectSimLogin(IJLcom/cmcc/sso/sdk/auth/TokenListener;)V
    .locals 4
    .param p1, "simno"    # I
    .param p2, "random"    # J
    .param p4, "listener"    # Lcom/cmcc/sso/sdk/auth/TokenListener;

    .prologue
    .line 593
    const-string v1, "selectSimLogin start."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 595
    if-nez p4, :cond_0

    .line 597
    const-string v1, "selectSimLogin, listener is null."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 630
    :goto_0
    return-void

    .line 601
    :cond_0
    iput-object p4, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mListener:Lcom/cmcc/sso/sdk/auth/TokenListener;

    .line 610
    const/4 v1, 0x1

    if-eq v1, p1, :cond_1

    const/4 v1, 0x2

    if-ne v1, p1, :cond_2

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-nez v1, :cond_3

    .line 612
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "selectSimLogin, simno is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 613
    const v1, 0x18f3b

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 617
    :cond_3
    iget-boolean v1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->isCheckAppSignOk:Z

    if-nez v1, :cond_4

    .line 619
    const-string v1, "selectSimLogin, check app sign first please."

    invoke-static {v1}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 620
    const v1, 0x18f3a

    invoke-static {v1}, Lcom/cmcc/sso/sdk/auth/AuthnResult;->getResult(I)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->callbackToApp(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 624
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "commandid"

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 626
    const-string v1, "simno"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 627
    const-string v1, "randomsso"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 629
    invoke-virtual {p0, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->startGetSmsCode(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setConnectUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "connectUrl"    # Ljava/lang/String;
    .param p2, "smsPort"    # Ljava/lang/String;

    .prologue
    .line 896
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 897
    .local v0, "values":Landroid/os/Bundle;
    const-string v1, "connectUrl"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    const-string v1, "connectSmsPort"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string v1, "commandid"

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    .line 901
    return-void
.end method

.method public setDefaultUI(Z)V
    .locals 2
    .param p1, "isDefaultUI"    # Z

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isDefaultUI = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cmcc/sso/sdk/util/LogUtil;->info(Ljava/lang/String;)V

    .line 152
    iput-boolean p1, p0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->mIsDefaultUI:Z

    .line 153
    return-void
.end method

.method public startGetSmsCode(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 639
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->requestService(Landroid/os/Bundle;Lcom/cmcc/sso/service/IPCCallback;)V

    .line 640
    return-void
.end method
