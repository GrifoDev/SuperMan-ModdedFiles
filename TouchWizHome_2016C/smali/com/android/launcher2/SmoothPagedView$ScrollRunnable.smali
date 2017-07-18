.class Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollRunnable"
.end annotation


# static fields
.field private static final STATE_NOT_IN_QUEUE:I = 0x0

.field private static final STATE_PAGE_SCROLLING:I = 0x1

.field private static final STATE_WAITING_TO_SCROLL:I = 0x2


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/android/launcher2/SmoothPagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/SmoothPagedView;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    return-void
.end method

.method private postForScrollToComplete()V
    .locals 4

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    iget v1, v1, Lcom/android/launcher2/SmoothPagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    return-void
.end method


# virtual methods
.method public postForScrollDelayed()V
    .locals 4

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-static {v1}, Lcom/android/launcher2/SmoothPagedView;->access$100(Lcom/android/launcher2/SmoothPagedView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    return-void
.end method

.method public removeSelf()V
    .locals 1

    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-static {v0}, Lcom/android/launcher2/SmoothPagedView;->access$200(Lcom/android/launcher2/SmoothPagedView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    iget-object v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v0}, Lcom/android/launcher2/SmoothPagedView;->invalidate()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3

    iget v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->mState:I

    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isLauncherDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollDelayed()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-static {v1}, Lcom/android/launcher2/SmoothPagedView;->access$000(Lcom/android/launcher2/SmoothPagedView;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    invoke-virtual {v1}, Lcom/android/launcher2/SmoothPagedView;->onScrollComplete()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    sget v2, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft(I)V

    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->this$0:Lcom/android/launcher2/SmoothPagedView;

    sget v2, Lcom/android/launcher2/PanelBgDrawer;->MODE_DRAG:I

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SmoothPagedView;->scrollRight(I)V

    invoke-direct {p0}, Lcom/android/launcher2/SmoothPagedView$ScrollRunnable;->postForScrollToComplete()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
