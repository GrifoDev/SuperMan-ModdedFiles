.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get5(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get3(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-virtual {v1, v0, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollBy(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get11(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get7(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get6(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)I

    move-result v0

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method
