.class Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;
.super Ljava/lang/Object;
.source "SemMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/SemMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioObserver"
.end annotation


# instance fields
.field private final mAppOps:Lcom/android/internal/app/IAppOpsService;

.field private final mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

.field private final mAppOpsLock:Ljava/lang/Object;

.field private mAttributes:Landroid/media/AudioAttributes;

.field private mHasAppOpsPlayAudio:Z

.field private mLeftVolume:F

.field private mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private mRightVolume:F

.field private mStartWatching:Z

.field final synthetic this$0:Lcom/samsung/android/media/SemMediaPlayer;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->updateAppOpsPlayAudio_sync()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/media/SemMediaPlayer;Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->this$0:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mLeftVolume:F

    iput v2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mRightVolume:F

    iput-object p2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsLock:Ljava/lang/Object;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAttributes:Landroid/media/AudioAttributes;

    const-string/jumbo v1, "appops"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->updateAppOpsPlayAudio_sync()V

    new-instance v1, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver$1;-><init>(Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;)V

    iput-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    return-void
.end method

.method private updateAppOpsPlayAudio_sync()V
    .locals 10

    const/4 v9, 0x0

    iget-boolean v3, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v5, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1c

    invoke-interface {v4, v8, v5, v6, v7}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v4}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v4

    const-string/jumbo v5, "CMAS"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    if-eqz v2, :cond_0

    const-string/jumbo v4, "PlayerBase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "It is mode ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "), Uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", Name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    :try_start_1
    iget-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    if-eq v3, v4, :cond_1

    iget-boolean v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget v5, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mLeftVolume:F

    iget v6, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mRightVolume:F

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    iput-boolean v9, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    goto :goto_1

    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public baseRelease()V
    .locals 3

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v2}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public baseSetVolume(FF)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mLeftVolume:F

    iput p2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mRightVolume:F

    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->isRestricted_sync()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    monitor-exit v1

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public baseStart()V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->updateAppOpsPlayAudio_sync()V

    iget-object v2, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->isRestricted_sync()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/samsung/android/media/SemMediaPlayer;->playerSetVolume(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    iget-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z

    if-eqz v1, :cond_1

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOps:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsCallback:Lcom/android/internal/app/IAppOpsCallback;

    const/16 v4, 0x1c

    invoke-interface {v1, v4, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iput-boolean v5, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    iput-boolean v5, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mStartWatching:Z

    goto :goto_0
.end method

.method public baseUpdateAudioAttributes(Landroid/media/AudioAttributes;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Illegal null AudioAttributes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAppOpsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAttributes:Landroid/media/AudioAttributes;

    invoke-direct {p0}, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->updateAppOpsPlayAudio_sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isRestricted_sync()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getAllFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/media/SemMediaPlayer$AudioObserver;->mHasAppOpsPlayAudio:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
