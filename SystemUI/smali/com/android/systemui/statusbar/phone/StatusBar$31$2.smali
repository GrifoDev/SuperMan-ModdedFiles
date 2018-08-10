.class Lcom/android/systemui/statusbar/phone/StatusBar$31$2;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$31;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap23(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/app/Notification;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mKeysKeptForRemoteInput:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/StatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->removeNotification(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->updateRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :goto_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    :try_end_0
    .catch Lcom/android/systemui/statusbar/notification/InflationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;->val$sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    goto :goto_2
.end method
