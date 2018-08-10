.class public Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;
.super Landroid/hardware/camera2/CameraCaptureSession;
.source "CameraCaptureSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraCaptureSessionCore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;,
        Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CameraCaptureSession"


# instance fields
.field private final mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private volatile mAborting:Z

.field private mClosed:Z

.field private final mConfigureSuccess:Z

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

.field private final mId:I

.field private final mIdString:Ljava/lang/String;

.field private final mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

.field private final mInput:Landroid/view/Surface;

.field private final mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/utils/TaskDrainer",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipUnconfigure:Z

.field private final mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final mStateHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/utils/TaskSingleDrainer;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    return v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->finishPendingSequence(I)V

    return-void
.end method

.method constructor <init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession;-><init>()V

    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    const-string/jumbo v0, "Session %d: "

    new-array v1, v6, [Ljava/lang/Object;

    iget v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    invoke-static {p4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateHandler:Landroid/os/Handler;

    invoke-direct {p0, v0, p3}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    const-string/jumbo v0, "deviceStateHandler must not be null"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    const-string/jumbo v0, "deviceImpl must not be null"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    new-instance v0, Landroid/hardware/camera2/utils/TaskDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;

    invoke-direct {v2, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$SequenceDrainListener;)V

    const-string/jumbo v3, "seq"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;

    invoke-direct {v2, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$IdleDrainListener;)V

    const-string/jumbo v3, "idle"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdleDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    new-instance v0, Landroid/hardware/camera2/utils/TaskSingleDrainer;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;

    invoke-direct {v2, p0, v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$AbortDrainListener;)V

    const-string/jumbo v3, "abort"

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/camera2/utils/TaskSingleDrainer;-><init>(Landroid/os/Handler;Landroid/hardware/camera2/utils/TaskDrainer$DrainListener;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    if-eqz p7, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    const-string/jumbo v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Failed to create capture session; configuration failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mConfigureSuccess:Z

    goto :goto_0
.end method

.method private addPendingSequence(I)I
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/utils/TaskDrainer;->taskStarted(Ljava/lang/Object;)V

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Session has been closed; further changes are illegal."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;
    .locals 9

    const/4 v8, 0x0

    new-instance v3, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;)V

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    new-instance v4, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    invoke-direct {v4, v3}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    new-instance v6, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    invoke-direct {v6, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    new-instance v2, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    invoke-direct {v2, v6, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    new-instance v1, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;

    const-class v7, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {v1, v2, v7}, Landroid/hardware/camera2/dispatch/DuckTypingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Ljava/lang/Class;)V

    new-instance v5, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;

    invoke-direct {v5, v1, v8, p0}, Landroid/hardware/camera2/dispatch/ArgumentReplacingDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;ILjava/lang/Object;)V

    new-instance v0, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/hardware/camera2/dispatch/Dispatchable;

    aput-object v5, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    invoke-direct {v0, v7}, Landroid/hardware/camera2/dispatch/BroadcastDispatcher;-><init>([Landroid/hardware/camera2/dispatch/Dispatchable;)V

    new-instance v7, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;

    invoke-direct {v7, v0}, Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    return-object v7
.end method

.method private createUserStateCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 3

    new-instance v1, Landroid/hardware/camera2/dispatch/InvokeDispatcher;

    invoke-direct {v1, p2}, Landroid/hardware/camera2/dispatch/InvokeDispatcher;-><init>(Ljava/lang/Object;)V

    new-instance v0, Landroid/hardware/camera2/dispatch/HandlerDispatcher;

    invoke-direct {v0, v1, p1}, Landroid/hardware/camera2/dispatch/HandlerDispatcher;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;Landroid/os/Handler;)V

    new-instance v2, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;

    invoke-direct {v2, v0}, Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;-><init>(Landroid/hardware/camera2/dispatch/Dispatchable;)V

    return-object v2
.end method

.method private finishPendingSequence(I)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/utils/TaskDrainer;->taskFinished(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CameraCaptureSession"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public abortCaptures()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CameraCaptureSession"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "abortCaptures - Session is already aborting; doing nothing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAbortDrainer:Landroid/hardware/camera2/utils/TaskSingleDrainer;

    invoke-virtual {v0}, Landroid/hardware/camera2/utils/TaskSingleDrainer;->taskStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v1, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public declared-synchronized capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "this capture session cannot handle reprocess requests"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result v0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "capture request was created for another session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Requests must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Requests must have at least one element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->isReprocessable()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "This capture session cannot handle reprocess requests"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->getReprocessableSessionId()I

    move-result v2

    iget v3, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mId:I

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Capture request was created for another session"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2
.end method

.method public close()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mClosed:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    iget-object v3, v2, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v3

    monitor-enter p0

    :try_start_5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSequenceDrainer:Landroid/hardware/camera2/utils/TaskDrainer;

    invoke-virtual {v2}, Landroid/hardware/camera2/utils/TaskDrainer;->beginDrain()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :catch_0
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "CameraCaptureSession"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mIdString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Exception while stopping repeating: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit p0

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_1
    move-exception v1

    :try_start_8
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mStateCallback:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    invoke-virtual {v2, p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    monitor-exit v3

    return-void

    :catchall_3
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/hardware/camera2/CameraCaptureSession;->finalize()V

    throw v0
.end method

.method public finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->finalizeOutputConfigs(Ljava/util/List;)V

    return-void
.end method

.method public getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    return-object v0
.end method

.method public getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 2

    move-object v0, p0

    new-instance v1, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;

    invoke-direct {v1, p0, p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-object v1
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    return-object v0
.end method

.method public isAborting()Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mAborting:Z

    return v0
.end method

.method public isReprocessable()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mInput:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(ILandroid/view/Surface;)V

    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->prepare(Landroid/view/Surface;)V

    return-void
.end method

.method public replaceSessionClose()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mSkipUnconfigure:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->close()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "requests must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "requests must have at least one element"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "repeating reprocess burst requests are not supported"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v2, p1, v3, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit p0

    return v2
.end method

.method public declared-synchronized setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->isReprocess()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "repeating reprocess requests are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    invoke-static {p3, p2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-direct {p0, p3, p2}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->createCaptureCallbackProxy(Landroid/os/Handler;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->addPendingSequence(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized stopRepeating()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->checkNotClosed()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;->mDeviceImpl:Landroid/hardware/camera2/impl/CameraDeviceImpl;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->tearDown(Landroid/view/Surface;)V

    return-void
.end method
