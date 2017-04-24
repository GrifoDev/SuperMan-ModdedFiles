.class public Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "com.sec.spp.push.REQUEST_REGISTER"

.field private static final b:Ljava/lang/String; = "com.sec.spp.push.REQUEST_DEREGISTER"

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "EXTRA_PACKAGENAME"

.field private static final f:Ljava/lang/String; = "EXTRA_INTENTFILTER"

.field private static final g:Ljava/lang/String; = "EXTRA_STR"

.field private static final h:Ljava/lang/String; = "EXTRA_RESULT_CODE"

.field private static final i:Ljava/lang/String; = "EXTRA_STR_ACTION"

.field private static final j:I = 0x64

.field private static final k:I = 0xc8

.field private static final l:I = -0x2

.field private static final m:I = -0x3

.field private static final n:I = -0x4

.field private static final o:I = -0x5

.field private static final p:I = -0x6

.field private static final q:I = -0x7

.field private static final r:I = -0x8


# instance fields
.field private s:Landroid/content/Context;

.field private t:Landroid/content/BroadcastReceiver;

.field private u:Ljava/lang/String;

.field private v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

.field private w:Z

.field private x:Z

.field private y:Lcom/sec/spp/push/dlc/api/IDlcService;

.field private z:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.sec.spp.push"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c:Ljava/lang/String;

    const-string v0, "com.sec.spp.push.dlc.writer.WriterService"

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->x:Z

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->z:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".REGISTER_FILTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-void
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Lcom/sec/spp/push/dlc/api/IDlcService;)Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 0

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->e()V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->c:Ljava/lang/String;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->z:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    const-string v0, "DLCBinder"

    const-string v1, "bind"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Lcom/samsung/context/sdk/samsunganalytics/a/a;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->v:Lcom/samsung/context/sdk/samsunganalytics/a/a;

    return-object v0
.end method

.method static synthetic d(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DLCBinder"

    const-string v1, "unbind"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->z:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$2;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a$2;-><init>(Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;)V

    iput-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->t:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->a()V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->x:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.spp.push.REQUEST_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "EXTRA_PACKAGENAME"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXTRA_INTENTFILTER"

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->x:Z

    const-string v0, "DLCBinder"

    const-string v1, "send register Request"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "send register Request:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "DLCBinder"

    const-string v1, "already send register request"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->w:Z

    return v0
.end method

.method public d()Lcom/sec/spp/push/dlc/api/IDlcService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/a/g/a/a;->y:Lcom/sec/spp/push/dlc/api/IDlcService;

    return-object v0
.end method
