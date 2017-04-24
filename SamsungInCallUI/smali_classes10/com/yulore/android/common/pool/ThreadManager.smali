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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yulore/android/common/pool/ThreadManager$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/yulore/android/common/pool/ThreadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yulore/android/common/pool/ThreadManager;
    .locals 1

    sget-object v0, Lcom/yulore/android/common/pool/ThreadManager$SingtonProxyClass;->instance:Lcom/yulore/android/common/pool/ThreadManager;

    return-object v0
.end method


# virtual methods
.method public getDownloadPool()Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;
    .locals 8

    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

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

    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x3

    const/4 v3, 0x4

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mImageDownloadPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

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

    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mLongPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

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

    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_1

    const-class v7, Lcom/yulore/android/common/pool/ThreadManager;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    if-nez v0, :cond_0

    new-instance v1, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-wide/16 v4, 0x5

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;-><init>(IIJLcom/yulore/android/common/pool/ThreadManager$1;)V

    iput-object v1, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    :cond_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/yulore/android/common/pool/ThreadManager;->mShortPool:Lcom/yulore/android/common/pool/ThreadManager$ThreadPoolProxy;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
