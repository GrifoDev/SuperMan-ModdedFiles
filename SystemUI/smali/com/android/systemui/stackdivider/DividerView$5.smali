.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$endAction:Ljava/lang/Runnable;

.field final synthetic val$endDelay:J

.field final synthetic val$notCancelledEndAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-wide p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const-wide/16 v4, 0x0

    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endDelay:J

    :cond_0
    :goto_0
    cmp-long v2, v0, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->animatingDockedStackForResizableHome(Z)V

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get5(Lcom/android/systemui/stackdivider/DividerView;)Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/SurfaceFlingerVsyncChoreographer;->getSurfaceFlingerOffsetMs()J

    move-result-wide v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$endAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->mCancelled:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/DividerView;->-get4(Lcom/android/systemui/stackdivider/DividerView;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$notCancelledEndAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
