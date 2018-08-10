.class public Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;
.super Ljava/lang/Object;
.source "PlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;,
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;,
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mActiveSessionPkgName:Ljava/lang/String;

.field private mBlackListSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mIsStarted:Z

.field private mMediaController:Landroid/media/session/MediaController;

.field private mObserverCb:Landroid/media/session/MediaController$Callback;

.field private mObserverControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/session/MediaController;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->start()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$ObserveSessionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mBlackListSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iput-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    new-instance v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$1;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v3, ""

    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " Package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " Flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " Metadata: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " ButtonReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "null"

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v3

    goto :goto_0
.end method

.method private observeNonMetadataSessions(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_1
    monitor-exit v3

    return-void
.end method

.method private releaseAllObservers()V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-void
.end method

.method private sendCurrentState()V
    .locals 5

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getCurrentSessionPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionChanged(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    invoke-interface {v2, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    const-string/jumbo v1, "com.samsung.android.servicebox.mediasession.extra.LOCK_SCREEN_PENDING_INTENT"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-interface {v2, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    :goto_1
    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v1, v4}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onPendingIntentChanged(Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method private start()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "Start -- return : already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, -0x2

    invoke-virtual {v1, p0, v3, v2, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->loadBlackList()V

    invoke-virtual {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    return-void
.end method

.method private stop()V
    .locals 2

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mIsStarted:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 3

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", current controller = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-direct {p0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v2, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_7
    new-instance v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;-><init>(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mObserverControllerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getActiveSessionPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSessionPackageName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaButtonReceiver()Landroid/app/PendingIntent;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public isBlackList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mBlackListSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadBlackList()V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mBlackListSet:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->getServiceBoxBlackList()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "PlaybackStateMonitor_LOCK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "loadBlackList() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-array v0, v3, [Ljava/lang/String;

    :cond_1
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mBlackListSet:Ljava/util/Set;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v14, "Size: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->releaseAllObservers()V

    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onActiveSessionsChanged() controllers: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/media/session/MediaController;

    invoke-virtual {v14}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/servicebox/pages/music/MusicController;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/servicebox/pages/music/MusicController;->getLastSavedSessionPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/4 v8, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaController;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->isBlackList(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " is black list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v7, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    move-object v8, v2

    :cond_3
    if-nez v6, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v14, :cond_4

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v15}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    const/4 v6, 0x1

    :cond_4
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v10

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v9

    if-eqz v10, :cond_1

    if-eqz v9, :cond_1

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v4

    const-wide/16 v14, 0x2

    and-long/2addr v14, v4

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_1

    invoke-virtual {v10}, Landroid/media/session/PlaybackState;->getState()I

    move-result v12

    const/4 v14, 0x6

    if-eq v12, v14, :cond_5

    const/4 v14, 0x3

    if-ne v12, v14, :cond_6

    :cond_5
    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onActiveSessionsChanged() catch playing session "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_6
    if-nez v13, :cond_1

    move-object v13, v2

    goto/16 :goto_1

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->observeNonMetadataSessions(Ljava/util/List;)V

    if-eqz v6, :cond_8

    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onActiveSessionsChanged() current session is alive "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v14}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    return-void

    :cond_8
    if-eqz v13, :cond_9

    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onActiveSessionsChanged() catch top session "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_9
    if-eqz v8, :cond_b

    const-string/jumbo v14, "PlaybackStateMonitor_LOCK"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onActiveSessionsChanged() catch latest session "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->getControllerInfo(Landroid/media/session/MediaController;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_a
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mActiveSessionPkgName:Ljava/lang/String;

    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void
.end method

.method public removeOnPlaybackStateChangedListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->stop()V

    return-void
.end method

.method public requestLyrics(Landroid/media/MediaMetadata;)V
    .locals 5

    const-string/jumbo v3, "PlaybackStateMonitor_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestLyrics() metadata = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p1, :cond_1

    const-string/jumbo v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v2, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "com.samsung.android.servicebox.mediasession.extra.MEDIA_ID"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.servicebox.mediasession.action.REQUEST_LYRIC"

    invoke-virtual {v2, v3, v0}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_1

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v2, "send to SessionManager"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit v1

    return v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "addOnPlaybackStateChangedListener() : onPlaybackStateChangedListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->start()V

    invoke-direct {p0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->sendCurrentState()V

    :cond_0
    return-void
.end method

.method public updateSessions()V
    .locals 3

    const-string/jumbo v0, "PlaybackStateMonitor_LOCK"

    const-string/jumbo v1, "updateSessions()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/music/PlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    return-void
.end method
