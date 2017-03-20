.class public Lcom/android/incallui/accessory/AccessoryEventHandler;
.super Ljava/lang/Object;
.source "AccessoryEventHandler.java"


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

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    .line 75
    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    .line 76
    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    .line 77
    iput v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    .line 78
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    .line 79
    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    .line 80
    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    .line 82
    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    .line 83
    iput v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    .line 86
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    .line 88
    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    .line 90
    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$1;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 125
    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 126
    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeReceiver()V

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfCallForwardStateChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/accessory/AccessoryEventHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/accessory/AccessoryEventHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->setCoverOpenAppLogging()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfCoverStateChanged(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyListenersOfHmtStateChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/accessory/AccessoryEventHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/incallui/accessory/AccessoryEventHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/accessory/AccessoryEventHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/incallui/accessory/AccessoryEventHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/accessory/AccessoryEventHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    return p1
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/android/incallui/accessory/AccessoryEventHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/android/incallui/accessory/AccessoryEventHandler;

    invoke-direct {v0}, Lcom/android/incallui/accessory/AccessoryEventHandler;-><init>()V

    sput-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 121
    :cond_0
    sget-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initializeCover()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 152
    const-string v2, "initializeCover"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 153
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 154
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct {v2}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    .line 156
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mScover:Lcom/samsung/android/sdk/cover/Scover;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 167
    new-instance v2, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v2, v0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 168
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_6

    .line 169
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    .line 170
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-eqz v2, :cond_5

    .line 171
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    .line 172
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getColor()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    .line 173
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowHeight()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    .line 174
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getWindowWidth()I

    move-result v2

    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    .line 175
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    .line 176
    iget-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    const/4 v5, 0x7

    if-ne v2, v5, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->notifyCallTimeForLedCover()V

    .line 179
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverTypeForShowing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v4, v3

    :cond_1
    iput-boolean v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCover: mIsClosed - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mCoverType - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mCoverColor - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 190
    new-instance v2, Lcom/android/incallui/accessory/AccessoryEventHandler$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$2;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 238
    new-instance v2, Lcom/android/incallui/accessory/AccessoryEventHandler$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/accessory/AccessoryEventHandler$3;-><init>(Lcom/android/incallui/accessory/AccessoryEventHandler;)V

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    .line 265
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v2, :cond_2

    .line 266
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 268
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v2, :cond_3

    .line 270
    :try_start_1
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerNfcTouchListener(ILcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 275
    :cond_3
    :goto_1
    return-void

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "initializeCover: IllegalArgumentException"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .line 160
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 161
    .local v1, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const-string v2, "initializeCover: SsdkUnsupportedException"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .line 163
    .end local v1    # "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    :catch_2
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeCover: Exception - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move v2, v4

    .line 175
    goto/16 :goto_0

    .line 183
    :cond_5
    const-string v2, "initializeCover: mCoverState is null"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .line 187
    :cond_6
    const-string v2, "initializeCover: mCoverManager is null"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_1

    .line 271
    :catch_3
    move-exception v2

    goto :goto_1
.end method

.method private initializeReceiver()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 285
    const-string v2, "initializeReceiver"

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 286
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.sec.android.sidesync.common.CALLFORWARD_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    const-string v2, "com.samsung.intent.action.HMT_DOCK_STICKY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Lcom/android/incallui/InCallApp;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 293
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "display"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 294
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetWifiDisplayStatus()Landroid/hardware/display/SemWifiDisplayStatus;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/SemWifiDisplayStatus;->getActiveDisplayState()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeReceiver: mWIFIDisplayState - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 296
    return-void

    :cond_0
    move v2, v3

    .line 294
    goto :goto_0
.end method

.method private notifyListenersOfCallForwardStateChanged(Z)V
    .locals 3
    .param p1, "isStarted"    # Z

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .line 393
    .local v0, "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onSideSyncCallForwardStateChanged(Z)V

    goto :goto_0

    .line 395
    .end local v0    # "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfCoverStateChanged(Z)V
    .locals 3
    .param p1, "isClosed"    # Z

    .prologue
    .line 381
    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .line 382
    .local v0, "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onCoverStateChanged(Z)V

    goto :goto_0

    .line 385
    .end local v0    # "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    :cond_0
    return-void
.end method

.method private notifyListenersOfHmtStateChanged(Z)V
    .locals 3
    .param p1, "isDocked"    # Z

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .line 399
    .local v0, "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;->onHmtStateChanged(Z)V

    goto :goto_0

    .line 401
    .end local v0    # "listener":Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;
    :cond_0
    return-void
.end method

.method private setCoverOpenAppLogging()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 473
    iget-boolean v3, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    if-nez v3, :cond_0

    iput-boolean v5, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsAppLogging:Z

    .line 475
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 476
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    .line 477
    const/4 v1, 0x0

    .line 478
    .local v1, "featureName":Ljava/lang/String;
    invoke-static {v0}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 479
    .local v2, "isVideoCall":Z
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 480
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    if-ne v3, v5, :cond_4

    .line 481
    if-eqz v2, :cond_3

    const-string v1, "SIVT"

    .line 492
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 493
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Open cover"

    invoke-static {v3, v1, v4}, Lcom/android/incallui/util/InCallUIAppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    .end local v1    # "featureName":Ljava/lang/String;
    .end local v2    # "isVideoCall":Z
    :cond_2
    return-void

    .line 481
    .restart local v1    # "featureName":Ljava/lang/String;
    .restart local v2    # "isVideoCall":Z
    :cond_3
    const-string v1, "SIVO"

    goto :goto_0

    .line 483
    :cond_4
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 484
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 485
    :cond_5
    if-eqz v2, :cond_6

    const-string v1, "OIVT"

    :goto_1
    goto :goto_0

    :cond_6
    const-string v1, "OIVO"

    goto :goto_1

    .line 488
    :cond_7
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 489
    :cond_8
    if-eqz v2, :cond_9

    const-string v1, "CDVT"

    :goto_2
    goto :goto_0

    :cond_9
    const-string v1, "CDVO"

    goto :goto_2
.end method


# virtual methods
.method public addListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .prologue
    .line 358
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_0
    return-void
.end method

.method public addListenerToFirst(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .prologue
    .line 365
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 369
    :cond_0
    return-void
.end method

.method public getClearCoverColor()I
    .locals 4

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverColor()I

    move-result v1

    .line 279
    .local v1, "coverColor":I
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 280
    .local v0, "coverBgColor":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClearCoverColor, coverColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", coverBgColor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 281
    return v0
.end method

.method public getCoverColor()I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 326
    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverColor:I

    return v0
.end method

.method public getCoverHeight()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 336
    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverHeight:I

    return v0
.end method

.method public getCoverType()I
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 321
    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    return v0
.end method

.method public getCoverWidth()I
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 331
    :cond_0
    iget v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverWidth:I

    return v0
.end method

.method public getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    return-object v0
.end method

.method public getScoverState()Lcom/samsung/android/sdk/cover/ScoverState;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    return-object v0
.end method

.method public isClearCoverClosed()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getCoverType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    move v0, v1

    .line 307
    .local v0, "isClearCover":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isClearCover":Z
    :cond_0
    move v0, v2

    .line 306
    goto :goto_0

    .restart local v0    # "isClearCover":Z
    :cond_1
    move v1, v2

    .line 307
    goto :goto_1
.end method

.method public isCoverClosed()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 299
    iget-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverState:Lcom/samsung/android/sdk/cover/ScoverState;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/accessory/AccessoryEventHandler;->initializeCover()V

    .line 300
    :cond_0
    iget-boolean v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsClosed:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverType:I

    invoke-virtual {p0, v2}, Lcom/android/incallui/accessory/AccessoryEventHandler;->isCoverTypeForShowing(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 301
    .local v0, "isCoverClosed":Z
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

    .line 302
    return v0

    .line 300
    .end local v0    # "isCoverClosed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCoverTypeForShowing(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 311
    if-eqz p1, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHmtDocked()Z
    .locals 1

    .prologue
    .line 354
    iget-boolean v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mIsHmtDocked:Z

    return v0
.end method

.method public isWIFIDisplayOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 350
    iget v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mWIFIDisplayState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCallTimeForLedCover()V
    .locals 14

    .prologue
    .line 423
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    .line 424
    .local v3, "callList":Lcom/android/incallui/CallList;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v12, v13}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    .line 425
    .local v2, "call":Lcom/android/incallui/Call;
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    const-string v12, "notifyCallTimeForLedCover... "

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 429
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v11

    .line 430
    .local v11, "state":I
    const/4 v12, 0x3

    if-eq v11, v12, :cond_2

    const/16 v12, 0x9

    if-eq v11, v12, :cond_2

    const/16 v12, 0xa

    if-ne v11, v12, :cond_0

    .line 433
    :cond_2
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 434
    .local v8, "connectedTime":J
    const-string v12, "ctc_call_time_duration"

    invoke-static {v12}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 435
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/CallList;->getCdmaEarliestCallForTime()Lcom/android/incallui/Call;

    move-result-object v7

    .line 436
    .local v7, "cdmaCall":Lcom/android/incallui/Call;
    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_3

    .line 437
    invoke-virtual {v7}, Lcom/android/incallui/Call;->getConnectTimeMillis()J

    move-result-wide v8

    .line 440
    .end local v7    # "cdmaCall":Lcom/android/incallui/Call;
    :cond_3
    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    iget-wide v12, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    cmp-long v12, v12, v8

    if-nez v12, :cond_4

    .line 441
    const-string v12, "notifyCallTimeForLedCover mPrevConnectedTime == connectedTime"

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    .line 445
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v4, v12, v8

    .line 446
    .local v4, "callDuration":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long v0, v12, v4

    .line 447
    .local v0, "baseTime":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallTimeForLedCover: callDuration = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 448
    new-instance v10, Landroid/content/Intent;

    const-string v12, "com.sec.android.phone.action.ACTION_CALL_TIME"

    invoke-direct {v10, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    .local v10, "intent":Landroid/content/Intent;
    const/4 v12, 0x3

    if-ne v11, v12, :cond_5

    .line 450
    const-string v12, "connectedTime"

    invoke-virtual {v10, v12, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 451
    const-string v12, "calldurationmillis"

    invoke-virtual {v10, v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 463
    :goto_1
    const/high16 v12, 0x10000000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    const-string v12, "notifyCallTimeForLedCover: send broadcast done."

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 467
    iput-wide v8, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevConnectedTime:J

    .line 468
    iput v11, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    goto/16 :goto_0

    .line 453
    :cond_5
    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    invoke-static {v12, v13}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "callTimeElapsed":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallTimeForLedCover: callTimeElapsed = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 455
    const-string v12, "connectedTime"

    const/4 v13, -0x1

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 456
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallTimeForLedCover prevCallState = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    invoke-static {v13}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", state = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v11}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {p0, v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 457
    iget v12, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mPrevCallState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_6

    .line 458
    const-string v12, "calldurationmillis"

    invoke-virtual {v10, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 460
    :cond_6
    const-string v12, "calldurationmillis"

    const-string v13, ""

    invoke-virtual {v10, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public removeListener(Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/accessory/AccessoryEventHandler$AccessoryEventListener;

    .prologue
    .line 372
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 5
    .param p1, "activity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v2, 0x0

    .line 130
    if-nez p1, :cond_0

    .line 131
    const-string v2, "Activity is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    .line 149
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 137
    const-string v2, "getScoverManager is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    .line 143
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 144
    .local v0, "coverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_3

    move v1, v2

    .line 146
    .local v1, "isAttached":Z
    :goto_1
    invoke-static {}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getInstance()Lcom/android/incallui/accessory/AccessoryEventHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/accessory/AccessoryEventHandler;->getScoverManager()Lcom/samsung/android/sdk/cover/ScoverManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mActivity:Lcom/android/incallui/InCallActivity;

    .line 147
    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 146
    :cond_2
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    goto :goto_0

    .line 144
    .end local v1    # "isAttached":Z
    :cond_3
    iget-boolean v1, v0, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    goto :goto_1
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 406
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    if-eqz v0, :cond_1

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mNfcLedCoverTouchListener:Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterNfcTouchListener(Lcom/samsung/android/sdk/cover/ScoverManager$NfcLedCoverTouchListener;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 417
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/accessory/AccessoryEventHandler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallApp;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 419
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/accessory/AccessoryEventHandler;->sMe:Lcom/android/incallui/accessory/AccessoryEventHandler;

    .line 420
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0
.end method
