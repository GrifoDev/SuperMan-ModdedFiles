.class public final Lcom/android/server/am/MultiWindowFeaturesController;
.super Ljava/lang/Object;
.source "MultiWindowFeaturesController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "MultiWindowFeaturesController"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mMultiWindowFeaturesForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/MultiWindowManagerService;

.field private final mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

.field private final mSystemFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;

.field private final mVolatileFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/MultiWindowManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    const-string/jumbo v0, "MultiWindowFeaturesController"

    const-string/jumbo v1, "MultiWindowFeaturesController()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mService:Lcom/android/server/am/MultiWindowManagerService;

    new-instance v0, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    invoke-direct {v0, p3, p4, p0}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/am/MultiWindowFeaturesController;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    new-instance v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;

    invoke-direct {v0, p3}, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSystemFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;

    new-instance v0, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;

    invoke-direct {v0, p4, p0}, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;-><init>(Landroid/os/Handler;Lcom/android/server/am/MultiWindowFeaturesController;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mVolatileFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;

    return-void
.end method

.method private populateAllFeatures(I)I
    .locals 4

    const-string/jumbo v1, "MultiWindowFeaturesController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "populateAllFeatures(u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSystemFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->populateFeatures(Landroid/os/Bundle;I)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->populateFeatures(Landroid/os/Bundle;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mVolatileFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->populateFeatures(Landroid/os/Bundle;I)I

    move-result v2

    or-int/2addr v1, v2

    return v1
.end method

.method private sendFeaturesLocked(ZI)V
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v4, "MultiWindowFeaturesController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sendFeaturesLocked(u"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowFeaturesController;->populateAllFeatures(I)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowFeaturesChangeLocked(Landroid/os/Bundle;I)V

    return-void

    :cond_0
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v2

    array-length v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget v1, v2, v4

    if-eq v1, p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/am/MultiWindowFeaturesController;->populateAllFeatures(I)I

    :cond_1
    iget-object v6, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v6, v3, v1}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowFeaturesChangeLocked(Landroid/os/Bundle;I)V

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_0

    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/am/MultiWindowManagerService;->onMultiWindowFeaturesChangeLocked(Landroid/os/Bundle;I)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string/jumbo v3, "MultiWindowFeaturesController"

    const-string/jumbo v4, "do nothing"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getFeaturesLocked(I)Landroid/os/Bundle;
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0
.end method

.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSystemFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;

    invoke-virtual {v0}, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->init()V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    invoke-virtual {v0}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->beginObserveMultiWindowSettings()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/MultiWindowFeaturesController;->sendFeaturesLocked(ZI)V

    return-void
.end method

.method public notifyFeaturesChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiWindowFeaturesController;->sendFeaturesLocked(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setVolatileFeature(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            "IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mVolatileFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->setFeature(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V

    return-void
.end method

.method public startUserLocked(IZZ)V
    .locals 3

    const-string/jumbo v0, "MultiWindowFeaturesController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startUserLocked(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->beginObserveMultiWindowSettingsForSingleUser(I)V

    :cond_0
    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/MultiWindowFeaturesController;->sendFeaturesLocked(ZI)V

    :cond_2
    return-void
.end method

.method public stopUserLocked(IZ)V
    .locals 3

    const-string/jumbo v0, "MultiWindowFeaturesController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopUserLocked(u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mSettingFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getRunningUserIds()[I

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/multiwindow/MultiWindowSettingFeaturesObserver;->endObserveMultiWindowSettingsForSingleUser([II)V

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mMultiWindowFeaturesForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/MultiWindowFeaturesController;->mVolatileFeaturesObserver:Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/am/multiwindow/MultiWindowVolatileFeaturesObserver;->removeFeaturesForUser(I)V

    :cond_0
    return-void
.end method
