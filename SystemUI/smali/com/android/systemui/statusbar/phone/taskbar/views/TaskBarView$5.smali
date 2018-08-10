.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;
.super Ljava/lang/Object;
.source "TaskBarView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 2

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mContent:Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/taskbar/views/CellLayoutTaskbar;->mIsOverScrollViewSize:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateScrollStatus(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->mSizeControlBtn:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarButtonView;->semSetHoverPopupType(I)V

    :cond_1
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
