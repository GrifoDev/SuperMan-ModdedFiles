.class public Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final APPID:Ljava/lang/String; = "00500101"

.field private static final APPKEY:Ljava/lang/String; = "094AA86EEB086191"

.field private static final LOG_TAG:Ljava/lang/String; = "RichScreenApp : RichScreenLoginBootCompletedReceiver"

.field private static LoginString:Ljava/lang/String; = null

.field private static final MAX:I = 0x3

.field private static final SOURCEID:Ljava/lang/String; = "005001"

.field private static authnHelper:Lcom/cmcc/sso/sdk/auth/AuthnHelper; = null

.field private static bDuringLoginServer:Z = false

.field private static bInitSuccess:Z = false

.field private static bLoginSuccess:Z = false

.field private static bbTokenWaitUsed:Z = false

.field private static changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity; = null

.field private static final initCachSize:I = 0x8

.field private static initResult:Lcom/cmdm/control/util/client/ResultEntity;

.field private static isSIMNetConnected:Z

.field private static isWifiNetConnected:Z

.field private static loginResult:Lcom/cmdm/control/util/client/ResultEntity;

.field private static mContext:Landroid/content/Context;

.field public static mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;


# instance fields
.field private getTokenIntent:Landroid/content/Intent;

.field private mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isWifiNetConnected:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0

    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    return p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initCache(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0

    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->LoginString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->LoginString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)Lcom/android/incallui/richscreen/GetTokenService;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    return-object v0
.end method

.method static synthetic access$900()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0

    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method private initCache(Landroid/content/Context;)V
    .locals 2

    const-string v0, "initCache"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    invoke-direct {v0, p1}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmdm/control/util/PrintLog;->setLogOnOff(Z)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private isNetConnected()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNetConnected isSIMNetConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RichScreenApp : RichScreenLoginBootCompletedReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loginRichScreenServer(Ljava/lang/String;)V
    .locals 2

    const-string v0, "========= loginRichScreenServer ========="

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getInstance()Lcom/android/incallui/richscreen/RichCallScreenUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getGetTokenService()Lcom/android/incallui/richscreen/GetTokenService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private registerConnectivityReceiver(Landroid/content/Context;)V
    .locals 2

    const-string v0, "registerConnectivityReceiver"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private sentNetworkChange()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$1;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public checkNetWork(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "context null"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " activeNetworkInfo : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v2, v0, :cond_1

    sput-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_1
    sput-boolean v2, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultHost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " defaultPort:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sput-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    move v0, v1

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "rich_call_screen_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "onReceive"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    sput-object p1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "onReceive : Intent.ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const-string v0, "context null"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->registerConnectivityReceiver(Landroid/content/Context;)V

    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initCache(Landroid/content/Context;)V

    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "onReceive : TelephonyIntents.ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    if-nez p1, :cond_5

    const-string v0, "context null"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->sentNetworkChange()V

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "onReceive : ConnectivityManager.CONNECTIVITY_ACTION"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    if-nez p1, :cond_7

    const-string v0, "context null"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->sentNetworkChange()V

    invoke-virtual {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-nez v0, :cond_8

    sput-boolean v3, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->startGetToken(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "richcallscreen.action.login_richscreenserver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    const-string v0, "TOKEN"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive mToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    sput-boolean v3, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginRichScreenServer(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startGetToken(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bbTokenWaitUsed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " bLoginSuccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GetTokenService.bDuringGetToken : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/richscreen/GetTokenService;->bDuringGetToken:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bDuringLoginServer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bbTokenWaitUsed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bbTokenWaitUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isNetConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->bDuringGetToken:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bbTokenWaitUsed:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    return-void
.end method
