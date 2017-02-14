.class public Lcom/yulore/android/common/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yulore/android/common/download/DownloadManager$Request;
    }
.end annotation


# static fields
.field private static instance:Lcom/yulore/android/common/download/DownloadManager;


# instance fields
.field private ctx:Landroid/content/Context;

.field private downloadBiz:Lcom/yulore/android/common/download/DownloadBiz;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yulore/android/common/download/DownloadManager;->ctx:Landroid/content/Context;

    new-instance v0, Lcom/yulore/android/common/download/DownloadBiz;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yulore/android/common/download/DownloadBiz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yulore/android/common/download/DownloadManager;->downloadBiz:Lcom/yulore/android/common/download/DownloadBiz;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/yulore/android/common/download/DownloadManager;
    .locals 2

    sget-object v0, Lcom/yulore/android/common/download/DownloadManager;->instance:Lcom/yulore/android/common/download/DownloadManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/yulore/android/common/download/DownloadManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/yulore/android/common/download/DownloadManager;->instance:Lcom/yulore/android/common/download/DownloadManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/yulore/android/common/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/yulore/android/common/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yulore/android/common/download/DownloadManager;->instance:Lcom/yulore/android/common/download/DownloadManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/yulore/android/common/download/DownloadManager;->instance:Lcom/yulore/android/common/download/DownloadManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancel(J)V
    .locals 0

    return-void
.end method

.method public enqueue(Lcom/yulore/android/common/download/DownloadManager$Request;)Z
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager;->downloadBiz:Lcom/yulore/android/common/download/DownloadBiz;

    invoke-virtual {v0, p1}, Lcom/yulore/android/common/download/DownloadBiz;->download(Lcom/yulore/android/common/download/DownloadManager$Request;)Z

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/download/DownloadManager;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public pause(J)V
    .locals 0

    return-void
.end method

.method public restart(J)V
    .locals 0

    return-void
.end method
