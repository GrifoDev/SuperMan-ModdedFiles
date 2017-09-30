.class public Lcom/sec/android/app/sysscope/service/SysScopeService;
.super Landroid/app/Service;


# static fields
.field public static final a:Landroid/net/Uri;

.field private static i:Ljava/lang/String;

.field private static j:Lcom/sec/android/app/sysscope/engine/j;

.field private static k:Z


# instance fields
.field private volatile b:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

.field private final c:Ljava/util/HashMap;

.field private volatile d:Lcom/sec/android/app/sysscope/service/l;

.field private volatile e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:Ljava/lang/Thread;

.field private l:I

.field private m:Z

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    const-string v0, "content://com.verizon.security/ROOT_STATUS"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->m:Z

    new-instance v0, Lcom/sec/android/app/sysscope/service/i;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/i;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->n:Ljava/lang/Runnable;

    new-instance v0, Lcom/sec/android/app/sysscope/service/j;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/j;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->o:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;)Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->b:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(II)V

    return-void
.end method

.method private declared-synchronized a(II)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->o:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "param"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->o:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput p1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/service/SysScopeService;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/sec/android/app/sysscope/service/SysScopeService;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sysscope/service/SysScopeService;->saveResultInfoToFile(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    return p0
.end method

.method static synthetic b(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->getStoreResult()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/sec/android/app/sysscope/service/SysScopeService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Lcom/sec/android/app/sysscope/engine/j;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->j:Lcom/sec/android/app/sysscope/engine/j;

    return-object v0
.end method

.method static synthetic d(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:I

    return v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private e()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->c:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic f(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static f()V
    .locals 3

    :try_start_0
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ril.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sale Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    const-string v0, "SysScopeService"

    const-string v1, "readSaleCode : exception"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic g(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/service/SysScopeService;->e()I

    move-result v0

    return v0
.end method

.method private native getStoreResult()Ljava/lang/String;
.end method

.method static synthetic h(Lcom/sec/android/app/sysscope/service/SysScopeService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->m:Z

    return v0
.end method

.method static synthetic i(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/sec/android/app/sysscope/service/SysScopeService;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic k(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->g:I

    return v0
.end method

.method static synthetic l(Lcom/sec/android/app/sysscope/service/SysScopeService;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->l:I

    return v0
.end method

.method private native saveResultInfoToFile(Ljava/lang/String;II)V
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "SysScopeService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Lcom/sec/android/app/sysscope/service/l;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->b:Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;

    new-instance v0, Lcom/sec/android/app/sysscope/service/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sysscope/service/l;-><init>(Lcom/sec/android/app/sysscope/service/SysScopeService;Lcom/sec/android/app/sysscope/service/i;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Lcom/sec/android/app/sysscope/service/l;

    iput-object p0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->f:I

    invoke-static {}, Lcom/sec/android/app/sysscope/service/SysScopeService;->f()V

    const-string v0, "VZW"

    sget-object v1, Lcom/sec/android/app/sysscope/service/SysScopeService;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->m:Z

    :cond_0
    const-string v0, "SysScopeService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->h:Ljava/lang/Thread;

    const-string v0, "SysScopeService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->j:Lcom/sec/android/app/sysscope/engine/j;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/j;->b()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    const/4 v4, 0x1

    const-string v0, "SysScopeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartCommand() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/i;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->g:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->l:I

    if-eqz p1, :cond_0

    const-string v0, "period_scan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "SysScopeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "periodic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->d:Lcom/sec/android/app/sysscope/service/l;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/l;->a()I

    :cond_0
    sget-boolean v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/android/app/sysscope/engine/j;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->j:Lcom/sec/android/app/sysscope/engine/j;

    sget-object v0, Lcom/sec/android/app/sysscope/service/SysScopeService;->j:Lcom/sec/android/app/sysscope/engine/j;

    iget-boolean v1, p0, Lcom/sec/android/app/sysscope/service/SysScopeService;->m:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sysscope/engine/j;->b(Z)V

    sput-boolean v4, Lcom/sec/android/app/sysscope/service/SysScopeService;->k:Z

    :cond_1
    return v4
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
