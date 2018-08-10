.class public Lcom/android/systemui/media/NotificationPlayer;
.super Ljava/lang/Object;
.source "NotificationPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/NotificationPlayer$CmdThread;,
        Lcom/android/systemui/media/NotificationPlayer$Command;,
        Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    }
.end annotation


# instance fields
.field private mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mQueueAudioFocusLock"
    .end annotation
.end field

.field private mBinder:Landroid/os/IBinder;

.field private final mChargerConnectionUri:Landroid/net/Uri;

.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/media/NotificationPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompletionHandlingLock:Ljava/lang/Object;

.field private mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCompletionHandlingLock"
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCompletionHandlingLock"
    .end annotation
.end field

.field private final mLowBatteryUri:Landroid/net/Uri;

.field private mNotificationRampTimeMs:I

.field private mOnCompletionListener:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/app/INotificationPlayerOnCompletionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayer:Landroid/media/MediaPlayer;

.field private final mQueueAudioFocusLock:Ljava/lang/Object;

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCmdQueue"
    .end annotation
.end field

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCmdQueue"
    .end annotation
.end field

.field private final mWaterProtectionUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mChargerConnectionUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWaterProtectionUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/media/NotificationPlayer;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/media/NotificationPlayer;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/media/NotificationPlayer;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLowBatteryUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/media/NotificationPlayer;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/media/NotificationPlayer;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/media/NotificationPlayer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/media/NotificationPlayer;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/media/NotificationPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/media/NotificationPlayer;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$CmdThread;)Lcom/android/systemui/media/NotificationPlayer$CmdThread;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/media/NotificationPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->releaseWakeLock()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mChargerConnectionUri:Landroid/net/Uri;

    const-string/jumbo v0, "file:///system/media/audio/ui/LowBattery.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mLowBatteryUri:Landroid/net/Uri;

    const-string/jumbo v0, "system/media/audio/ui/Water_Protection.ogg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWaterProtectionUri:Landroid/net/Uri;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mNotificationRampTimeMs:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mBinder:Landroid/os/IBinder;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mOnCompletionListener:Ljava/util/Vector;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "NotificationPlayer"

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method private acquireWakeLock()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCmdQueue"
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCmdQueue"
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/media/NotificationPlayer;->acquireWakeLock()V

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;->start()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mCmdQueue"
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private startSound(Lcom/android/systemui/media/NotificationPlayer$Command;)V
    .locals 8

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    sget-object v5, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v3, v5, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    :cond_0
    new-instance v3, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;Lcom/android/systemui/media/NotificationPlayer$Command;)V

    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->start()V

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;

    invoke-virtual {v3}, Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    sub-long v0, v4, v6

    const-wide/16 v4, 0x3e8

    cmp-long v3, v0, v4

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification sound delayed by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "msecs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4

    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "error loading sound for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mQueueAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mAudioManagerWithAudioFocus:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mOnCompletionListener:Ljava/util/Vector;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/INotificationPlayerOnCompletionListener;

    invoke-interface {v1}, Landroid/app/INotificationPlayerOnCompletionListener;->onCompletion()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    monitor-exit v4

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v4

    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionHandlingLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mLooper:Landroid/os/Looper;

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    :cond_2
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCompletionThread:Lcom/android/systemui/media/NotificationPlayer$CreationAndCompletionThread;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catchall_1
    move-exception v3

    :try_start_5
    monitor-exit v5

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (extra="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") playing notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/NotificationPlayer;->onCompletion(Landroid/media/MediaPlayer;)V

    const/4 v0, 0x1

    return v0
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZI)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const-string/jumbo v1, "NotificationPlayer"

    const-string/jumbo v2, "play"

    invoke-static {p4, v1, v2}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    iput v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    iput-object p1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iput-boolean p3, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, p4}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public play(Landroid/content/Context;Landroid/net/Uri;ZLandroid/media/AudioAttributes;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    iput v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    iput-object p1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    iput-object p2, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    iput-boolean p3, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    iput-object p4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setOnCompletionListener(Landroid/app/INotificationPlayerOnCompletionListener;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mOnCompletionListener:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    if-eqz v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "assertion failed mWakeLock="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mThread="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_1
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void
.end method

.method public stop()V
    .locals 6

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v2

    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    if-eq v1, v3, :cond_0

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    invoke-direct {p0, v0}, Lcom/android/systemui/media/NotificationPlayer;->enqueueLocked(Lcom/android/systemui/media/NotificationPlayer$Command;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
