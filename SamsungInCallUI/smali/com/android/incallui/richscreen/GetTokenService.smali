.class public Lcom/android/incallui/richscreen/GetTokenService;
.super Landroid/app/Service;


# static fields
.field private static final APPID:Ljava/lang/String; = "00500101"

.field private static final APPKEY:Ljava/lang/String; = "094AA86EEB086191"

.field private static final DBG:Z

.field public static final LOGIN_RICH_SCREEN_SERVER:Ljava/lang/String; = "richcallscreen.action.login_richscreenserver"

.field private static final LOG_TAG:Ljava/lang/String; = "GetTokenService"

.field private static final MAX:I = 0x3

.field private static final SOURCEID:Ljava/lang/String; = "005001"

.field public static bDuringGetToken:Z

.field public static bTokenWaitUsed:Z

.field private static mContext:Landroid/content/Context;

.field public static tryLoginRichScreenServerCount:I


# instance fields
.field private authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->DBG:Z

    sput-boolean v2, Lcom/android/incallui/richscreen/GetTokenService;->bDuringGetToken:Z

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/richscreen/GetTokenService;->tryLoginRichScreenServerCount:I

    sput-boolean v2, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/richscreen/GetTokenService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/richscreen/GetTokenService;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/GetTokenService;->parseResponseFromSSO(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/GetTokenService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "GetTokenService"

    invoke-static {v0, p1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private parseResponseFromSSO(Lorg/json/JSONObject;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "========= parseResponseFromSSO ========== json = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, " json == null "

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "resultCode"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const v1, 0x18f39

    if-ne v0, v1, :cond_2

    const-string v0, " CLIENT_CODE_AUTOLOGIN_FAILED "

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseResponseFromSSO: exception-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const v1, 0x18e70

    if-ne v0, v1, :cond_0

    :try_start_1
    const-string v0, "token"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "richcallscreen.action.login_richscreenserver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "TOKEN"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/incallui/richscreen/GetTokenService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public cleanCMCCSSO()V
    .locals 3

    const-string v0, "======== cleanCMCCSSO ==========="

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    new-instance v1, Lcom/android/incallui/richscreen/GetTokenService$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/GetTokenService$2;-><init>(Lcom/android/incallui/richscreen/GetTokenService;)V

    invoke-virtual {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->cleanSSO(Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanCMCCSSO: exception-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getToken(Landroid/content/Context;)V
    .locals 6

    const/4 v1, 0x0

    const-string v0, "========= getToken ========="

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    sput-boolean v1, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    invoke-direct {v0, p1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->setDefaultUI(Z)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->bDuringGetToken:Z

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/richscreen/GetTokenService;->authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper;

    const-string v1, "00500101"

    const-string v2, "094AA86EEB086191"

    const-string v3, ""

    const-string v4, "default"

    new-instance v5, Lcom/android/incallui/richscreen/GetTokenService$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/richscreen/GetTokenService$1;-><init>(Lcom/android/incallui/richscreen/GetTokenService;)V

    invoke-virtual/range {v0 .. v5}, Lcom/cmcc/sso/sdk/auth/AuthnHelper;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cmcc/sso/sdk/auth/TokenListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loginRichCallScreen: exception-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getInstance()Lcom/android/incallui/richscreen/RichCallScreenUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->setGetTokenService(Lcom/android/incallui/richscreen/GetTokenService;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const-string v0, "onStartCommand()"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/richscreen/GetTokenService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/incallui/richscreen/GetTokenService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/incallui/richscreen/GetTokenService;->getToken(Landroid/content/Context;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
