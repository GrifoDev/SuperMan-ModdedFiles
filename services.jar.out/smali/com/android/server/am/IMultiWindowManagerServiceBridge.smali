.class public interface abstract Lcom/android/server/am/IMultiWindowManagerServiceBridge;
.super Ljava/lang/Object;
.source "IMultiWindowManagerServiceBridge.java"


# virtual methods
.method public abstract adjustForMaximumTaskDimensions(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;)V
.end method

.method public abstract adjustStacksOrderLocked(IILcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityStack;)I
.end method

.method public abstract applyFreeformMinimizePolicyLocked(I)V
.end method

.method public abstract checkCountOfRunningFreeformWithLogging()V
.end method

.method public abstract checkRunningFreeformWithLogging(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract dumpLocked(Ljava/io/PrintWriter;Z)V
.end method

.method public abstract getIndexOfFreeformStackLocked()I
.end method

.method public abstract getMaxMultiInstanceCnt()I
.end method

.method public abstract getMaxTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract getMinTaskDimensions(Landroid/graphics/Point;Landroid/content/pm/ActivityInfo;)V
.end method

.method public abstract getMultiInstanceCntLocked(Lcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract getMultiWindowSettingsLocked(I)Landroid/os/Bundle;
.end method

.method public abstract getOppositeMultiWindowStackId(I)I
.end method

.method public abstract getStackBehindFreeformLocked()Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getStackIdsShowWhenLocked()I
.end method

.method public abstract getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
.end method

.method public abstract init()V
.end method

.method public abstract isAllTaskHiddenLocked(Lcom/android/server/am/ActivityStack;Z)Z
.end method

.method public abstract isAutoResizingEnabled()Z
.end method

.method public abstract isDeferResumeTopActivityLocked()Z
.end method

.method public abstract isForceResizable(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract isFreeformStackVisibleLocked()Z
.end method

.method public abstract isMaximizingStackByDividerLocked()Z
.end method

.method public abstract isMinTaskDimensionsChanged(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isMovingMultiWindowTasksToFullScreenLocked()Z
.end method

.method public abstract isSupportEnsureDockedView()Z
.end method

.method public abstract isSupportSnapView()Z
.end method

.method public abstract isVisibleStackBehindFreeformLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract maximizeStackByDivider(ZZI)V
.end method

.method public abstract minimizeAllTasksInFreeformLocked()V
.end method

.method public abstract minimizeOhterFreeforms(Landroid/os/IBinder;)V
.end method

.method public abstract moveMultiWindowTasksToFullScreen()V
.end method

.method public abstract notifyActivityStackAttachedLocked(II)V
.end method

.method public abstract notifyActivityStackDetachedLocked(II)V
.end method

.method public abstract notifyApplyFreeformMinimizePolicy(I)V
.end method

.method public abstract notifyDockedStackMinimizedChange(Z)V
.end method

.method public abstract notifyFreeformMinimizeStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
.end method

.method public abstract notifyFreefromWindowAnimationEnd(IILandroid/graphics/Rect;)V
.end method

.method public abstract notifyLastDockTaskToBackTransitionFinishedLocked(Landroid/os/IBinder;)V
.end method

.method public abstract notifyMultiWindowAppTransitionFinishedLocked()V
.end method

.method public abstract notifyMultiWindowFocusedChangeLocked(Ljava/lang/String;)V
.end method

.method public abstract notifyScreenFreezeAnimationFinished()V
.end method

.method public abstract onConfigurationChangedLocked(I)V
.end method

.method public abstract postMoveTaskToStackLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
.end method

.method public abstract rotationAnimationStateChangedLocked(Z)V
.end method

.method public abstract setBoundsForNewConfig(ILandroid/graphics/Rect;)V
.end method

.method public abstract setFreeformStackVisibilityLocked(Z)V
.end method

.method public abstract setHiddenTaskLocked(Lcom/android/server/am/TaskRecord;I)V
.end method

.method public abstract setMinTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setSlideModeLocked(IZ)V
.end method

.method public abstract setSnapViewLocked(ZLandroid/graphics/Rect;Ljava/lang/String;)V
.end method

.method public abstract setSplitRelaunchAnimIfNeededLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;)Z
.end method

.method public abstract setSystemService(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract setTaskDimensions(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract shouldLaunchAsMultiInstance(Landroid/content/pm/ActivityInfo;)Z
.end method

.method public abstract startUserLocked(IZZ)V
.end method

.method public abstract stopUserLocked(I)V
.end method

.method public abstract suspendResize(ILandroid/graphics/Rect;)Z
.end method

.method public abstract systemBooted()V
.end method

.method public abstract unminimizeAllTasksInFreeformLocked()V
.end method

.method public abstract updateNonFocusedVisibleActivityLocked(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityRecord;ZZLjava/lang/String;)Z
.end method

.method public abstract updateSupportFreeformDensityLocked(Lcom/android/server/am/TaskRecord;)Z
.end method
