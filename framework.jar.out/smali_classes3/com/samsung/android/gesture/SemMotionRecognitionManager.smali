.class public Lcom/samsung/android/gesture/SemMotionRecognitionManager;
.super Ljava/lang/Object;
.source "SemMotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;,
        Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "com.samsung.android.gesture.MOTION_RECOGNITION_EVENT"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_ALL:I = 0x172405

.field public static final MOTION_CALL_POSE:I = 0x40000

.field public static final MOTION_DIRECT_CALLING:I = 0x400

.field public static final MOTION_FLAT:I = 0x2000

.field public static final MOTION_NUM:I = 0x15

.field public static final MOTION_OVERTURN:I = 0x1

.field public static final MOTION_OVERTURN_LOW_POWER:I = 0x20000

.field public static final MOTION_PALM_SWIPE:I = 0x400000

.field public static final MOTION_PALM_TOUCH:I = 0x200000

.field public static final MOTION_SCREEN_UP_STEADY:I = 0x10000

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_SMART_ALERT:I = 0x4

.field public static final MOTION_SMART_RELAY:I = 0x100000

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field private mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSContextService:Lcom/samsung/android/hardware/context/ISemContextService;

.field private mSSPEnabled:Z

.field private motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Lcom/samsung/android/gesture/IMotionRecognitionService;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x0

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    .line 349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerwithSSP:Ljava/util/ArrayList;

    .line 754
    new-instance v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$1;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 375
    const-string/jumbo v2, "scontext"

    .line 374
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/hardware/context/ISemContextService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/context/ISemContextService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    .line 377
    const-string/jumbo v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSContextService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iput-object p1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    .line 379
    new-instance v2, Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 380
    iput v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 381
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    if-eqz v2, :cond_1

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextService:Lcom/samsung/android/hardware/context/ISemContextService;

    invoke-interface {v2}, Lcom/samsung/android/hardware/context/ISemContextService;->getMotionRecognitionService()Landroid/os/IBinder;

    move-result-object v1

    .line 384
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    const-string/jumbo v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    .end local v1    # "service":Landroid/os/IBinder;
    :goto_0
    const-string/jumbo v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iput v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 398
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 371
    :cond_0
    :goto_1
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "MotionRecognitionManager"

    const-string/jumbo v3, "RemoteException in motionService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    const-string/jumbo v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    .line 388
    const-string/jumbo v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "motionService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    throw v2

    .line 392
    :cond_1
    const-string/jumbo v2, "motion_recognition"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 391
    invoke-static {v2}, Lcom/samsung/android/gesture/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/gesture/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    goto :goto_0

    .line 400
    :catch_1
    move-exception v0

    .line 401
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MotionRecognitionManager"

    const-string/jumbo v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 728
    const-string/jumbo v3, "ro.debug_level"

    const-string/jumbo v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 729
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 731
    .local v0, "debugLevel":I
    const-string/jumbo v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    const-string/jumbo v3, " "

    return-object v3

    .line 736
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 741
    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_1

    .line 742
    const-string/jumbo v3, " "

    return-object v3

    .line 737
    :catch_0
    move-exception v1

    .line 738
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, " "

    return-object v3

    .line 743
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_1
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4948

    if-ne v0, v3, :cond_3

    .line 744
    :cond_2
    return-object p0

    .line 746
    :cond_3
    const-string/jumbo v3, " "

    return-object v3
.end method

