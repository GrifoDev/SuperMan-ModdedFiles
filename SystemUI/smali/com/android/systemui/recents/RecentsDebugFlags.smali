.class public Lcom/android/systemui/recents/RecentsDebugFlags;
.super Ljava/lang/Object;
.source "RecentsDebugFlags.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/samsung/systemui/splugins/recents/PluginRecentsDebugFlags;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/RecentsDebugFlags$Static;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSamsungMultiWindowEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    return v0
.end method

.method public static useCustomCurveLayout()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isThumbnailLayout()Z

    move-result v0

    return v0
.end method

.method public static useExpandableHeaderLayout()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static useListLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableListLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isListTypeLayout()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static useTabletLayout()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->isTabletTypeLayout()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAppListEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isBixbyEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isFastToggleRecentsEnabled()Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasFreeformWorkspaceSupport()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return v2

    :cond_1
    return v2
.end method

.method public isMoreButtonEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPagingEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPairedTaskEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    return v0
.end method

.method public isPrivateModeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSamsungMultiWindowEnabledPlugin()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->isSamsungMultiWindowEnabled()Z

    move-result v0

    return v0
.end method

.method public isScreenRatioEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTaskLockEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/DebugFlagsChangedEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method
