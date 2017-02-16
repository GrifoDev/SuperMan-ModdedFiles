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

    .prologue
    .line 56
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

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    .line 58
    iput-object p1, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    .line 59
    iget-object v0, p1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    iput-object v0, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    .line 60
    iput-object p2, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    .line 62
    iput p4, p0, Lcom/absolute/android/persistservice/ae;->d:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ae;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistence/IABTPing;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-eqz v0, :cond_0

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    return-void

    .line 100
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    const-string/jumbo v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ae;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/absolute/android/persistservice/ae;->d:I

    return v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ae;->c()V

    .line 71
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-nez v0, :cond_0

    .line 88
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    .line 89
    monitor-exit p0

    .line 90
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/absolute/android/persistservice/ae;->b:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to bind to IABTPing interface of application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to register for death of recipient. Already dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 85
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    iget v2, p0, Lcom/absolute/android/persistservice/ae;->d:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected declared-synchronized b()V
    .locals 2

    .prologue
    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    if-nez v0, :cond_0

    .line 119
    :goto_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->f:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 122
    return-void

    .line 115
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 116
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

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

    .prologue
    .line 150
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

    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistservice/ae;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ae;->c:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    monitor-enter p0

    .line 134
    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ae;Lcom/absolute/android/persistservice/af;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ae;->g:Lcom/absolute/android/persistservice/ag;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 138
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 140
    return-void

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ae;->e:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "false"

    .line 168
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ping interval = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/absolute/android/persistservice/ae;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " secs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0
.end method
