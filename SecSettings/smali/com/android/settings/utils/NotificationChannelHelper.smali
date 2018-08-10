.class public Lcom/android/settings/utils/NotificationChannelHelper;
.super Ljava/lang/Object;
.source "NotificationChannelHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;
    }
.end annotation


# instance fields
.field private mNotificationManager:Landroid/app/INotificationManager;


# virtual methods
.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/utils/NotificationChannelHelper;->mNotificationManager:Landroid/app/INotificationManager;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/utils/NotificationChannelHelper$NotificationChannelWrapper;-><init>(Lcom/android/settings/utils/NotificationChannelHelper;Landroid/app/NotificationChannel;)V

    goto :goto_0
.end method
