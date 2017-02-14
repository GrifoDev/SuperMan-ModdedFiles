.class Lcom/absolute/android/persistservice/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ae;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ae;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ae;Lcom/absolute/android/persistservice/af;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ae;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x3

    monitor-enter p0

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->a(Lcom/absolute/android/persistservice/ae;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->b(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistence/IABTPing;

    move-result-object v0

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->ping()Z

    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/l;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    const/4 v0, 0x3

    :try_start_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->e(Lcom/absolute/android/persistservice/ae;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ae;->d(Lcom/absolute/android/persistservice/ae;)Lcom/absolute/android/persistservice/l;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ag;->a:Lcom/absolute/android/persistservice/ae;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ae;->c(Lcom/absolute/android/persistservice/ae;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/l;->a(Ljava/lang/String;Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
