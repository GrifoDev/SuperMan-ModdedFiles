.class public Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static myService:Lcom/bst/spamcall/numbermark/b;

.field private static sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;


# instance fields
.field public checkserviceConnection:Landroid/content/ServiceConnection;

.field mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/a;

.field private mCall:Lcom/android/incallui/Call;

.field private mIsSearching:Z

.field private mIsincoming:Z

.field private mNum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    sput-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsincoming:Z

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsSearching:Z

    new-instance v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$1;-><init>(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr$2;-><init>(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)V

    iput-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/a;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/bst/spamcall/numbermark/b;)Lcom/bst/spamcall/numbermark/b;
    .locals 0

    sput-object p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsSearching:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/operator/chn/SpamCallServiceMgr;)Lcom/android/incallui/Call;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mCall:Lcom/android/incallui/Call;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->init()Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->init(Landroid/content/Context;)Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    goto :goto_0
.end method

.method static init()Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-direct {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times! sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static init(Landroid/content/Context;)Lcom/android/incallui/operator/chn/SpamCallServiceMgr;
    .locals 3

    sput-object p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-direct {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;-><init>()V

    sput-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    :goto_0
    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    monitor-exit v1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times! sInstance = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->sMe:Lcom/android/incallui/operator/chn/SpamCallServiceMgr;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public callIntent()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bst.spamcall.numbermark.IGetNumberMarkService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.bst.spamcall"

    const-string v3, "com.bst.spamcall.numbermark.GetNumInfoService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callIntent - intent :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    return-void
.end method

.method public doCheck(Lcom/android/incallui/Call;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mCall:Lcom/android/incallui/Call;

    :cond_0
    iput-object p2, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mNum:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsincoming:Z

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    sget-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->callIntent()V

    :cond_1
    sget-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsSearching:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsSearching:Z

    :try_start_0
    sget-object v1, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    iget-object v2, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mNum:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsincoming:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mBinderGetNumMarkListener:Lcom/bst/spamcall/numbermark/a;

    invoke-interface {v1, v2, v0, v3}, Lcom/bst/spamcall/numbermark/b;->a(Ljava/lang/String;ILcom/bst/spamcall/numbermark/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x11

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "occur RemoteException"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "occur SecurityException"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v0, "occur IllegalArgumentException"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "doCheck - myService is null or Emergency call: "

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isServiceConnected()Z
    .locals 1

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unbind()V
    .locals 2

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mIsSearching:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->myService:Lcom/bst/spamcall/numbermark/b;

    sget-object v0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->checkserviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "unbind IllegalArgumentException"

    invoke-static {v0}, Lcom/android/incallui/operator/chn/SpamCallServiceMgr;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
