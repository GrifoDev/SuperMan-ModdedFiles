.class public interface abstract Lcom/samsung/systemui/splugins/bixby/PluginMultiWindow;
.super Ljava/lang/Object;
.source "PluginMultiWindow.java"


# annotations
.annotation build Lcom/samsung/systemui/splugins/annotations/APIVersionTarget;
    target = "multiwindow"
.end annotation


# virtual methods
.method public abstract addAppPairOnHomeScreen()I
.end method

.method public abstract exitDockedMode()Z
.end method

.method public abstract getPluginDividerPanel(Landroid/content/Context;)Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;
.end method

.method public abstract getPluginSystemServiceProxy()Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy;
.end method

.method public abstract isDexModeSupport()Z
.end method

.method public abstract isExpandedDockedStack()Z
.end method

.method public abstract isFreeformSupport()Z
.end method

.method public abstract isMultiWindowEnabled()Z
.end method

.method public abstract isMultiWindowSupport()Z
.end method

.method public abstract isSnapWindowSupport()Z
.end method

.method public abstract maximizeTopTask()Z
.end method

.method public abstract minimizeAllFreeformTasks(I)Z
.end method

.method public abstract minimizeSearchedTask(Ljava/lang/String;)I
.end method

.method public abstract minimizeTopTask()Z
.end method

.method public abstract moveDockedTasksToFullscreenStack(ZZ)V
.end method

.method public abstract moveTopTaskToFreeformStack(I)V
.end method

.method public abstract removeFocusedTask()Z
.end method

.method public abstract removeFreeformTasks(I)Z
.end method

.method public abstract removeSearchedTask(Ljava/lang/String;)Z
.end method

.method public abstract startFreeform()I
.end method

.method public abstract startSnapMode(ZZILandroid/graphics/Rect;Ljava/lang/String;)V
.end method

.method public abstract swapTasks()V
.end method
