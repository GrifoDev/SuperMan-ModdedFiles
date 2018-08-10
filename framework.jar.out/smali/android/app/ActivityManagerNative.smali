.class public abstract Landroid/app/ActivityManagerNative;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 1

    invoke-static {p0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p2, p3}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;II)V

    return-void
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    invoke-static {}, Landroid/app/ActivityManager;->isSystemReady()Z

    move-result v0

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/ActivityManager;->noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V

    return-void
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V

    return-void
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/app/ActivityManager;->noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