.method public static getMotionVersion()I
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .locals 2
    .param p0, "motion_sensor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 704
    if-eq p0, v0, :cond_0

    .line 705
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 706
    :cond_1
    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    .line 707
    const/16 v1, 0x8

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAvailable(I)Z
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v2, :cond_0

    return v1

    .line 802
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 815
    const/4 v1, 0x0

    .line 818
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 809
    .restart local v1    # "ret":Z
    :sswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2, p1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->isAvailable(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "ret":Z
    goto :goto_0

    .line 810
    .local v1, "ret":Z
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MotionRecognitionManager"

    const-string/jumbo v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 802
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_0
        0x400 -> :sswitch_0
        0x200000 -> :sswitch_0
        0x400000 -> :sswitch_0
    .end sparse-switch
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 412
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V

    .line 411
    return-void
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V
    .locals 14
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 426
    if-eqz p1, :cond_6

    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-eqz v10, :cond_6

    .line 427
    iget-object v11, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v11

    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :try_start_0
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 430
    .local v8, "size":I
    const/4 v2, 0x0

    .line 431
    .local v2, "bregisterd":Z
    const/4 v4, 0x0

    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .local v4, "i":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 432
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 433
    .local v5, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v10

    if-ne v10, p1, :cond_0

    .line 434
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "strlistener":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    and-int v10, v10, p3

    if-eqz v10, :cond_1

    .line 436
    const-string/jumbo v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  .registerListener : fail. already registered / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    const/4 v2, 0x1

    .line 431
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 439
    .restart local v9    # "strlistener":Ljava/lang/String;
    :cond_1
    move-object v6, v5

    .line 440
    .local v6, "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    const-string/jumbo v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  .registerListener : already registered but need to update motion events / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 427
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v5    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_2
    monitor-exit v11

    throw v10

    .line 444
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_2
    if-eqz v2, :cond_3

    monitor-exit v11

    return-void

    .line 445
    :cond_3
    if-eqz v6, :cond_a

    .line 446
    :try_start_1
    invoke-virtual {v6}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    or-int p3, p3, v10

    .line 447
    const/4 v6, 0x0

    .line 448
    .local v6, "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    .line 451
    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .local v7, "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :goto_3
    if-nez v7, :cond_9

    .line 452
    :try_start_2
    new-instance v6, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/gesture/SemMotionRecognitionManager;Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 455
    .end local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .local v6, "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :goto_4
    :try_start_3
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    and-int/lit8 v10, p3, 0x4

    if-eqz v10, :cond_4

    .line 458
    :try_start_4
    iget-boolean v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    if-eqz v10, :cond_8

    .line 459
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v10, :cond_7

    iget v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    if-nez v10, :cond_7

    .line 460
    const-string/jumbo v10, "MotionRecognitionManager"

    const-string/jumbo v12, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v12, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v13, 0x5

    invoke-virtual {v10, v12, v13}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 465
    :goto_5
    iget v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 466
    and-int/lit8 p3, p3, -0x5

    .line 477
    :cond_4
    :goto_6
    if-eqz p3, :cond_5

    .line 478
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 485
    :cond_5
    :goto_7
    :try_start_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 486
    .restart local v9    # "strlistener":Ljava/lang/String;
    const-string/jumbo v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "  .registerListener : success. listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", motion_events="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v11

    .line 424
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_6
    return-void

    .line 463
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :cond_7
    :try_start_6
    const-string/jumbo v10, "MotionRecognitionManager"

    const-string/jumbo v12, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 480
    :catch_0
    move-exception v3

    .line 481
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string/jumbo v10, "MotionRecognitionManager"

    const-string/jumbo v12, "RemoteException in registerListener : "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_7

    .line 469
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_8
    :try_start_8
    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v10}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v10

    iput-boolean v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 473
    :goto_8
    :try_start_9
    const-string/jumbo v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "SSP disabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 470
    :catch_1
    move-exception v3

    .line 471
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string/jumbo v10, "MotionRecognitionManager"

    const-string/jumbo v12, "RemoteException in getSSPstatus: "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_8

    .line 427
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_2

    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_9
    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_4

    .end local v6    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_a
    move-object v7, v6

    .restart local v7    # "mrlistener":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_3
.end method

.method public registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;ILandroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 500
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;IILandroid/os/Handler;)V

    .line 499
    return-void
.end method

.method public resetMotionEngine()I
    .locals 3

    .prologue
    .line 689
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v1, :cond_0

    .line 690
    const/4 v1, -0x1

    return v1

    .line 692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v1}, Lcom/samsung/android/gesture/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 693
    :catch_0
    move-exception v0

    .line 694
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MotionRecognitionManager"

    const-string/jumbo v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    const/4 v1, 0x0

    return v1
.end method

