.class Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;
.super Ljava/lang/Object;
.source "CoverNotificationMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .locals 14

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v1, v9, Landroid/app/Notification;->priority:I

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v5, v9, Landroid/app/Notification;->priority:I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v2, v9, Landroid/app/Notification;->semPriority:I

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget v6, v9, Landroid/app/Notification;->semPriority:I

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getCurrentlyPlayingPacakge()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, -0x2

    if-le v1, v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, -0x2

    if-le v5, v9, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v9, 0x2

    if-lt v1, v9, :cond_2

    invoke-static {p1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    :goto_2
    const/4 v9, 0x2

    if-lt v5, v9, :cond_3

    invoke-static/range {p2 .. p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v7

    :goto_3
    if-eq v2, v6, :cond_5

    if-le v2, v6, :cond_4

    const/4 v9, -0x1

    :goto_4
    return v9

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    if-eq v0, v4, :cond_7

    if-eqz v0, :cond_6

    const/4 v9, -0x1

    :goto_5
    return v9

    :cond_6
    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    if-eq v3, v7, :cond_9

    if-eqz v3, :cond_8

    const/4 v9, -0x1

    :goto_6
    return v9

    :cond_8
    const/4 v9, 0x1

    goto :goto_6

    :cond_9
    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object v9, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v9}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v9

    invoke-virtual {v9}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v9

    iget-object v10, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v10}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v10

    invoke-virtual {v10}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v10

    sub-int/2addr v9, v10

    return v9

    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-wide v10, v9, Landroid/app/Notification;->when:J

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v9

    iget-wide v12, v9, Landroid/app/Notification;->when:J

    sub-long/2addr v10, v12

    long-to-int v9, v10

    return v9
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method
