.class public interface abstract Lcom/android/server/am/IMultiScreenManagerServiceBridge;
.super Ljava/lang/Object;
.source "IMultiScreenManagerServiceBridge.java"


# virtual methods
.method public abstract allowAppTransition(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract applyMultiScreenAttrs(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Lcom/android/server/am/MultiScreenAttrs;
.end method

.method public abstract canLaunchHome(I)Z
.end method

.method public abstract cleanupVirtualScreen(I)V
.end method

.method public abstract clearTransition()V
.end method

.method public abstract clearVirtualScreenPosition()V
.end method

.method public abstract createStack(IIZ)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract createStack(IZ)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;
.end method

.method public abstract detachActivityDisplay(I)V
.end method

.method public abstract getBaseDisplayId(Lcom/android/server/am/TaskRecord;)I
.end method

.method public abstract getLayer(II)I
.end method

.method public abstract getOrCreateStack(IIZZ)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getVirtualScreenPosition(ILandroid/view/WindowManagerPolicy$WindowState;Landroid/graphics/PointF;)Z
.end method

.method public abstract hasFocusPolicy(I)Z
.end method

.method public abstract hasReuseTaskPolicy(I)Z
.end method

.method public abstract isExternalScreen(I)Z
.end method

.method public abstract isFrontStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract isFrontVirtualScreen(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract isTransiting(I)Z
.end method

.method public abstract isVirtualScreen(I)Z
.end method

.method public abstract isVisibleVirtualScreen(I)Z
.end method

.method public abstract isWaitingForVirtualScreen(I)Z
.end method

.method public abstract main(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end method

.method public abstract moveTaskBackToDisplayIfNeeded(Lcom/android/server/am/TaskRecord;ZZ)Z
.end method

.method public abstract moveTaskToDisplay(Lcom/android/server/am/TaskRecord;IZ)Z
.end method

.method public abstract moveTaskToScreen(Landroid/os/IBinder;I)V
.end method

.method public abstract performClearTaskLocked(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract relinquishVirtualScreenAttrs(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract removeVirtualScreen(I)V
.end method

.method public abstract resolveDisplayChooser(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
.end method

.method public abstract setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract updateConfigurationLocked()V
.end method

.method public abstract updateVirtualScreenPosition()V
.end method