.method public setMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "status"    # I

    .prologue
    .line 616
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 8
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v0, :cond_0

    .line 672
    return-void

    .line 674
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    :goto_0
    const-string/jumbo v0, "MotionRecognitionManager"

    const-string/jumbo v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void

    .line 675
    :catch_0
    move-exception v7

    .line 676
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "MotionRecognitionManager"

    const-string/jumbo v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSmartMotionAngle(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "status"    # I

    .prologue
    .line 645
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v4, :cond_0

    .line 646
    return-void

    .line 647
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 648
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 649
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 650
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 651
    .local v2, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 653
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v5

    .line 657
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v4, "MotionRecognitionManager"

    const-string/jumbo v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 647
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 649
    .restart local v1    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v3    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v2    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_2
    :try_start_3
    const-string/jumbo v4, "MotionRecognitionManager"

    const-string/jumbo v6, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    .line 644
    return-void
.end method

.method public setTestSensor()Z
    .locals 4

    .prologue
    .line 825
    const/4 v1, 0x0

    .line 828
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/gesture/IMotionRecognitionService;->setTestSensor()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 834
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 829
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "MotionRecognitionManager"

    const-string/jumbo v3, "RemoteException in setTestSensor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V
    .locals 11
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;

    .prologue
    .line 545
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v7, :cond_0

    .line 546
    return-void

    .line 547
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 548
    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 550
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 551
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 552
    .local v3, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 553
    .local v4, "listener_name":Ljava/lang/String;
    const-string/jumbo v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "@ member "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "listener_name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 557
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 558
    .restart local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v7

    if-ne v7, p1, :cond_6

    .line 559
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    const/4 v0, 0x0

    .line 562
    .local v0, "bdisable":Z
    :try_start_1
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_3

    .line 563
    iget-boolean v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    if-eqz v7, :cond_5

    .line 564
    iget v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 565
    iget v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    if-gtz v7, :cond_2

    .line 566
    const-string/jumbo v7, "MotionRecognitionManager"

    const-string/jumbo v9, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v7, 0x0

    iput v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    .line 568
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v9, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v10, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 570
    :cond_2
    const-string/jumbo v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unregisterListener - mMovementCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mMovementCnt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_3
    :goto_2
    invoke-virtual {v3}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, -0x5

    if-eqz v7, :cond_4

    if-nez v0, :cond_4

    .line 583
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 592
    .end local v0    # "bdisable":Z
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_4
    :goto_3
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "strlistener":Ljava/lang/String;
    const-string/jumbo v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  .unregisterListener : / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v8

    .line 544
    return-void

    .line 573
    .end local v6    # "strlistener":Ljava/lang/String;
    .restart local v0    # "bdisable":Z
    .restart local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_5
    :try_start_3
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v7}, Lcom/samsung/android/gesture/IMotionRecognitionService;->getSSPstatus()Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    :goto_4
    :try_start_4
    const-string/jumbo v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SSP disabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->mSSPEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v7, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/gesture/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_2

    .line 574
    :catch_0
    move-exception v1

    .line 575
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "MotionRecognitionManager"

    const-string/jumbo v9, "RemoteException in getSSPstatus: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 585
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 586
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v7, "MotionRecognitionManager"

    const-string/jumbo v9, "RemoteException in unregisterListener: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 547
    .end local v0    # "bdisable":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v5    # "size":I
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 556
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .restart local v5    # "size":I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 513
    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->motionService:Lcom/samsung/android/gesture/IMotionRecognitionService;

    if-nez v5, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 517
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 518
    .local v3, "size":I
    const/4 v2, 0x0

    .line 519
    .local v2, "motionevents":I
    const/4 v1, 0x0

    .line 520
    .local v1, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    const/4 v0, 0x0

    .end local v1    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 521
    iget-object v5, p0, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;

    .line 522
    .local v1, "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/gesture/SemMotionEventListener;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 523
    invoke-virtual {v1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    not-int v7, p2

    and-int v2, v5, v7

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, "strlistener":Ljava/lang/String;
    const-string/jumbo v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",  motionevents = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    .end local v1    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "strlistener":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->unregisterListener(Lcom/samsung/android/gesture/SemMotionEventListener;)V

    .line 531
    if-eqz v2, :cond_2

    .line 532
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/gesture/SemMotionRecognitionManager;->registerListener(Lcom/samsung/android/gesture/SemMotionEventListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v6

    .line 512
    return-void

    .line 520
    .restart local v1    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 516
    .end local v0    # "i":I
    .end local v1    # "l":Lcom/samsung/android/gesture/SemMotionRecognitionManager$MRListenerDelegate;
    .end local v2    # "motionevents":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public useMotionAlways(Lcom/samsung/android/gesture/SemMotionEventListener;Z)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/gesture/SemMotionEventListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 604
    return-void
.end method
