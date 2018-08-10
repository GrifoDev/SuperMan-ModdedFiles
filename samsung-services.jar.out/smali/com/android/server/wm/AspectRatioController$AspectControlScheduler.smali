.class final Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;
.super Landroid/os/Handler;
.source "AspectRatioController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AspectControlScheduler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-virtual {v2}, Lcom/android/server/wm/AspectRatioController;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2, v0, v1}, Lcom/android/server/wm/AspectRatioController;->-wrap1(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    new-instance v3, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v5}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;-><init>(Lcom/android/server/wm/AspectRatioController;Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/server/wm/AspectRatioController;->-set0(Lcom/android/server/wm/AspectRatioController;Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get2(Lcom/android/server/wm/AspectRatioController;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get11(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;->resetView()V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get11(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v4}, Lcom/android/server/wm/AspectRatioController;->-wrap0(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/wm/AspectRatioController;->-set1(Lcom/android/server/wm/AspectRatioController;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get2(Lcom/android/server/wm/AspectRatioController;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get11(Lcom/android/server/wm/AspectRatioController;)Landroid/view/WindowManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v3}, Lcom/android/server/wm/AspectRatioController;->-get1(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/AspectRatioController$ChangeRatioButtonView;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/wm/AspectRatioController;->-set1(Lcom/android/server/wm/AspectRatioController;Z)Z

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2, v4}, Lcom/android/server/wm/AspectRatioController;->-set2(Lcom/android/server/wm/AspectRatioController;Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$AspectControlScheduler;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2, v4}, Lcom/android/server/wm/AspectRatioController;->-set3(Lcom/android/server/wm/AspectRatioController;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
