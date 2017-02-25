.class public Lcom/android/server/PackageConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "PackageConfigurationControllerImpl.java"

# interfaces
.implements Lcom/android/server/PackageConfigurationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PackageConfigurationController"


# instance fields
.field private final mConfigutations:Ljava/util/HashMap;
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

.field private final mRunningPackageNames:Ljava/util/HashMap;
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

.field private final mRunningPids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public disableFixedAspectRatioForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public disableScreenAreaForPackage(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public enableFixedAspectRatioForPackage(Ljava/lang/String;F)V
    .locals 2

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableFixedAspectRatioForPackage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setAspectRatio(F)V

    return-void
.end method

.method public enableNavbarIsAlwaysEnabled(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableNavbarIsAlwaysEnabled(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setNavbarIsAlwaysEnabled(Z)V

    return-void
.end method

.method public declared-synchronized enableReducedScreenAreaForPackage(Ljava/lang/String;FFF)V
    .locals 3

    monitor-enter p0

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableScreenAreaForPackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    invoke-direct {v1, p2, p3, p4}, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;-><init>(FFF)V

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedScreenParams(Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public enableReducedSideTouchAreaForPackage(Ljava/lang/String;I)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/PackageConfigurationControllerImpl;->disableReducedSideTouchAreaForPackage(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    invoke-direct {v0, p0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;-><init>(Lcom/android/server/PackageConfigurationControllerImpl;)V

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->setReducedSideTouchAreaSize(I)V

    return-void
.end method

.method public getAspectRatio(I)F
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public getAspectRatio(Ljava/lang/String;)F
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

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

.method public declared-synchronized getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 4

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getReducedAppScreenParams(Ljava/lang/String;)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    .locals 3

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->getReducedAppScreenParams()Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getReducedSideTouchArea(I)I
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public getReducedSideTouchArea(Ljava/lang/String;)I
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

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

.method public isNavbarIsAlwaysEnabled(I)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNavbarIsAlwaysEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;->isNavbarIsAlwaysEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onApplicationStarted(Ljava/lang/String;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/PackageConfigurationControllerImpl$PackageConfiguration;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public declared-synchronized onApplicationStopped(Ljava/lang/String;I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mRunningPackageNames:Ljava/util/HashMap;

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

.method public declared-synchronized resetPackageConfiguration(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/PackageConfigurationControllerImpl;->mConfigutations:Ljava/util/HashMap;

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
