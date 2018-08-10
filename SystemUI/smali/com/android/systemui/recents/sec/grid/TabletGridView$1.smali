.class Lcom/android/systemui/recents/sec/grid/TabletGridView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TabletGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/sec/grid/TabletGridView;->dragReturningAnimation(Lcom/android/systemui/recents/views/TaskView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/sec/grid/TabletGridView;

.field final synthetic val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/sec/grid/TabletGridView;Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->this$0:Lcom/android/systemui/recents/sec/grid/TabletGridView;

    iput-object p2, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->onDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/sec/grid/TabletGridView$1;->val$holder:Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/recents/sec/grid/TabletGridTaskViewHolder;->revertDragging()V

    :cond_0
    return-void
.end method
