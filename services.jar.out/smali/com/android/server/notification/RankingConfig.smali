.class public interface abstract Lcom/android/server/notification/RankingConfig;
.super Ljava/lang/Object;
.source "RankingConfig.java"


# virtual methods
.method public abstract badgingEnabled(Landroid/os/UserHandle;)Z
.end method

.method public abstract canShowBadge(Ljava/lang/String;I)Z
.end method

.method public abstract createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V
.end method

.method public abstract createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;Z)V
.end method

.method public abstract deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract getImportance(Ljava/lang/String;I)I
.end method

.method public abstract getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;
.end method

.method public abstract getNotificationChannelGroups(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationChannelGroups(Ljava/lang/String;I)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getNotificationChannels(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation
.end method

.method public abstract permanentlyDeleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract permanentlyDeleteNotificationChannels(Ljava/lang/String;I)V
.end method

.method public abstract setImportance(Ljava/lang/String;II)V
.end method

.method public abstract setShowBadge(Ljava/lang/String;IZ)V
.end method

.method public abstract updateNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
.end method
