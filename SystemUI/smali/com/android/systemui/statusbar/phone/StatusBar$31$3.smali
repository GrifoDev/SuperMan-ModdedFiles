.class Lcom/android/systemui/statusbar/phone/StatusBar$31$3;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$31;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$31;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$3;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$31$3;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$31;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar$31;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyUserAboutAppIconBadgeDismissed()V

    return-void
.end method
