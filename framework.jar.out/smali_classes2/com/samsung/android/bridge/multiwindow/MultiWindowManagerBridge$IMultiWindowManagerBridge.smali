.class public interface abstract Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$IMultiWindowManagerBridge;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMultiWindowManagerBridge"
.end annotation


# virtual methods
.method public abstract activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;)V
.end method

.method public abstract completeToggleSplitScreen()V
.end method

.method public abstract enterFreeformTask(I)V
.end method

.method public abstract exitMultiWindow(Landroid/os/IBinder;)Z
.end method

.method public abstract getMultiWindowModeStates(I)I
.end method

.method public abstract getTopRunningTaskInfo(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isForceResizable(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isSnapViewRunning()Z
.end method

.method public abstract maximizeStackByDivider(Z)V
.end method

.method public abstract moveMultiWindowTasksToFullScreen()V
.end method

.method public abstract registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
.end method

.method public abstract registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V
.end method

.method public abstract registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
.end method

.method public abstract removeTaskIfNeeded(Z)Z
.end method

.method public abstract setAutoResizingEnabled(Z)V
.end method

.method public abstract setDividerButtonsDimLayer(ZFI)V
.end method

.method public abstract setDockedStackDividerButtonsTouchRegion(Landroid/graphics/Rect;)V
.end method

.method public abstract setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method public abstract setSnapView(ZLandroid/graphics/Rect;I)V
.end method

.method public abstract shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract showRecentApps()V
.end method

.method public abstract startDividerDragging()V
.end method

.method public abstract stopDividerDragging()V
.end method

.method public abstract swapSnapTasks()V
.end method

.method public abstract unregisterMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V
.end method
