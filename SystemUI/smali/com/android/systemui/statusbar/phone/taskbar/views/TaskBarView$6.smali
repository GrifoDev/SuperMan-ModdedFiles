.class Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;
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

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;
    }
.end annotation


# instance fields
.field final handler:Landroid/os/Handler;

.field final mAllAppsIconRunnable:Ljava/lang/Runnable;

.field mIsLongPressed:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mIsLongPressed:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mAllAppsIconRunnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mAllAppsIconRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mIsLongPressed:Z

    return v7

    :cond_0
    if-ne v0, v7, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mAllAppsIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mIsLongPressed:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView$6;->mIsLongPressed:Z

    return v1

    :cond_1
    return v6
.end method
