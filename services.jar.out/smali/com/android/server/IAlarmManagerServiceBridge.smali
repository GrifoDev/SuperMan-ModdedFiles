.class public interface abstract Lcom/android/server/IAlarmManagerServiceBridge;
.super Ljava/lang/Object;
.source "IAlarmManagerServiceBridge.java"


# virtual methods
.method public abstract applyDozeModeWhitelist(Ljava/lang/String;ILandroid/app/PendingIntent;Landroid/app/IAlarmListener;)I
.end method

.method public abstract cancelPendingIdleUntil(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;)V
.end method

.method public abstract checkMaliciousAppLocked()V
.end method

.method public abstract checkMaxInterval(J)J
.end method

.method public abstract clearAlarmMaps()V
.end method

.method public abstract clearCancelAlarmList()V
.end method

.method public abstract getCancelAlarmList()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isAlarmCountRestrictionSupported()Z
.end method

.method public abstract notifyCancelAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
.end method

.method public abstract notifyDeliverListenerLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
.end method

.method public abstract notifyDeliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
.end method

.method public abstract notifyRemoveAlarmAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifyRemoveAlarmActionFromMARs(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract notifyRemoveCancelAlarmAction(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract notifySendAlarmEvent()V
.end method

.method public abstract notifySetAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)V
.end method

.method public abstract notifySetAutoPowerUp(Ljava/lang/String;)V
.end method

.method public abstract notifySetLocked(IJ)V
.end method

.method public abstract notifySetTime(J)V
.end method

.method public abstract notifySetTimeZone(Ljava/lang/String;)V
.end method

.method public abstract notifyWaitForAlarm(I)V
.end method

.method public abstract onStart()V
.end method

.method public abstract putAlarmMaps(Lcom/android/server/AlarmManagerService$Alarm;)V
.end method

.method public abstract putCancelAlarmList(Landroid/app/PendingIntent;)V
.end method

.method public abstract removeAlarmMaps(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Lcom/android/server/AlarmManagerService$Alarm;
.end method

.method public abstract restorePendingWhileIdleAlarmsLocked(Ljava/lang/String;)V
.end method

.method public abstract setPendingIdleUntilLocked(Lcom/android/server/AlarmManagerService$Alarm;Z)V
.end method
