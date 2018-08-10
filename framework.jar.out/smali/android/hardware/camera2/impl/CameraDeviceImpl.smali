.class public Landroid/hardware/camera2/impl/CameraDeviceImpl;
.super Landroid/hardware/camera2/CameraDevice;
.source "CameraDeviceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraDeviceImpl$1;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$2;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$3;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$4;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$5;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$6;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$7;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;,
        Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    }
.end annotation


# static fields
.field private static final NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final REQUEST_ID_NONE:I = -0x1


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private final mAppTargetSdkVersion:I

.field private final mCallOnActive:Ljava/lang/Runnable;

.field private final mCallOnBusy:Ljava/lang/Runnable;

.field private final mCallOnClosed:Ljava/lang/Runnable;

.field private final mCallOnDisconnected:Ljava/lang/Runnable;

.field private final mCallOnIdle:Ljava/lang/Runnable;

.field private final mCallOnOpened:Ljava/lang/Runnable;

.field private final mCallOnUnconfigured:Ljava/lang/Runnable;

.field private final mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

.field private final mCameraId:Ljava/lang/String;

.field private final mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

.field private final mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final mDeviceHandler:Landroid/os/Handler;

.field private final mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

.field private mIdle:Z

.field private mInError:Z

.field final mInterfaceLock:Ljava/lang/Object;

.field private mNextSessionId:I

.field private mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

.field private mRepeatingRequestId:I

.field private final mRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

.field private final mTotalPartialCount:I


