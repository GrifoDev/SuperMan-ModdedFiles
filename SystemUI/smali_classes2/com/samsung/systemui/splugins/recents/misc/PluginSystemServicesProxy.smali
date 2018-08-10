.class public interface abstract Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
.super Ljava/lang/Object;
.source "PluginSystemServicesProxy.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "recents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;
    }
.end annotation


# virtual methods
.method public abstract cancelThumbnailTransition(I)V
.end method

.method public abstract cancelWindowTransition(I)V
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
.end method

.method public abstract getBadgedActivityIcon(Landroid/content/pm/ActivityInfo;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getBadgedActivityLabel(Landroid/content/pm/ActivityInfo;I)Ljava/lang/String;
.end method

.method public abstract getBadgedContentDescription(Landroid/content/pm/ActivityInfo;ILcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;Landroid/content/res/Resources;)Ljava/lang/String;
.end method

.method public abstract getBadgedTaskDescriptionIcon(Lcom/samsung/systemui/splugins/recents/external/PluginTaskDescription;Ljava/lang/String;ILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getCurrentUser()I
.end method

.method public abstract getDockedTasks()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProcessUser()I
.end method

.method public abstract getRecentTasks(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRecentTasks(IIZLandroid/util/ArraySet;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract getScreenRatioState(Lcom/samsung/systemui/splugins/recents/model/PluginTask;)I
.end method

.method public abstract getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
.end method

.method public abstract getTaskAffinity(Landroid/content/ComponentName;)Ljava/lang/String;
.end method

.method public abstract getTaskThumbnail(IZ)Lcom/samsung/systemui/splugins/recents/external/PluginThumbnailData;
.end method

.method public abstract getTopDockedTask()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract getVisibleRunningFullscreenTask()Landroid/app/ActivityManager$RunningTaskInfo;
.end method

.method public abstract hasDockedTask()Z
.end method

.method public abstract hasFreeformWorkspaceSupport()Z
.end method

.method public abstract hasSoftNavigationBar()Z
.end method

.method public abstract hasTransposedNavigationBar()Z
.end method

.method public abstract isDeviceLocked(I)Z
.end method

.method public abstract isInSafeMode()Z
.end method

.method public abstract isRecentsActivityVisible()Z
.end method

.method public abstract isRecentsActivityVisible(Landroid/util/MutableBoolean;)Z
.end method

.method public abstract isRecentsActivityVisible(Landroid/util/MutableBoolean;Landroid/util/MutableInt;)Z
.end method

.method public abstract isResizable(Landroid/content/pm/ResolveInfo;)Z
.end method

.method public abstract isSystemUser(I)Z
.end method

.method public abstract moveTaskToDockedStack(IILandroid/graphics/Rect;)Z
.end method

.method public abstract moveTaskToStack(II)V
.end method

.method public abstract registerPluginTaskStackListener(Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;)V
.end method

.method public abstract removeTask(I)V
.end method

.method public abstract setFocusedStack(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setRecentsVisibility(Z)V
.end method

.method public abstract startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;)V
.end method

.method public abstract startActivityFromRecents(ILandroid/os/Bundle;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startPairActivities(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;I)V
.end method

.method public abstract startTaskInDockedMode(IILandroid/content/Context;Ljava/lang/String;)Z
.end method

.method public abstract updateOverviewLastStackActiveTimeAsync(JI)V
.end method
