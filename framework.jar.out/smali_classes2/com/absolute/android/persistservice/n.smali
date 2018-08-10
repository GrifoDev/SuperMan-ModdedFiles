.class Lcom/absolute/android/persistservice/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/l;

.field private b:Ljava/util/Hashtable;

.field private c:Lcom/absolute/android/persistservice/o;


# direct methods
.method protected constructor <init>(Lcom/absolute/android/persistservice/l;)V
    .locals 1

    iput-object p1, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    const-string/jumbo v0, "RunningServicesWorkerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/n;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5

    move-object v0, p0

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

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
    iget-object v3, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v3, v3, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

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

.method protected declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized a(Ljava/lang/String;I)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/absolute/android/persistservice/o;->removeMessages(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->a:Lcom/absolute/android/persistservice/l;

    iget-object v1, v1, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/v;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Starting running services monitoring check for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", with interval: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " secs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/absolute/android/persistservice/o;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/o;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected b(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/absolute/android/persistservice/n;->b:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    move-object v0, p0

    monitor-enter p0

    :try_start_0
    new-instance v2, Lcom/absolute/android/persistservice/o;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/absolute/android/persistservice/o;-><init>(Lcom/absolute/android/persistservice/n;Lcom/absolute/android/persistservice/m;)V

    iput-object v2, p0, Lcom/absolute/android/persistservice/n;->c:Lcom/absolute/android/persistservice/o;

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
