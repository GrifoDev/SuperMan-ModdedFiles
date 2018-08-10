.class public Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;
.super Ljava/lang/Object;
.source "FlashlightControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/FlashlightController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field protected static final FLASHLIGHT_VALUE:[I


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mCameraId:Ljava/lang/String;

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCfmsService:Landroid/os/CustomFrequencyManager;

.field private final mContext:Landroid/content/Context;

.field protected mFlashLightDebugLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFlashlightBrightnessObserver:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;

.field private mFlashlightEnabled:Z

.field private mFlashlightLevel:I

.field private mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTorchAvailable:Z

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightLevel:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Landroid/hardware/camera2/CameraManager$TorchCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightLevel:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->convertToFlashlightLevel(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->getCameraId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->makeTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchAvailabilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchModeChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "FlashlightController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->DEBUG:Z

    const/16 v0, 0x3e9

    const/16 v1, 0x3ea

    const/16 v2, 0x3ec

    const/16 v3, 0x3ee

    const/16 v4, 0x3f1

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightBrightnessObserver:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCfmsService:Landroid/os/CustomFrequencyManager;

    new-instance v0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightBrightnessObserver:Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$FlashlightBrightnessObserver;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureHandler()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->tryInitCamera()V

    return-void
.end method

.method private cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private convertToFlashlightLevel(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private dispatchAvailabilityChanged(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchError()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    return-void
.end method

.method private dispatchListeners(IZ)V
    .locals 6

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    if-eqz v3, :cond_3

    if-nez p1, :cond_1

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightError()V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_2

    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_2
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    :try_start_1
    invoke-interface {v3, p2}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v5

    return-void
.end method

.method private dispatchModeChanged(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchListeners(IZ)V

    return-void
.end method

.method private declared-synchronized ensureHandler()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "FlashlightController"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v2, v3, v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v7, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v9
.end method

.method private makeTime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const-string/jumbo v0, "%02d:%02d:%02d.%03d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCalendar:Ljava/util/Calendar;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->tryInitCamera()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightAvailabilityChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;->onFlashlightChanged(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public addListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->tryInitCamera()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "FlashlightController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mCameraId="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mFlashlightEnabled="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->isEnabled()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  mTorchAvailable="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFlashlightLevel()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightLevel:I

    return v0
.end method

.method public hasFlashlight()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.camera.flash"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->updateTorchCallback()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCameraManagerReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V

    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mListeners:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->cleanUpListenersLocked(Lcom/android/systemui/statusbar/policy/FlashlightController$FlashlightListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setFlashlight(Z)V
    .locals 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    if-eq v2, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightLevel:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->setFlashlightLevel(IZ)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTorch at : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->makeTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cameraID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " enabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashLightDebugLogs:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchModeChanged(Z)V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->dispatchError()V

    :cond_3
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "Couldn\'t set torch mode"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mFlashlightEnabled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setFlashlightLevel(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCfmsService:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v1, "CLOCK_SET_TORCH_LIGHT"

    sget-object v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    aget v2, v2, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/CustomFrequencyManager;->sendCommandToSSRM(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "Flashlight_brightness_level"

    sget-object v2, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->FLASHLIGHT_VALUE:[I

    aget v2, v2, p1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method public tryInitCamera()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateTorchCallback()V
    .locals 6

    const/4 v5, 0x0

    const-string/jumbo v2, "FlashlightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTorchCallback for mCameraId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->getCameraId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    const-string/jumbo v2, "FlashlightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTorchCallback mCameraId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->ensureHandler()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    const-string/jumbo v2, "FlashlightController"

    const-string/jumbo v3, "updateTorchCallback Couldn\'t initialize."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    const-string/jumbo v2, "FlashlightController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateTorchCallback mCameraId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/FlashlightControllerImpl;->mCameraId:Ljava/lang/String;

    const-string/jumbo v3, "FlashlightController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateTorchCallback mCameraId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v2
.end method
