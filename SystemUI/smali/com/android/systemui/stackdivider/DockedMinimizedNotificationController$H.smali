.class final Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;
.super Landroid/os/Handler;
.source "DockedMinimizedNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "UPDATE_NOTIFICATION_MSG"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap6(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap0(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Ljava/lang/String;Z)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v2, v1}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap4(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/app/Notification;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DividerNotification"

    const-string/jumbo v3, "UPDATE_NOTIFICATION_CHANNEL_MSG"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get1(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController$H;->this$0:Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-get3(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;->-wrap6(Lcom/android/systemui/stackdivider/DockedMinimizedNotificationController;Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
