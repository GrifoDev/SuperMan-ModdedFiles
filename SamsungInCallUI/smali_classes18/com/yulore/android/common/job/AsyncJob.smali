.class public abstract Lcom/yulore/android/common/job/AsyncJob;
.super Ljava/lang/Object;
.source "AsyncJob.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final MAX_RETRY_NUMBER:I = 0x3


# instance fields
.field protected mExceptionMsg:Ljava/lang/String;

.field protected mRetryCount:I

.field protected mShowInfo:Ljava/lang/String;

.field private observer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yulore/android/common/job/AsyncJobListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    return-void
.end method


# virtual methods
.method public addListener(Lcom/yulore/android/common/job/AsyncJobListener;)V
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "YuloreIVRCommon"

    const-string v1, "attach reqListener is null"

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "YuloreIVRCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addListener reqListener="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yulore/android/common/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yulore/android/common/job/AsyncJob;->observer:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getExceptionMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mExceptionMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryCount()I
    .locals 1

    iget v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    return v0
.end method

.method public getShowInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mShowInfo:Ljava/lang/String;

    return-object v0
.end method

.method public needRetry()Z
    .locals 2

    iget v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x2328

    invoke-virtual {p0, v0, p0}, Lcom/yulore/android/common/job/AsyncJob;->notifyObserver(ILcom/yulore/android/common/job/AsyncJob;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObserver(ILcom/yulore/android/common/job/AsyncJob;)V
    .locals 3

    iget-object v1, p0, Lcom/yulore/android/common/job/AsyncJob;->observer:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/yulore/android/common/job/AsyncJob;->observer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yulore/android/common/job/AsyncJobListener;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/yulore/android/common/job/AsyncJobListener;->update(ILcom/yulore/android/common/job/AsyncJob;)V

    goto :goto_0

    :cond_1
    const-string v1, "YuloreIVRCommon"

    const-string v2, "notifyObserver AsyncJobListener is null"

    invoke-static {v1, v2}, Lcom/yulore/android/common/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExceptionMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncJob;->mExceptionMsg:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/yulore/android/common/job/AsyncJob;->mRetryCount:I

    return-void
.end method

.method public setShowInfo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yulore/android/common/job/AsyncJob;->mShowInfo:Ljava/lang/String;

    return-void
.end method
