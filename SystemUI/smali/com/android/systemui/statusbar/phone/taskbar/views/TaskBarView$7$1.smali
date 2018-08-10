.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->onScrollChange(Landroid/view/View;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-wide/16 v4, 0xc8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;)J

    move-result-wide v2

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;J)J

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mChildren:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;)I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutChildren;->updateScrollingState(ZI)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateScrollStatus(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$7;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
