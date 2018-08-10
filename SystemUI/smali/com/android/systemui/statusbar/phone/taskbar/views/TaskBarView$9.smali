.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->setup(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->closeContextMenu()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get11(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    :goto_3
    invoke-virtual {v1, v0, v4}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    goto :goto_3

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get11(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$9;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a00b8
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
