.class Lcom/android/systemui/statusbar/phone/StatusBar$31$5;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$31;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

.field final synthetic val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->val$rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotificationRanking(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get45(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$5;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get45(Lcom/android/systemui/statusbar/phone/StatusBar;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
