.class public Lcom/android/incallui/accessory/AccessoryEventHandler;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_DOCK_STICKY_EVENT:Ljava/lang/String; = "com.samsung.intent.action.HMT_DOCK_STICKY_EVENT"

.field public static final CALLFORWARD_STATE_CHANGE:Ljava/lang/String; = "com.sec.android.sidesync.common.CALLFORWARD_STATE"

.field public static final EXTRA_HMT_DOCK_STATE:Ljava/lang/String; = "com.samsung.intent.extra.HMT_DOCK_STATE"

.field public static final EXTRA_HMT_DOCK_STATE_DOCKED:I = 0x1

.field public static final EXTRA_HMT_DOCK_STATE_UNDOCKED:I = 0x0

.field public static final WIFI_DISPLAY_STATE_CHANGE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;


# instance fields
.field private mActivity:Lcom/android/incallui/InCallActivity;

.field private mCoverColor:I

.field private mCoverHeight:I

.field mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

.field mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mCoverType:I

.field private mCoverWidth:I

.field private mIsAppLogging:Z

.field private mIsClosed:Z

.field private mIsHmtDocked:Z

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

.field private mPrevCallState:I

.field private mPrevConnectedTime:J

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field mScover:Lcom/samsung/android/sdk/cover/Scover;

.field private mWIFIDisplayState:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    iput v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    iput v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$1;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeReceiver()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfCallForwardStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/AccessoryEventHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/accessory/AccessoryEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setCoverOpenAppLogging()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfHmtStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/accessory/AccessoryEventHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;
    .locals 2

    const-class v1, Lcom/android/incallui/accessory/AccessoryEventHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-direct {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    :cond_0
    sget-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializeCover()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "initializeCover"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v3}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    new-instance v3, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    const/4 v3, 0x7

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverTypeForShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeCover: mIsClosed - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCoverType - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mCoverColor - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$2;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$3;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v0, :cond_3

    :try_start_1
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerNfcTouchListener(ILcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/a; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "initializeCover: IllegalArgumentException"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "initializeCover: SsdkUnsupportedException"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeCover: Exception - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    const-string v0, "initializeCover: mCoverState is null"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    const-string v0, "initializeCover: mCoverManager is null"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1
.end method

.method private initializeReceiver()V
    .locals 4

    const/4 v1, 0x1

    const-string v0, "initializeReceiver"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.HMT_DOCK_STICKY_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeReceiver: mWIFIDisplayState - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private notifyListenersOfCallForwardStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onSideSyncCallForwardStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfCoverStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onCoverStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyListenersOfHmtStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onHmtStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCoverOpenAppLogging()V
    .locals 6

    const/4 v0, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x1

    iget-boolean v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1, v0, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-ne v1, v4, :cond_4

    if-eqz v2, :cond_3

    const-string v0, "SIVT"

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Open cover"

    invoke-static {v1, v0, v2}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const-string v0, "SIVO"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    if-eq v1, v5, :cond_5

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_1

    :cond_5
    if-eqz v2, :cond_6

    const-string v0, "OIVT"

    goto :goto_0

    :cond_6
    const-string v0, "OIVO"

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    if-ne v1, v5, :cond_1

    :cond_8
    if-eqz v2, :cond_9

    const-string v0, "CDVT"

    goto :goto_0

    :cond_9
    const-string v0, "CDVO"

    goto :goto_0
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addListenerToFirst(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 2

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public getClearCoverColor()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverColor()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e013d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClearCoverColor, coverColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", coverBgColor = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return v1
.end method

.method public getCoverColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    return v0
.end method

.method public getCoverHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    return v0
.end method

.method public getCoverType()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return v0
.end method

.method public getCoverWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    return v0
.end method

.method public getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method public getScoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method public isClearCoverClosed()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isCoverClosed()Z
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {p0, v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverTypeForShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCoverClosed = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverTypeForShowing(I)Z
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHmtDocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return v0
.end method

.method public isWIFIDisplayOn()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallTimeForLedCover()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "notifyCallTimeForLedCover... "

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-eq v3, v10, :cond_2

    const/16 v0, 0x9

    if-eq v3, v0, :cond_2

    const/16 v0, 0xa

    if-ne v3, v0, :cond_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    const-string v4, "ctc_call_time_duration"

    invoke-static {v4}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v0

    :cond_3
    if-ne v3, v10, :cond_4

    iget-wide v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    cmp-long v2, v4, v0

    if-nez v2, :cond_4

    const-string v0, "notifyCallTimeForLedCover mPrevConnectedTime == connectedTime"

    invoke-static {p0, v0, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyCallTimeForLedCover: callDuration = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    const-string v8, "com.sec.android.phone.action.ACTION_CALL_TIME"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ne v3, v10, :cond_5

    const-string v4, "connectedTime"

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "calldurationmillis"

    invoke-virtual {v2, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_1
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "notifyCallTimeForLedCover: send broadcast done."

    invoke-static {p0, v2, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-wide v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    iput v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    goto/16 :goto_0

    :cond_5
    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallTimeForLedCover: callTimeElapsed = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    const-string v5, "connectedTime"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyCallTimeForLedCover prevCallState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    invoke-static {v6}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget v5, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    if-ne v5, v10, :cond_6

    const-string v5, "calldurationmillis"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const-string v4, "calldurationmillis"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/google/a/a/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string v0, "Activity is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "getScoverManager is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    goto :goto_1
.end method

.method public tearDown()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterNfcTouchListener(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
