.class public Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lcom/sec/android/app/sysscope/job/c;


# instance fields
.field a:Lcom/sec/android/app/sysscope/engine/o;

.field b:Ljava/util/List;

.field private c:[Ljava/lang/String;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sysscope/job/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/job/c;-><init>(Z)V

    sput-object v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->e:Lcom/sec/android/app/sysscope/job/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "rpscanner"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "adbscanner"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "partition_checker"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "su_scanner"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "kernel_checker"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->c:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->d:Landroid/content/Context;

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->c:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sec/android/app/sysscope/engine/e;->a([Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    sget-object v0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->e:Lcom/sec/android/app/sysscope/job/c;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/c;->a()V

    return-void
.end method

.method public a(Lcom/sec/android/app/sysscope/engine/o;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    return-void
.end method

.method public b()V
    .locals 10

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    const/16 v1, 0x16

    const-string v3, "no jobs loaded"

    invoke-interface {v0, v1, v3}, Lcom/sec/android/app/sysscope/engine/o;->b(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    const-string v1, "no jobs loaded"

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/sysscope/engine/o;->a(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/sysscope/engine/o;->a(I)V

    :cond_2
    new-instance v5, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    invoke-direct {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;-><init>()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sysscope/engine/h;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/h;->b()I

    move-result v7

    const/4 v8, 0x2

    if-gt v7, v8, :cond_3

    invoke-interface {v4, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/engine/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Lcom/sec/android/app/sysscope/engine/o;->a(ILjava/lang/String;)V

    :cond_4
    sget-object v0, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    :try_start_0
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    add-int/lit8 v1, v1, 0x1

    if-eqz v0, :cond_5

    const-string v7, "result"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/sysscope/service/g;->a(I)Lcom/sec/android/app/sysscope/service/g;

    move-result-object v7

    sget-object v8, Lcom/sec/android/app/sysscope/service/g;->a:Lcom/sec/android/app/sysscope/service/g;

    if-eq v7, v8, :cond_5

    if-eqz v7, :cond_5

    const-string v8, "info"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sec/android/app/sysscope/service/g;->a(Ljava/lang/String;)V

    invoke-virtual {v5, v7}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a(Lcom/sec/android/app/sysscope/service/g;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    move-object v9, v0

    move v0, v1

    move-object v1, v9

    :try_start_2
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->c()V

    invoke-static {}, Lcom/sec/android/app/sysscope/engine/l;->a()Lcom/sec/android/app/sysscope/engine/l;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/app/sysscope/engine/l;->a(Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;)V

    invoke-virtual {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->a()I

    move-result v0

    const-string v1, "SysScopeDiagnosisManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SysDiagnosisManager > call storeResult"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->storeResult(I)I

    move-result v1

    const-string v4, "SysScopeDiagnosisManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SysDiagnosisManager > storeResult:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/sec/android/app/sysscope/engine/i;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sysscope/engine/SystemDiagnosisManager;->a:Lcom/sec/android/app/sysscope/engine/o;

    if-eq v0, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v5}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/sec/android/app/sysscope/engine/o;->a(ZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public native storeResult(I)I
.end method
