.class Lcom/android/systemui/recents/views/RecentsSlidingView$2;
.super Ljava/lang/Object;
.source "RecentsSlidingView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/RecentsSlidingView;->onBusEvent(Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

.field final synthetic val$event:Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/RecentsSlidingView;Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    iput-object p2, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->val$event:Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetViews()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->this$0:Lcom/android/systemui/recents/views/RecentsSlidingView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/RecentsSlidingView;->resetViews()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsSlidingView$2;->val$event:Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;

    iget-object v1, v1, Lcom/android/systemui/recents/events/activity/LaunchTaskPostEvent;->postRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
