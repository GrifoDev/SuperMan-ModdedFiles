.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->moveScrollPosition(ZLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

.field final synthetic val$finalScrollPosition:I

.field final synthetic val$toRightEdge:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->val$toRightEdge:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->val$finalScrollPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->val$toRightEdge:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x11

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/HorizontalScrollView;->fullScroll(I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x42

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->val$finalScrollPosition:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContentScrollView:Landroid/widget/HorizontalScrollView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$14;->val$finalScrollPosition:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_1
.end method
