.class public Lcom/android/server/PackageConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/server/PackageConfigurationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;,
        Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageConfigurationController"


# instance fields
.field private final mConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mReduceScreenGlobal:Z

.field private mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field private mReducedScreenBlacklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReduceScreenGlobal:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.app.aodservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.app.cocktailbarservice"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.app.scrollcapture"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.android.easyonehand"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private disableReducedScreenAreaGlobal()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReduceScreenGlobal:Z

    return-void
.end method

.method private disableScreenAreaForPackage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->removeConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private enableReducedScreenAreaGlobal(FFF)V
    .locals 4

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v2, v2, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v2, v2, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    cmpl-float v2, v2, p2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v2, v2, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    cmpl-float v2, v2, p3

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->putAllWindows(Z)V

    goto :goto_0

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/PackageConfigurationControllerImpl;->disableReducedScreenAreaGlobal()V

    return-void

    :cond_2
    new-instance v2, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    invoke-direct {v2, p1, p2, p3}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    iput-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReduceScreenGlobal:Z

    return-void
.end method

.method private isApplicationStarted(Ljava/lang/String;Z)Z
    .locals 3

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->shouldDestroy()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method private pidToPackageName(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    iget-object v3, v3, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private removeConfig(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->markForDestroy()V

    :cond_0
    return-void
.end method

.method private windowNameToPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    iget-object v3, v3, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public declared-synchronized addPackageToReducedScreenBlacklist(Ljava/lang/String;Z)V
    .locals 3

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "PackageConfigurationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " added to blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v0, "PackageConfigurationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed from blacklist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized confirmWindowInitialized(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->hasWindow(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReduceScreenGlobal:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->shouldDestroy()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->allWindowsInitialized()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public disableCustomAspectRatio(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isCustomAspectRatio()Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->removeConfig(Ljava/lang/String;)V

    :cond_1
    return v1
.end method

.method public disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->removeConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->removeConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized dumpPackageConfiguration(Ljava/io/PrintWriter;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/android/server/PackageConfigurationControllerImpl;->isApplicationStarted(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    const-string/jumbo v8, "PackageConfigurationController"

    const-string/jumbo v9, "Package Configuration: "

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    move-result-object v5

    if-eqz v5, :cond_1

    iget v7, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    iget v3, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    iget v4, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Pkg Name - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isCustomAspectRatio()Z

    move-result v8

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "CustomAspectRatio : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", NavbarIsAlwaysEnabled :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Reduced Touch Area Size :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", Reduced App Screen Params : (xoffsetPct ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", yoffsetPct ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", scale ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v8, "PackageConfigurationController"

    invoke-static {v8, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_3
    :try_start_1
    const-string/jumbo v8, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_4
    monitor-exit p0

    return-void
.end method

.method public enableBackgroundSurfaceForPackage(Ljava/lang/String;Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setBackgroundSurfaceNeeded(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public enableCustomAspectRatio(Ljava/lang/String;F)Z
    .locals 3

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableCustomAspectRatio(Ljava/lang/String;)Z

    move-result v2

    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isCustomAspectRatio()Z

    move-result v1

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNavbarIsAlwaysEnabled(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    return-void
.end method

.method public declared-synchronized enableReducedScreenAreaForPackage(Ljava/lang/String;FFF)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string/jumbo v3, "global"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/PackageConfigurationControllerImpl;->enableReducedScreenAreaGlobal(FFF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->putAllWindows(Z)V

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, p2, v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableScreenAreaForPackage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v2, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    invoke-direct {v2, p2, p3, p4}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, v2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public enableReducedSideTouchAreaForPackage(Ljava/lang/String;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    return-void
.end method

.method public getAspectRatio(I)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->pidToPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->getAspectRatio(Ljava/lang/String;)F

    move-result v1

    return v1
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getAspectRatio()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReduceScreenGlobal:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedGlobalScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->isApplicationStarted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_1
    monitor-exit p0

    return-object v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getReducedSideTouchArea(I)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->pidToPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->getReducedSideTouchArea(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getReducedSideTouchArea(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedSideTouchAreaSize()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isApplicationStarted(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->isApplicationStarted(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackgroundSurfaceNeeded(Ljava/lang/String;)Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isBackgroundSurfaceNeed()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isCustomAspectRatio(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isCustomAspectRatio()Z

    move-result v0

    return v0
.end method

.method public isNavbarIsAlwaysEnabled(I)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->pidToPackageName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/PackageConfigurationControllerImpl;->isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->isApplicationStarted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isWindowInitialized(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1, p2}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->isWindowInitialized(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v4

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;II)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mReducedScreenBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/PackageConfigurationControllerImpl;->isApplicationStarted(Ljava/lang/String;Z)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    invoke-direct {v1, p0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mPids:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->hasNoPids()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized resetPackageConfiguration(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigurations:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTaskResizeable(II)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/app/IActivityManager;->setTaskResizeable(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string/jumbo v1, "PackageConfigurationController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized windowRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/PackageConfigurationControllerImpl$RunningPackage;->mWindows:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
