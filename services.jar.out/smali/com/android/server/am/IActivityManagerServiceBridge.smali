.class public interface abstract Lcom/android/server/am/IActivityManagerServiceBridge;
.super Ljava/lang/Object;
.source "IActivityManagerServiceBridge.java"


# virtual methods
.method public abstract addAbortedBroadcastToHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract addBroadcastSummaryHistoryLocked(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/BroadcastRecord;)V
.end method

.method public abstract addCustomStartingWindowData(Lcom/android/server/am/ActivityRecord;)Ljava/lang/String;
.end method

.method public abstract addToLocaleChangedHistoryLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
.end method

.method public abstract checkScreenDpSizeChanges(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
.end method

.method public abstract clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
.end method

.method public abstract clearHomeStack()V
.end method

.method public abstract clearVSDisplay(I)V
.end method

.method public abstract createVSContainer()I
.end method

.method public abstract dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
.end method

.method public abstract dumpLocaleChangedHistoryLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
.end method

.method public abstract dumpMetaDataLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
.end method

.method public abstract endRedirectMainDisplayVS(Z)V
.end method

.method public abstract ensureStoppingVS(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
.end method

.method public abstract getActivityDisplay(Landroid/os/IBinder;)I
.end method

.method public abstract getApplicationToken(Landroid/os/IBinder;)Landroid/os/IBinder;
.end method

.method public abstract getExtraPolicyForMultiResolution()Landroid/os/Bundle;
.end method

.method public abstract getIMEPid()I
.end method

.method public abstract getLaunchStackVS(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getResumedStackVS()Lcom/android/server/am/ActivityStack;
.end method

.method public abstract getTaskInfoFromTaskIdLocked(III)Landroid/os/Bundle;
.end method

.method public abstract getTopTaskId()I
.end method

.method public abstract hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract hideNonVSStack(Lcom/android/server/am/ActivityStack;Z)Z
.end method

.method public abstract hideVSStack()V
.end method

.method public abstract inVSMode()Z
.end method

.method public abstract init()V
.end method

.method public abstract isCscVerChanged()Z
.end method

.method public abstract isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isRelaxedBroadcastAction(Ljava/lang/String;)Z
.end method

.method public abstract isTrimApplicaionsScheduled()Z
.end method

.method public abstract isVSClientStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract isVSVisible()Z
.end method

.method public abstract keepStackVS(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract killAllBackgroundProcessesExcept(IILandroid/os/Bundle;)V
.end method

.method public abstract logIllegalArgumentExceptionLocked(Landroid/os/IBinder;)V
.end method

.method public abstract moveClientToVSContainer(Landroid/os/IBinder;)Z
.end method

.method public abstract moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
.end method

.method public abstract moveTaskToBackVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)Z
.end method

.method public abstract needSmoothExitVS()Z
.end method

.method public abstract notifyAttachApplicationLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract notifyProcessRemoved(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
.end method

.method public abstract notifyRegisterReceiverLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ReceiverList;Landroid/content/IntentFilter;)V
.end method

.method public abstract notifyRemoveReceiverLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract notifyTaskDescriptionSetLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
.end method

.method public abstract notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
.end method

.method public abstract notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
.end method

.method public abstract onLockTaskModeChanged(I)V
.end method

.method public abstract overrideActivityOptionsVS(Landroid/app/IApplicationThread;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/IActivityContainer;)Landroid/os/Bundle;
.end method

.method public abstract overrideLaunchFlagsVS(ILcom/android/server/am/ActivityRecord;)I
.end method

.method public abstract printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
.end method

.method public abstract queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract registerAppNotRespondingProcLocked(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
.end method

.method public abstract removeTaskLocked(II)Z
.end method

.method public abstract resetActivityKeepAliveLocked(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract resetUpdateConfigurationCallerLocked()V
.end method

.method public abstract restoreTask(I)V
.end method

.method public abstract resumedActivityVS(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract scheduleDumpstateLocked(Lcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract scheduleTrimApplicaions(Z)V
.end method

.method public abstract setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
.end method

.method public abstract setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
.end method

.method public abstract setIMEDisplay(I)V
.end method

.method public abstract setRedirectingDisplay(I)V
.end method

.method public abstract setSupportsPictureInPicture(Z)Z
.end method

.method public abstract setUpdateConfigurationCallerLocked(I)V
.end method

.method public abstract setVSMode(ZLandroid/os/IBinder;)V
.end method

.method public abstract setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract skipReusedAppNotRespondingProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
.end method

.method public abstract skipUpdateConfigFor(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract skipUpdateVrModeFor(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract startRedirectMainDisplayVS(Z)V
.end method

.method public abstract unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
.end method

.method public abstract updateFocusStackVS(Lcom/android/server/am/ActivityStack;)V
.end method

.method public abstract updateOomAdj()V
.end method

.method public abstract updatePreBootCscFile()V
.end method

.method public abstract updateVrCoreConfiguration()V
.end method

.method public abstract updatedTopTaskVS(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
.end method
