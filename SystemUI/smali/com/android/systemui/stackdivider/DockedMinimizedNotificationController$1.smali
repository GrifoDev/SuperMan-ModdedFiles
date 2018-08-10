.class Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "DockedMinimizedNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->registerReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get5(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "com.samsung.android.multiwindow.action.DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "onReceive : SEM_ACTION_DISMISS_MINIMIZED_DOCKED_STACK"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-set2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "DOOF"

    const-string/jumbo v4, "MinimizedNotification"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v2, "com.samsung.android.multiwindow.action.LAUNCH_DOCK_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "onReceive : SEM_ACTION_LAUNCH_DOCK_MODE"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap5(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-set2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "com.samsung.android.multiwindow.action.UPDATE_NOTIFICATION"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get4(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "onReceive : UPDATE_NOTIFICATION_MSG"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get6(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$1;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-set2(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Z)Z

    goto/16 :goto_0
.end method
