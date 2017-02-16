.class public Lcom/yulore/android/common/pool/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/android/common/pool/ThreadManager$SingtonProxyClass;,
        Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    }
.end annotation


# instance fields
.field private mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

.field private mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

.field private mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

.field private mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/android/common/pool/ThreadManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/yulore/android/common/pool/ThreadManager$1;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/yulore/android/common/pool/ThreadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yulore/android/common/pool/ThreadManager;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/yulore/android/common/pool/ThreadManager$SingtonProxyClass;->instance:Lcom/yulore/android/common/pool/ThreadManager;

    return-object v0
.end method


# virtual methods
.method public getDownloadPool()Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 31
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 32
    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 34
    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    .line 36
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getImageDownloadPool()Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 71
    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 73
    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    .line 75
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLongPool()Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 45
    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 47
    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    .line 49
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getShortPool()Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    .locals 8

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    .line 58
    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    .line 60
    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    .line 62
    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
