.class public Lcom/android/incallui/util/DesktopModeManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# static fields
.field private static final ACTIVITY_RECREATE:I = 0x64

.field private static final ACTIVITY_RELAUNCH_WITH_OPTION:I = 0x65

.field private static final ACTIVITY_RELAUNCH_WITH_OPTION_DELAY:I = 0x3e8

.field private static final LOG_TAG:Ljava/lang/String; = "DesktopModeManager"

.field private static mContext:Landroid/content/Context;

.field private static mIsDesktopDockConnected:Z

.field private static mIsDesktopMode:Z

.field private static mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private static volatile sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/incallui/util/DesktopModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/util/DesktopModeManager$1;-><init>(Lcom/android/incallui/util/DesktopModeManager;)V

    iput-object v0, p0, Lcom/android/incallui/util/DesktopModeManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance()Lcom/android/incallui/util/DesktopModeManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/incallui/util/DesktopModeManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/util/DesktopModeManager;

    invoke-direct {v0}, Lcom/android/incallui/util/DesktopModeManager;-><init>()V

    sput-object v0, Lcom/android/incallui/util/DesktopModeManager;->sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static isDesktopDockConnected()Z
    .locals 1

    const-string v0, "support_knox_desktop"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopDockConnected:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDesktopMode()Z
    .locals 1

    const-string v0, "support_knox_desktop"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2

    const-string v0, "DesktopModeManager"

    const-string v1, "init()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sput-object p1, Lcom/android/incallui/util/DesktopModeManager;->mContext:Landroid/content/Context;

    const-string v0, "desktopmode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sput-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopMode:Z

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopDockConnected()Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopDockConnected:Z

    :cond_0
    return-void
.end method

.method public onDesktopDockConnectionChanged(Z)V
    .locals 3

    const-string v0, "DesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesktopDockConnectionChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/SoundEffect;->isExtraVolOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/util/SoundEffect;->turnOnExtraVol(Z)V

    :cond_0
    sput-boolean p1, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopDockConnected:Z

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 5

    const/16 v4, 0x65

    const-string v0, "DesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDesktopModeChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopMode:Z

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/util/DesktopModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/util/DesktopModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/util/DesktopModeManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopModeManager"

    const-string v1, "onDesktopModeChanged: popup -> fullscreen"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getCallPopupService()Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    goto :goto_0
.end method

.method public tearDown()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "DesktopModeManager"

    const-string v1, "tearDown()"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->unregisterListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;)V

    :cond_0
    sput-object v2, Lcom/android/incallui/util/DesktopModeManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    sput-object v2, Lcom/android/incallui/util/DesktopModeManager;->sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;

    return-void
.end method
