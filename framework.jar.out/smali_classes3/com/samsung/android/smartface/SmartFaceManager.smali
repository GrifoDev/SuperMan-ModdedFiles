.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FEATURE_SMART_PAUSE:Ljava/lang/String; = "com.sec.android.smartface.smart_pause"

.field public static final FEATURE_SMART_ROTATION:Ljava/lang/String; = "com.sec.android.smartface.smart_rotation"

.field public static final FEATURE_SMART_SCROLL:Ljava/lang/String; = "com.sec.android.smartface.smart_scroll"

.field public static final FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final MSG_FACEINFO:I = 0x0

.field public static final MSG_REGISTERED:I = 0x1

.field public static final MSG_UNREGISTERED:I = 0x2

.field private static final NULL_VALUE:Ljava/lang/String; = ""

.field public static final PAGE_BOTTOM:Ljava/lang/String; = "1"

.field public static final PAGE_MIDDLE:Ljava/lang/String; = "0"

.field public static final PAGE_TOP:Ljava/lang/String; = "-1"

.field public static final PAUSE_THIS_CLIENT:Ljava/lang/String; = "paused-state"

.field public static final SERVICETYPE_HYBRID:I = 0x20

.field public static final SERVICETYPE_MOTION:I = 0x10

.field public static final SERVICETYPE_PAUSE:I = 0x2

.field public static final SERVICETYPE_ROTATION:I = 0x8

.field public static final SERVICETYPE_SCROLL:I = 0x1

.field public static final SERVICETYPE_STAY:I = 0x4

.field public static final SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final SMART_ROTATION_UI_ORIENTATION:Ljava/lang/String; = "smart-rotation-ui-orientation"

.field public static final SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final SMART_SCROLL_PAGE_STATUS:Ljava/lang/String; = "smart-scroll-page-status"

.field public static final SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final complete:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mCallbackData:I

.field private mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private mService:Lcom/samsung/android/smartface/ISmartFaceService;

.field private mSmartStayDelay:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/smartface/SmartFaceManager;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    return p1
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 152
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 153
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 154
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 155
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 156
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 158
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    .line 159
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    .line 162
    const-string/jumbo v1, "2950"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    .line 248
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    .line 249
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 252
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 253
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 247
    :goto_0
    return-void

    .line 254
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    .line 257
    :cond_1
    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .locals 5

    .prologue
    monitor-enter p0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 196
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    const-string/jumbo v3, "empty key for ping"

    const-string/jumbo v4, "empty value"

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-nez v1, :cond_1

    .line 205
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->startSmartFaceService()V

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForService()V

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    monitor-exit p0

    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 211
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/smartface/SmartFaceManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private startSmartFaceService()V
    .locals 4

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.smartface"

    const-string/jumbo v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 236
    return-void
.end method

.method private waitForCallback(I)J
    .locals 8
    .param p1, "wait_milli"    # I

    .prologue
    const-wide/16 v6, 0x3e8

    .line 578
    const-wide/16 v2, -0x1

    .line 581
    .local v2, "ret":J
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    int-to-long v4, p1

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    invoke-interface {v1, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    const-string/jumbo v1, "SmartFaceManager"

    const-string/jumbo v4, "No Callback!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :cond_0
    :goto_0
    return-wide v2

    .line 584
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private waitForService()V
    .locals 5

    .prologue
    .line 219
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_0
    const/4 v2, 0x3

    if-gt v0, v2, :cond_1

    .line 220
    const-string/jumbo v2, "samsung.smartfaceservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 222
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v2, :cond_0

    .line 223
    const-string/jumbo v2, "SmartFaceManager"

    const-string/jumbo v3, "Service connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-void

    .line 227
    :cond_0
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 228
    const-string/jumbo v2, "SmartFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Wait for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    mul-int/lit16 v4, v0, 0x12c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_1
    return-void

    .line 229
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized checkForSmartRotation(I)Z
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    monitor-enter p0

    .line 457
    :try_start_0
    const-string/jumbo v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkForSmartRotation S: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const/4 v1, 0x0

    .line 460
    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Smart Rotation Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 461
    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 463
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 465
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 467
    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$2;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 483
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 487
    :try_start_1
    const-string/jumbo v3, "smart-rotation-ui-orientation"

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;I)V

    .line 488
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 491
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 492
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 495
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 496
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 497
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 502
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 505
    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    .line 507
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 508
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 509
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 511
    const-string/jumbo v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkForSmartRotation E: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 512
    return v1

    .line 501
    :catchall_0
    move-exception v3

    .line 502
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 501
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized checkForSmartStay()Z
    .locals 6

    .prologue
    monitor-enter p0

    .line 390
    :try_start_0
    const-string/jumbo v3, "SmartFaceManager"

    const-string/jumbo v4, "checkForSmartStay S"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "Smart Stay Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 394
    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 396
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 398
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 400
    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$1;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 416
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    const-string/jumbo v3, "smart-stay-framecount-reset"

    const-string/jumbo v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->start(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 424
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v3, v3

    const v4, 0x3edc28f6    # 0.43f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 425
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v3, :cond_0

    const/4 v1, 0x1

    .line 428
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 429
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v3, v3

    const v4, 0x3ebd70a4    # 0.37f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/samsung/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 430
    iget v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 435
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 438
    invoke-virtual {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->stop()V

    .line 440
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 441
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 442
    invoke-virtual {p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 444
    const-string/jumbo v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkForSmartStay X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    .line 445
    return v1

    .line 434
    :catchall_0
    move-exception v3

    .line 435
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 434
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSupportedServices()I
    .locals 3

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 524
    :cond_0
    const/4 v1, 0x0

    .line 526
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-interface {v2}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 532
    :goto_0
    return v1

    .line 527
    :catch_0
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 529
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 344
    const-string/jumbo v0, "paused-state"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 342
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 354
    const-string/jumbo v0, "paused-state"

    const-string/jumbo v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 542
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 362
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 372
    :cond_0
    const-string/jumbo v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4
    .param p1, "service_type"    # I

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    .line 275
    :cond_0
    const/4 v1, 0x0

    .line 277
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v3, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 282
    .end local v1    # "ret":Z
    :goto_0
    return v1

    .line 278
    .restart local v1    # "ret":Z
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startAsync(I)V
    .locals 3
    .param p1, "service_type"    # I

    .prologue
    .line 294
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 297
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 312
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 307
    :cond_2
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAsync()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 327
    invoke-direct {p0}, Lcom/samsung/android/smartface/SmartFaceManager;->ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 330
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/smartface/SmartFaceManager;->mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 325
    :cond_2
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
