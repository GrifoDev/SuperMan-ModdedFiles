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

.method public abstract broadcastQueueForIntent(Landroid/content/Intent;Z)Lcom/android/server/am/BroadcastQueue;
.end method

.method public abstract clearCaller()V
.end method

.method public abstract clearCustomStartingWindowDataForAllUsers(Ljava/lang/String;)V
.end method

.method public abstract createBroadcastQueues(I)[Lcom/android/server/am/BroadcastQueue;
.end method

.method public abstract dumpForBroadcastQueueLocked(Lcom/android/server/am/BroadcastQueue;Ljava/io/PrintWriter;Z)V
.end method

.method public abstract dumpGrabIntentLocked(Ljava/io/PrintWriter;ZLjava/lang/String;)Z
.end method

.method public abstract dumpLocaleChangedHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
.end method

.method public abstract findContainerForActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.end method

.method public abstract getGrabedIntentSendersLocked()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Landroid/content/IIntentSender;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMatchingOrderedReceiver(Landroid/os/IBinder;I)Lcom/android/server/am/BroadcastRecord;
.end method

.method public abstract getTopTaskId()I
.end method

.method public abstract getVSStackLocked(I)Lcom/android/server/am/ActivityStack;
.end method

.method public abstract grabIntentSenderLocked(Landroid/content/IIntentSender;Ljava/lang/String;[J)Landroid/content/IIntentSender;
.end method

.method public abstract hasKeepAliveActivitiesLocked(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract hideNonVSStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract init()V
.end method

.method public abstract initBroadcastQueues([Lcom/android/server/am/BroadcastQueue;)V
.end method

.method public abstract isCscVerChanged()Z
.end method

.method public abstract isFgBroadcastQueue(Lcom/android/server/am/BroadcastQueue;)Z
.end method

.method public abstract isKeepAliveActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract isKnoxDesktopModeLocked()Z
.end method

.method public abstract isPendingBroadcastProcessLocked(I)Z
.end method

.method public abstract isRelaxedBroadcastAction(Ljava/lang/String;)Z
.end method

.method public abstract isTrimApplicaionsScheduled()Z
.end method

.method public abstract isVSManagedStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract isVSStack(Lcom/android/server/am/ActivityStack;)Z
.end method

.method public abstract killAllBackgroundProcessesExcept(II)V
.end method

.method public abstract moveActivityIfNeeded(Lcom/android/server/am/ActivityRecord;)Z
.end method

.method public abstract moveAllTasksToStack(II)V
.end method

.method public abstract moveTaskToBackLocked(IZLandroid/os/Bundle;)Z
.end method

.method public abstract notifyTaskRemovedLocked(Lcom/android/server/am/TaskRecord;Ljava/lang/String;)V
.end method

.method public abstract notifyTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLjava/lang/String;)V
.end method

.method public abstract onLockTaskModeChanged(I)V
.end method

.method public abstract printReceiverTime(Lcom/android/server/am/BroadcastRecord;Ljava/io/PrintWriter;IJ)V
.end method

.method public abstract queryRegisteredReceiverPackages(Landroid/content/Intent;Ljava/lang/String;I)[Ljava/lang/String;
.end method

.method public abstract recordLocaleChangedHistory(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
.end method

.method public abstract registerAppNotRespondingProcLocked(Lcom/android/server/am/ProcessRecord;I)V
.end method

.method public abstract registerTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
.end method

.method public abstract removeGrabedIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord$Key;)V
.end method

.method public abstract removeOtherHomes()V
.end method

.method public abstract removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)V
.end method

.method public abstract removeTaskLocked(II)Z
.end method

.method public abstract resetActivityKeepAlive(Lcom/android/server/am/ActivityRecord;)V
.end method

.method public abstract scheduleTrimApplicaions(Z)V
.end method

.method public abstract setCaller(Ljava/lang/String;)V
.end method

.method public abstract setCustomImage(Landroid/os/IBinder;Landroid/os/ParcelFileDescriptor;I)Z
.end method

.method public abstract setCustomImageForPackage(Landroid/content/ComponentName;ILandroid/os/ParcelFileDescriptor;I)Z
.end method

.method public abstract setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract skipProcessContentProviderPublishTimedOutLocked(Lcom/android/server/am/ProcessRecord;)Z
.end method

.method public abstract skipReusedAppNotRespondingProc(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
.end method

.method public abstract trimOnlyThumbnailForTaskLocked(Lcom/android/server/am/RecentTasks;Lcom/android/server/am/TaskRecord;I)V
.end method

.method public abstract unregisterTaskWatcher(ILcom/samsung/android/app/ITaskWatcher;IIZ)V
.end method

.method public abstract updatePreBootCscFile()V
.end method

.method public abstract updatedTopTask(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/TaskRecord;)V
.end method
