.class public Lcom/absolute/android/persistservice/ABTPackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ABTPackageDeleteObserver.java"


# instance fields
.field finished:Z

.field result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getFinished()Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPackageDeleteObserver;->finished:Z

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/absolute/android/persistservice/ABTPackageDeleteObserver;->result:I

    return v0
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 19
    const-string/jumbo v0, "Absolute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ABTPackageDeleteObserver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " returnCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    monitor-enter p0

    .line 21
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ABTPackageDeleteObserver;->finished:Z

    .line 22
    iput p2, p0, Lcom/absolute/android/persistservice/ABTPackageDeleteObserver;->result:I

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 18
    return-void

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
