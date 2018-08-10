.class public final Landroid/app/UiAutomation;
.super Ljava/lang/Object;
.source "UiAutomation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UiAutomation$AccessibilityEventFilter;,
        Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;,
        Landroid/app/UiAutomation$OnAccessibilityEventListener;
    }
.end annotation


# static fields
.field private static final CONNECTION_ID_UNDEFINED:I = -0x1

.field private static final CONNECT_TIMEOUT_MILLIS:J = 0x1388L

.field private static final DEBUG:Z = false

.field public static final FLAG_DONT_SUPPRESS_ACCESSIBILITY_SERVICES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final ROTATION_FREEZE_0:I = 0x0

.field public static final ROTATION_FREEZE_180:I = 0x2

.field public static final ROTATION_FREEZE_270:I = 0x3

.field public static final ROTATION_FREEZE_90:I = 0x1

.field public static final ROTATION_FREEZE_CURRENT:I = -0x1

.field public static final ROTATION_UNFREEZE:I = -0x2


# instance fields
.field private final mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mConnectionId:I

.field private final mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I

.field private mIsConnecting:Z

.field private mIsDestroyed:Z

.field private mLastEventTimeMillis:J

.field private final mLock:Ljava/lang/Object;

.field private mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

.field private final mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

.field private mWaitingForEventDelivery:Z


# direct methods
.method static synthetic -get0(Landroid/app/UiAutomation;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/UiAutomation;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/UiAutomation;)Landroid/app/UiAutomation$OnAccessibilityEventListener;
    .locals 1

    iget-object v0, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/app/UiAutomation;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    return v0
.end method

.method static synthetic -set0(Landroid/app/UiAutomation;I)I
    .locals 0

    iput p1, p0, Landroid/app/UiAutomation;->mConnectionId:I

    return p1
.end method

