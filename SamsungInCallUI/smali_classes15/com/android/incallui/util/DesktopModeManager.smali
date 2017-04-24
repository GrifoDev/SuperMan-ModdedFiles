.class public Lcom/android/incallui/util/DesktopModeManager;
.super Ljava/lang/Object;
.source "DesktopModeManager.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DesktopModeManager"

.field private static mContext:Landroid/content/Context;

.field private static mIsDesktopDockConnected:Z

.field private static mIsDesktopMode:Z

.field private static mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private static volatile sDesktopModeManager:Lcom/android/incallui/util/DesktopModeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .locals 3

    const-string v0, "DesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDesktopDockConnected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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
    .locals 3

    const-string v0, "DesktopModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDesktopmode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    sput-boolean p1, Lcom/android/incallui/util/DesktopModeManager;->mIsDesktopDockConnected:Z

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 3

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

    return-void
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
