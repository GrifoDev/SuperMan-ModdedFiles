.class public Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;
.super Landroid/widget/FrameLayout;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchablePopupContainer"
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field private static final SLOP_FACTOR_POINT_IN_VIEW:I = -0x2

.field private static final TIMEOUT_DELAY:I = 0x7d0

.field private static final TIMEOUT_DISMISS_DELAY:I = 0x64


# instance fields
.field protected mContainerDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mIsHoverExitCalled:Z

.field final synthetic this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;


# direct methods
.method public constructor <init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->pointInView(FFF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    new-instance v2, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$3;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-virtual {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return v1

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get3(Lcom/samsung/android/widget/SemHoverPopupWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->this$0:Lcom/samsung/android/widget/SemHoverPopupWindow;

    invoke-static {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->-get1(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer$2;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return v0
.end method

.method public resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method
