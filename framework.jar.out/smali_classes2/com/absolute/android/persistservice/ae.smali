.class public Lcom/absolute/android/persistservice/ae;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private a:Lcom/absolute/android/persistservice/l;

.field private b:Lcom/absolute/android/persistservice/v;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Lcom/absolute/android/persistence/IABTPing;

.field private g:Lcom/absolute/android/persistservice/ag;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/l;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PingWorkerThread_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    iput-object p1, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    iget-object v0, p1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    iput-object v0, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    iput-object p2, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    iput p4, p0, Lcom/absolute/android/persistservice/ae;->d:I

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ae;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistence/IABTPing;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-eqz v3, :cond_0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v4, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ae;)I
    .locals 1

    iget v0, p0, Lcom/absolute/android/persistservice/ae;->d:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 7

    invoke-direct {p0}, Lcom/absolute/android/persistservice/ae;->c()V

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v3}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-nez v3, :cond_0

    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to bind to IABTPing interface of application "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to register for death of recipient. Already dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    iget v4, p0, Lcom/absolute/android/persistservice/ae;->d:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v5}, Lcom/absolute/android/persistservice/ag;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ag;->removeMessages(I)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ag;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ABTPersistenceService Ping Thread got \'binderDied\' notification for application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/absolute/android/persistservice/ag;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ae;Lcom/absolute/android/persistservice/af;)V

    iput-object v2, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    if-nez v2, :cond_0

    const-string/jumbo v1, "false"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ping interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/absolute/android/persistservice/ae;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " secs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v1, "true"

    goto :goto_0
.end method
