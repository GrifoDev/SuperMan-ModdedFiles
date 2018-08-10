.class Lcom/android/systemui/recents/views/RecentsSlidingView$1;
.super Ljava/lang/Object;
.source "RecentsSlidingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsSlidingView;->toggle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

.field final synthetic val$hideTarget:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->val$hideTarget:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->val$hideTarget:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iget-object v0, v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iget-object v1, v1, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$1;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iput-object v2, v0, Lcom/android/systemui/recents/views/RecentsSlidingView;->mPendingLaunchTaskEvent:Lcom/android/systemui/recents/events/EventBus$Event;

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
