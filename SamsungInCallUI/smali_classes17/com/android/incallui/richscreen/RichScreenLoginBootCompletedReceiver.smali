.class public Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RichScreenLoginBootCompletedReceiver.java"


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

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    .line 35
    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 36
    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 37
    sput-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    .line 38
    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    .line 39
    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isWifiNetConnected:Z

    .line 40
    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    .line 41
    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    .line 52
    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$002(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0
    .param p0, "x0"    # Lcom/cmdm/control/util/client/ResultEntity;

    .prologue
    .line 32
    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->changeNetworkResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bInitSuccess:Z

    return p0
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initCache(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$402(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0
    .param p0, "x0"    # Lcom/cmdm/control/util/client/ResultEntity;

    .prologue
    .line 32
    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method static synthetic access$502(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    return p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 32
    sput-boolean p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    return p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->LoginString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 32
    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->LoginString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)Lcom/android/incallui/richscreen/GetTokenService;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    return-object v0
.end method

.method static synthetic access$900()Lcom/cmdm/control/util/client/ResultEntity;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object v0
.end method

.method static synthetic access$902(Lcom/cmdm/control/util/client/ResultEntity;)Lcom/cmdm/control/util/client/ResultEntity;
    .locals 0
    .param p0, "x0"    # Lcom/cmdm/control/util/client/ResultEntity;

    .prologue
    .line 32
    sput-object p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initResult:Lcom/cmdm/control/util/client/ResultEntity;

    return-object p0
.end method

.method private initCache(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    const-string v0, "initCache"

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 159
    new-instance v0, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    invoke-direct {v0, p1}, Lcom/cmdm/rcs/biz/RichScrnPersonBiz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    .line 160
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/cmdm/control/util/PrintLog;->setLogOnOff(Z)V

    .line 161
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$3;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 171
    return-void
.end method

.method private isNetConnected()Z
    .locals 2

    .prologue
    .line 173
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

    .line 174
    sget-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 217
    const-string v0, "RichScreenApp : RichScreenLoginBootCompletedReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method private loginRichScreenServer(Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 130
    const-string v0, "========= loginRichScreenServer ========="

    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 131
    invoke-static {}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getInstance()Lcom/android/incallui/richscreen/RichCallScreenUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/richscreen/RichCallScreenUtils;->getGetTokenService()Lcom/android/incallui/richscreen/GetTokenService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mGetTokenService:Lcom/android/incallui/richscreen/GetTokenService;

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$2;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 155
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method private registerConnectivityReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    const-string v1, "registerConnectivityReceiver"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    return-void
.end method

.method private sentNetworkChange()V
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver$1;-><init>(Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method


# virtual methods
.method public checkNetWork(Landroid/content/Context;)Z
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 180
    if-nez p1, :cond_0

    .line 181
    const-string v6, "context null"

    invoke-direct {p0, v6}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 207
    :goto_0
    return v5

    .line 184
    :cond_0
    const-string v7, "connectivity"

    .line 185
    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 187
    .local v1, "cwjManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 188
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " activeNetworkInfo : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 189
    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 192
    .local v4, "type":I
    if-ne v6, v4, :cond_1

    .line 194
    sput-boolean v5, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    :goto_1
    move v5, v6

    .line 202
    goto :goto_0

    .line 197
    :cond_1
    sput-boolean v6, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    .line 198
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "defaultHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 200
    .local v3, "defaultPort":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "defaultHost: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " defaultPort:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 204
    .end local v2    # "defaultHost":Ljava/lang/String;
    .end local v3    # "defaultPort":I
    .end local v4    # "type":I
    :cond_2
    sput-boolean v5, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isSIMNetConnected:Z

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 57
    const-string v1, "rich_call_screen_cmcc"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v1, "onReceive"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 60
    sput-object p1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 62
    const-string v1, "onReceive : Intent.ACTION_BOOT_COMPLETED"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 63
    if-nez p1, :cond_2

    .line 64
    const-string v1, "context null"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->registerConnectivityReceiver(Landroid/content/Context;)V

    .line 69
    sget-object v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->mRichScrnPersonBiz:Lcom/cmdm/rcs/biz/RichScrnPersonBiz;

    if-nez v1, :cond_3

    .line 70
    invoke-direct {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->initCache(Landroid/content/Context;)V

    .line 72
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 75
    const-string v1, "onReceive : TelephonyIntents.ACTION_ANY_DATA_CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 76
    if-nez p1, :cond_5

    .line 77
    const-string v1, "context null"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->sentNetworkChange()V

    goto :goto_0

    .line 81
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 82
    const-string v1, "onReceive : ConnectivityManager.CONNECTIVITY_ACTION"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 83
    if-nez p1, :cond_7

    .line 84
    const-string v1, "context null"

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->sentNetworkChange()V

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->checkNetWork(Landroid/content/Context;)Z

    .line 89
    invoke-direct {p0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->isNetConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 90
    sput-boolean v3, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bLoginSuccess:Z

    .line 92
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->startGetToken(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 93
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "richcallscreen.action.login_richscreenserver"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    .line 95
    const-string v1, "TOKEN"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "mToken":Ljava/lang/String;
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

    .line 97
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bDuringLoginServer:Z

    .line 98
    sput-boolean v3, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    .line 99
    invoke-direct {p0, v0}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->loginRichScreenServer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 101
    .end local v0    # "mToken":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public startGetToken(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-boolean v0, Lcom/android/incallui/richscreen/GetTokenService;->bTokenWaitUsed:Z

    sput-boolean v0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->bbTokenWaitUsed:Z

    .line 106
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

    .line 109
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

    .line 110
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/richscreen/GetTokenService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/richscreen/RichScreenLoginBootCompletedReceiver;->getTokenIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    :cond_1
    return-void
.end method
