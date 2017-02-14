.class public Lcom/android/internal/util/ProgressReporter;
.super Ljava/lang/Object;
.source "ProgressReporter.java"


# static fields
.field private static final STATE_FINISHED:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_STARTED:I = 0x1


# instance fields
.field private mExtras:Landroid/os/Bundle;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mId:I

.field private final mListeners:Landroid/os/RemoteCallbackList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/os/IProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mSegmentRange:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iput v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const/16 v0, 0x64

    filled-new-array {v1, v0}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    iput p1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    return-void
.end method

.method private notifyFinished(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private notifyProgress(IILandroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private notifyStarted(ILandroid/os/Bundle;)V
    .locals 3

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/IProgressListener;

    invoke-interface {v2, p1, p2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addListener(Landroid/os/IProgressListener;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :pswitch_1
    :try_start_1
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onStarted(ILandroid/os/Bundle;)V

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v3, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-interface {p1, v1, v2, v3}, Landroid/os/IProgressListener;->onProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    :try_start_2
    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IProgressListener;->onFinished(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public endSegment([I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iput-object p1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finish()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyFinished(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getProgress()I
    .locals 1

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    return v0
.end method

.method getSegmentRange()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    return-object v0
.end method

.method public setProgress(I)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public setProgress(IILjava/lang/CharSequence;)V
    .locals 4

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must be started to change progress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public setProgress(ILjava/lang/CharSequence;)V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/util/ProgressReporter;->setProgress(IILjava/lang/CharSequence;)V

    return-void
.end method

.method public start()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/android/internal/util/ProgressReporter;->mState:I

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/util/ProgressReporter;->notifyStarted(ILandroid/os/Bundle;)V

    iget v0, p0, Lcom/android/internal/util/ProgressReporter;->mId:I

    iget v1, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mExtras:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/util/ProgressReporter;->notifyProgress(IILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startSegment(I)[I
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/android/internal/util/ProgressReporter;->mProgress:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    mul-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x64

    const/4 v3, 0x1

    aput v2, v1, v3

    iput-object v1, p0, Lcom/android/internal/util/ProgressReporter;->mSegmentRange:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
