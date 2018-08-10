.class Lcom/android/systemui/statusbar/phone/StatusBar$31;
.super Landroid/service/notification/NotificationListenerService;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$31;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v2, "StatusBar"

    const-string/jumbo v3, "onListenerConnected unable to get active notifications."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$31;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v3, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar$31$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$31$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 6

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get0(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    if-eq p3, v3, :cond_0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$31$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$31$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set1(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get39(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "badgeGuideNotified"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get39(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v2, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/statusbar/phone/StatusBar$31$4;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    goto :goto_0
.end method
