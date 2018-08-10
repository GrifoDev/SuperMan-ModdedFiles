.class public interface abstract Lcom/samsung/android/aod/AODListener;
.super Ljava/lang/Object;
.source "AODListener.java"


# virtual methods
.method public abstract onScreenTurningOn()V
.end method

.method public abstract onUpdateCalendarData(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateNotificationKeys(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onUpdateSmartAlertNotifications([Landroid/service/notification/StatusBarNotification;)V
.end method

.method public abstract onUpdateStatusBarNotifications(I[Landroid/service/notification/StatusBarNotification;)V
.end method
