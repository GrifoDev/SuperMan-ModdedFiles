.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

.field final synthetic val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;->this$3:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;->val$parentToCancelFinal:Landroid/service/notification/StatusBarNotification;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;->this$3:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->isCollapsing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1$1;->this$3:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2$1;->this$2:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$2;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/BaseStatusBar;->addPostCollapseAction(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