# direct methods
.method static synthetic -get0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get10(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    return-object v0
.end method

.method static synthetic -get11(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return v0
.end method

.method static synthetic -get12(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    return-object v0
.end method

.method static synthetic -get13(Landroid/hardware/camera2/impl/CameraDeviceImpl;)I
    .locals 1

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    return v0
.end method

.method static synthetic -get2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get4(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get5(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraCaptureSessionCore;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    return-object v0
.end method

.method static synthetic -get6(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraDevice$StateCallback;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    return-object v0
.end method

.method static synthetic -get7(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    return-object v0
.end method

.method static synthetic -get9(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return v0
.end method

.method static synthetic -set0(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    return p1
.end method

.method static synthetic -set1(Landroid/hardware/camera2/impl/CameraDeviceImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    return p1
.end method

.method static synthetic -set2(Landroid/hardware/camera2/impl/CameraDeviceImpl;I)I
    .locals 0

    iput p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/hardware/camera2/impl/CameraDeviceImpl;)Z
    .locals 1

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->isClosed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/hardware/camera2/impl/CameraDeviceImpl;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/CameraCharacteristics;I)V
    .locals 9

    const/16 v8, 0x17

    const/4 v4, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice;-><init>()V

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->DEBUG:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    iput-boolean v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    new-instance v3, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    iput v6, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$5;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$6;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$7;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Null argument given"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iput p5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v0, 0x17

    const-string/jumbo v3, "CameraDevice-JV-%s"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v8, :cond_2

    invoke-virtual {v2, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    iput v7, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mTotalPartialCount:I

    goto :goto_0
.end method

.method private checkAndFireSequenceComplete()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/hardware/camera2/impl/CameraDeviceImpl$FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    const/16 v17, 0x0

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v20, "Camera closed while checking sequences"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v19

    return-void

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v10

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v12

    cmp-long v18, v10, v2

    if-gtz v18, :cond_2

    cmp-long v18, v12, v4

    if-gtz v18, :cond_2

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v19

    if-eqz v6, :cond_3

    if-eqz v17, :cond_4

    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    :cond_4
    if-eqz v17, :cond_0

    new-instance v16, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v6, v15}, Landroid/hardware/camera2/impl/CameraDeviceImpl$10;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;)V

    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    :cond_6
    return-void
.end method

.method private checkEarlyTriggerSequenceComplete(IJ)V
    .locals 8

    const/4 v7, 0x0

    const-wide/16 v4, -0x1

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_0
    if-eqz v0, :cond_2

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;

    invoke-direct {v2, p0, p1, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$9;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ILandroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;)V

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "did not register callback to request %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v4, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    invoke-direct {v4, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(IJ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkAndFireSequenceComplete()V

    goto :goto_1
.end method

.method static checkHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 3

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "No handler given, and current thread has no looper!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    return-object p0
.end method

.method static checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "TT;)",
            "Landroid/os/Handler;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    return-object v0

    :cond_0
    return-object p0
.end method

.method private checkIfCameraClosedOrInError()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "CameraDevice was already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v1, "The camera device has encountered a serious error"

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V
    .locals 11

    const/4 v7, 0x0

    if-eqz p1, :cond_5

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v9, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputFormats()[I

    move-result-object v2

    const/4 v5, 0x0

    array-length v9, v2

    move v8, v7

    :goto_0
    if-ge v8, v9, :cond_1

    aget v1, v2, v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v10

    if-ne v1, v10, :cond_0

    const/4 v5, 0x1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input format "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getInputSizes(I)[Landroid/util/Size;

    move-result-object v3

    array-length v8, v3

    :goto_1
    if-ge v7, v8, :cond_4

    aget-object v4, v3, v7

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v10

    if-ne v9, v10, :cond_3

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v10

    if-ne v9, v10, :cond_3

    const/4 v6, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    if-nez v6, :cond_5

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "input size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not valid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    return-void
.end method

.method private createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    const/4 v5, 0x1

    move/from16 v0, p5

    if-ne v0, v5, :cond_0

    const/16 v20, 0x1

    :goto_0
    if-eqz v20, :cond_1

    if-eqz p1, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Constrained high speed session doesn\'t support input configuration yet."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v5

    monitor-exit v22

    throw v5

    :cond_0
    const/16 v20, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->replaceSessionClose()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v10, 0x1

    const/16 v21, 0x0

    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz p1, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v5}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->getInputSurface()Landroid/view/Surface;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    :cond_3
    :goto_1
    const/4 v4, 0x0

    if-eqz v20, :cond_4

    :try_start_3
    new-instance v4, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iput v6, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p0

    invoke-direct/range {v4 .. v11}, Landroid/hardware/camera2/impl/CameraConstrainedHighSpeedCaptureSessionImpl;-><init>(ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;ZLandroid/hardware/camera2/CameraCharacteristics;)V

    :goto_2
    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    if-eqz v21, :cond_5

    throw v21

    :catch_0
    move-exception v19

    const/4 v10, 0x0

    move-object/from16 v21, v19

    const/4 v13, 0x0

    goto :goto_1

    :cond_4
    new-instance v4, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;

    move-object/from16 v0, p0

    iget v12, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object v11, v4

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p0

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Landroid/hardware/camera2/impl/CameraCaptureSessionImpl;-><init>(ILandroid/view/Surface;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;Landroid/hardware/camera2/impl/CameraDeviceImpl;Landroid/os/Handler;Z)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCurrentSession:Landroid/hardware/camera2/impl/CameraCaptureSessionCore;

    invoke-interface {v5}, Landroid/hardware/camera2/impl/CameraCaptureSessionCore;->getDeviceStateCallback()Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v22

    return-void
.end method

.method private getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object v0
.end method

.method private isClosed()Z
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V
    .locals 3

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            "Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkHandler(Landroid/os/Handler;Ljava/lang/Object;)Landroid/os/Handler;

    move-result-object p3

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Each request must have at least one Surface target"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/Surface;

    if-nez v12, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Null Surface targets are not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    if-eqz p4, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/camera2/CaptureRequest;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v2, 0x0

    array-length v3, v10

    :goto_0
    if-ge v2, v3, :cond_5

    aget-object v8, v10, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v8, v4}, Landroid/hardware/camera2/CaptureRequest;->convertSurfaceToStreamId(Landroid/util/SparseArray;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move/from16 v0, p4

    invoke-virtual {v2, v10, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->submitRequestList([Landroid/hardware/camera2/CaptureRequest;Z)Landroid/hardware/camera2/utils/SubmitInfo;

    move-result-object v11

    const/4 v2, 0x0

    array-length v3, v10

    :goto_1
    if-ge v2, v3, :cond_6

    aget-object v8, v10, v2

    invoke-virtual {v8}, Landroid/hardware/camera2/CaptureRequest;->recoverStreamIdToSurface()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    if-eqz p2, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v16

    new-instance v2, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mNextSessionId:I

    add-int/lit8 v7, v3, -0x1

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallbackHolder;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Ljava/util/List;Landroid/os/Handler;ZI)V

    move/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    if-eqz p4, :cond_a

    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getLastFrameNumber()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    :cond_8
    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnActive:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    invoke-virtual {v11}, Landroid/hardware/camera2/utils/SubmitInfo;->getRequestId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v14

    return v2

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRequestLastFrameNumbersList:Ljava/util/List;

    new-instance v3, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;

    move-object/from16 v0, p1

    invoke-direct {v3, v0, v11}, Landroid/hardware/camera2/impl/CameraDeviceImpl$RequestLastFrameNumbersHolder;-><init>(Ljava/util/List;Landroid/hardware/camera2/utils/SubmitInfo;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v14

    throw v2
.end method

.method private waitUntilIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Active repeating request ongoing"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->waitUntilIdle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CameraDevice "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " died unexpectedly"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    new-instance v0, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$11;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;)V

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public captureBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 3

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->disconnect()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnClosed:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public configureOutputs(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v3, v1}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v0, v4}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;I)Z

    return-void
.end method

.method public configureStreamsChecked(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;I)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct/range {p2 .. p2}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    if-eqz p1, :cond_1

    new-instance v15, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v16, "cannot configure an input stream without any output streams"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_1
    invoke-direct/range {p0 .. p1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkInputConfiguration(Landroid/hardware/camera2/params/InputConfiguration;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    new-instance v3, Ljava/util/HashSet;

    move-object/from16 v0, p2

    invoke-direct {v3, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v8, v15, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-virtual {v9}, Landroid/hardware/camera2/params/OutputConfiguration;->isDeferredConfiguration()Z

    move-result v15

    if-eqz v15, :cond_3

    :cond_2
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v9}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v15

    monitor-exit v16

    throw v15

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->stopRepeating()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->waitUntilIdle()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->beginConfigure()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/InputConfiguration;

    move-object/from16 v0, p1

    if-eq v0, v4, :cond_7

    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/InputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v15

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_7

    :cond_5
    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {v15}, Ljava/util/AbstractMap$SimpleEntry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getHeight()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/params/InputConfiguration;->getFormat()I

    move-result v19

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createInputStream(III)I

    move-result v11

    new-instance v15, Ljava/util/AbstractMap$SimpleEntry;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v15, v0, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredInput:Ljava/util/AbstractMap$SimpleEntry;

    :cond_7
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->deleteStream(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/util/SparseArray;->delete(I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v7

    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Stream configuration failed due to: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v14, :cond_d

    :try_start_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    const/4 v15, 0x0

    monitor-exit v16

    return v15

    :cond_8
    :try_start_5
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v15, v9}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createStream(Landroid/hardware/camera2/params/OutputConfiguration;)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v15, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v6

    :try_start_6
    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v15

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v15, v0, :cond_c

    new-instance v15, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "The camera is currently busy. You must wait until the previous operation completes."

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v15

    if-eqz v14, :cond_e

    :try_start_7
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    throw v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_a
    :try_start_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->endConfigure(I)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const/4 v14, 0x1

    if-eqz v14, :cond_b

    :try_start_9
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_6
    monitor-exit v16

    return v14

    :cond_b
    :try_start_a
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    :cond_c
    :try_start_b
    throw v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_d
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5
.end method

.method public createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->createDefaultRequest(I)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mAppTargetSdkVersion:I

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_0

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->overrideEnableZsl(Landroid/hardware/camera2/impl/CameraMetadataNative;Z)V

    :cond_1
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v2, 0x0

    const/4 v4, -0x1

    invoke-direct {v0, v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createConstrainedHighSpeedCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output surface list must not be null and the size must be no more than 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-gt v0, v3, :cond_0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->getCharacteristics()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {p1, v1, v6}, Landroid/hardware/camera2/utils/SurfaceUtils;->checkConstrainedHighSpeedSurfaces(Ljava/util/Collection;Landroid/util/Range;Landroid/hardware/camera2/params/StreamConfigurationMap;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/Surface;

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createConstrainedHighSpeedCaptureSessionByOutputConfigurations(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createCustomCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;ILandroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;I",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeCopy()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v1, v0, v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public createReprocessableCaptureSession(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/view/Surface;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method public createReprocessableCaptureSessionByConfigurations(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "inputConfig cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Output configurations cannot be null when creating a reprocessable capture session"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v0, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-direct {v0, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->createCaptureSessionInternal(Landroid/hardware/camera2/params/InputConfiguration;Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;I)V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/hardware/camera2/CameraDevice;->finalize()V

    throw v0
.end method

.method public finalizeOutputConfigs(Ljava/util/List;)V
    .locals 8
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

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "deferred config is null or empty"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v3, -0x1

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/OutputConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    :cond_2
    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Deferred config is not part of this session"

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "The final config for stream "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " must have at least 1 surface"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v3, v0}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->finalizeOutputConfigurations(ILandroid/hardware/camera2/params/OutputConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_6
    monitor-exit v5

    return-void
.end method

.method public flush()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v5, -0x1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnBusy:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mIdle:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnIdle:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->flush()J

    move-result-wide v0

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v2, v5, :cond_1

    iget v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    invoke-direct {p0, v2, v0, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getCallbacks()Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraDeviceImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method public prepare(ILandroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-gtz p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid maxCount given: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is not part of this session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, p1, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare2(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method public prepare(Landroid/view/Surface;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurfaces()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_1
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Surface is not part of this session"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->prepare(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v0, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->setParameters(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setRemoteDevice(Landroid/hardware/camera2/ICameraDeviceUser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit v3

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-direct {v2, p1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;-><init>(Landroid/hardware/camera2/ICameraDeviceUser;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-interface {p1}, Landroid/hardware/camera2/ICameraDeviceUser;->asBinder()Landroid/os/IBinder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnOpened:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnUnconfigured:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    :try_start_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mCallOnDisconnected:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const-string/jumbo v4, "The camera device has encountered a serious error"

    const/4 v5, 0x2

    invoke-direct {v2, v5, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setRemoteFailure(Landroid/os/ServiceSpecificException;)V
    .locals 7

    const/4 v1, 0x4

    const/4 v2, 0x1

    iget v4, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unexpected failure in opening camera device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/ServiceSpecificException;->errorCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/ServiceSpecificException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move v0, v1

    move v3, v2

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInError:Z

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mDeviceHandler:Landroid/os/Handler;

    new-instance v6, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;

    invoke-direct {v6, p0, v3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl$8;-><init>(Landroid/hardware/camera2/impl/CameraDeviceImpl;ZI)V

    invoke-virtual {v4, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    return-void

    :pswitch_1
    const/4 v1, 0x1

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v2, 0x0

    goto :goto_0

    :pswitch_5
    const/4 v1, 0x4

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "At least one request must be given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v0

    return v0
.end method

.method public setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p3, v1}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->submitCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraDeviceImpl$CaptureCallback;Landroid/os/Handler;Z)I

    move-result v1

    return v1
.end method

.method public setSessionListener(Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mSessionStateCallback:Landroid/hardware/camera2/impl/CameraDeviceImpl$StateCallbackKK;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public stopRepeating()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v6, -0x1

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkIfCameraClosedOrInError()V

    iget v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    if-eq v4, v6, :cond_0

    iget v1, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I

    const/4 v4, -0x1

    iput v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRepeatingRequestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->cancelRequest(I)J
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v2

    :try_start_2
    invoke-direct {p0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraDeviceImpl;->checkEarlyTriggerSequenceComplete(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    monitor-exit v5

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public tearDown(Landroid/view/Surface;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Surface is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v2}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    :cond_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Surface is not part of this session"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraDeviceImpl;->mRemoteDevice:Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/impl/ICameraDeviceUserWrapper;->tearDown(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method