.method static synthetic -set1(Landroid/app/UiAutomation;J)J
    .locals 1

    iput-wide p1, p0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    return-wide p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/app/UiAutomation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/app/IUiAutomationConnection;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Looper cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p2, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    new-instance v0, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;

    invoke-direct {v0, p0, p1}, Landroid/app/UiAutomation$IAccessibilityServiceClientImpl;-><init>(Landroid/app/UiAutomation;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    return-void
.end method

.method private static getDegreesForRotation(I)F
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/high16 v0, 0x43870000    # 270.0f

    return v0

    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    return v0

    :pswitch_2
    const/high16 v0, 0x42b40000    # 90.0f

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isConnectedLocked()Z
    .locals 2

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private throwIfConnectedLocked()V
    .locals 2

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private throwIfNotConnectedLocked()V
    .locals 2

    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "UiAutomation not connected!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public clearWindowAnimationFrameStats()V
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->clearWindowAnimationFrameStats()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error clearing window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public clearWindowContentFrameStats(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->clearWindowContentFrameStats(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error clearing window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public connect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/UiAutomation;->connect(I)V

    return-void
.end method

.method public connect(I)V
    .locals 12

    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfConnectedLocked()V

    iget-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    monitor-exit v9

    return-void

    :cond_0
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    :try_start_2
    iget-object v8, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    iget-object v9, p0, Landroid/app/UiAutomation;->mClient:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v8, v9, p1}, Landroid/app/IUiAutomationConnection;->connect(Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    iput p1, p0, Landroid/app/UiAutomation;->mFlags:I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v9, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v6

    :goto_0
    :try_start_4
    invoke-direct {p0}, Landroid/app/UiAutomation;->isConnectedLocked()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x0

    :try_start_5
    iput-boolean v8, p0, Landroid/app/UiAutomation;->mIsConnecting:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    :catch_0
    move-exception v3

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "Error while connecting UiAutomation"

    invoke-direct {v8, v9, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    :cond_1
    :try_start_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v6

    const-wide/16 v10, 0x1388

    sub-long v4, v10, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-gtz v8, :cond_2

    new-instance v8, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "Error while connecting UiAutomation"

    invoke-direct {v8, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v8

    const/4 v10, 0x0

    :try_start_7
    iput-boolean v10, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    throw v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v8

    monitor-exit v9

    throw v8

    :cond_2
    :try_start_8
    iget-object v8, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/UiAutomation;->disconnect()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return-void
.end method

.method public disconnect()V
    .locals 4

    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/app/UiAutomation;->mIsConnecting:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Cannot call disconnect() while connecting!"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    :try_start_2
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->disconnect()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Error while disconnecting UiAutomation"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public executeAndWaitForEvent(Ljava/lang/Runnable;Landroid/app/UiAutomation$AccessibilityEventFilter;J)Landroid/view/accessibility/AccessibilityEvent;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v14

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityEvent;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->getEventTime()J

    move-result-wide v14

    cmp-long v9, v14, v6

    if-ltz v9, :cond_0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Landroid/app/UiAutomation$AccessibilityEventFilter;->accept(Landroid/view/accessibility/AccessibilityEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v9, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v9, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit v14

    return-object v4

    :catchall_0
    move-exception v9

    monitor-exit v14

    throw v9

    :catchall_1
    move-exception v9

    :try_start_5
    monitor-exit v14

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14

    const/4 v15, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/app/UiAutomation;->mWaitingForEventDelivery:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v15}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    monitor-exit v14

    throw v9

    :catchall_3
    move-exception v9

    monitor-exit v14

    throw v9

    :cond_1
    :try_start_7
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_1

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v2, v14, v12

    sub-long v10, p3, v2

    const-wide/16 v14, 0x0

    cmp-long v9, v10, v14

    if-gtz v9, :cond_3

    new-instance v9, Ljava/util/concurrent/TimeoutException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Expected event not received within: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p3

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v14}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result v9

    if-eqz v9, :cond_4

    :try_start_9
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_4
    :goto_2
    :try_start_a
    monitor-exit v14

    goto/16 :goto_0

    :catchall_4
    move-exception v9

    monitor-exit v14

    throw v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_5
    move-exception v9

    monitor-exit v14

    throw v9

    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method public executeShellCommand(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 7

    iget-object v5, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v4, v1, v5

    const/4 v5, 0x1

    aget-object v3, v1, v5

    iget-object v5, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v5, p1, v3}, Landroid/app/IUiAutomationConnection;->executeShellCommand(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_0
    return-object v4

    :catchall_0
    move-exception v6

    monitor-exit v5

    throw v6

    :catch_0
    move-exception v2

    :try_start_2
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error executing shell command!"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    sget-object v5, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "Error executing shell command!"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_1
    move-exception v5

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
.end method

.method public findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    iget v2, p0, Landroid/app/UiAutomation;->mConnectionId:I

    sget-wide v4, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    const/4 v3, -0x2

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Landroid/view/accessibility/AccessibilityInteractionClient;->findFocus(IIJI)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionId()I
    .locals 2

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/app/UiAutomation;->mFlags:I

    return v0
.end method

.method public getRootInActiveWindow()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 3

    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getRootInActiveWindow(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public final getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while getting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v5
.end method

.method public getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1}, Landroid/app/IUiAutomationConnection;->getWindowAnimationFrameStats()Landroid/view/WindowAnimationFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error getting window animation frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->getWindowContentFrameStats(I)Landroid/view/WindowContentFrameStats;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error getting window content frame stats!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    iget v0, p0, Landroid/app/UiAutomation;->mConnectionId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityInteractionClient;->getWindows(I)Ljava/util/List;

    move-result-object v1

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error granting runtime permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public injectInputEvent(Landroid/view/InputEvent;Z)Z
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1, p2}, Landroid/app/IUiAutomationConnection;->injectInputEvent(Landroid/view/InputEvent;Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while injecting input event!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/UiAutomation;->mIsDestroyed:Z

    return v0
.end method

.method public final performGlobalAction(I)Z
    .locals 5

    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->performGlobalAction(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while calling performGlobalAction"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/IUiAutomationConnection;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error revoking runtime permission"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public setOnAccessibilityEventListener(Landroid/app/UiAutomation$OnAccessibilityEventListener;)V
    .locals 2

    iget-object v0, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/app/UiAutomation;->mOnAccessibilityEventListener:Landroid/app/UiAutomation$OnAccessibilityEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setRotation(I)Z
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid rotation."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :pswitch_0
    :try_start_1
    iget-object v1, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    invoke-interface {v1, p1}, Landroid/app/IUiAutomationConnection;->setRotation(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while setting rotation!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setRunAsMonkey(Z)V
    .locals 3

    iget-object v1, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->setUserIsMonkey(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :catch_0
    move-exception v0

    sget-object v1, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error while setting run as monkey!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 5

    iget-object v3, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityInteractionClient;->clearCache()V

    invoke-static {}, Landroid/view/accessibility/AccessibilityInteractionClient;->getInstance()Landroid/view/accessibility/AccessibilityInteractionClient;

    move-result-object v2

    iget v4, p0, Landroid/app/UiAutomation;->mConnectionId:I

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityInteractionClient;->getConnection(I)Landroid/accessibilityservice/IAccessibilityServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0, p1}, Landroid/accessibilityservice/IAccessibilityServiceConnection;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catch_0
    move-exception v1

    sget-object v2, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while setting AccessibilityServiceInfo"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public takeScreenshot()Landroid/graphics/Bitmap;
    .locals 14

    iget-object v11, p0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-direct {p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v11

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v1, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v2, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Invalid rotation: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    :catchall_0
    move-exception v12

    monitor-exit v11

    throw v12

    :pswitch_0
    int-to-float v9, v4

    int-to-float v8, v2

    :goto_0
    const/4 v7, 0x0

    :try_start_1
    iget-object v11, p0, Landroid/app/UiAutomation;->mUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    float-to-int v12, v9

    float-to-int v13, v8

    invoke-interface {v11, v12, v13}, Landroid/app/IUiAutomationConnection;->takeScreenshot(II)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    if-nez v7, :cond_0

    const/4 v11, 0x0

    return-object v11

    :pswitch_1
    int-to-float v9, v2

    int-to-float v8, v4

    goto :goto_0

    :pswitch_2
    int-to-float v9, v4

    int-to-float v8, v2

    goto :goto_0

    :pswitch_3
    int-to-float v9, v2

    int-to-float v8, v4

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v11, Landroid/app/UiAutomation;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v12, "Error while taking screnshot!"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v11, 0x0

    return-object v11

    :cond_0
    if-eqz v6, :cond_1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-static {v6}, Landroid/app/UiAutomation;->getDegreesForRotation(I)F

    move-result v11

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v11, v9

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    neg-float v12, v8

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    move-object v7, v10

    :cond_1
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public waitForIdle(JJ)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/app/UiAutomation;->throwIfNotConnectedLocked()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v11, v20, v22

    if-gtz v11, :cond_0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v6, v4, v16

    sub-long v12, p3, v6

    const-wide/16 v20, 0x0

    cmp-long v11, v12, v20

    if-gtz v11, :cond_1

    new-instance v11, Ljava/util/concurrent/TimeoutException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "No idle state with idle timeout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " within global timeout: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v11

    monitor-exit v18

    throw v11

    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/app/UiAutomation;->mLastEventTimeMillis:J

    move-wide/from16 v20, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v8, v4, v20

    sub-long v14, p1, v8

    const-wide/16 v20, 0x0

    cmp-long v11, v14, v20

    if-gtz v11, :cond_2

    monitor-exit v18

    return-void

    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/UiAutomation;->mLock:Ljava/lang/Object;

    invoke-virtual {v11, v14, v15}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v10

    goto :goto_0
.end method
