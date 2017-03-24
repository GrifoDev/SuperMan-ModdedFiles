.class Lcom/android/systemui/stackdivider/DividerView$5;
.super Ljava/lang/Object;
.source "DividerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/stackdivider/DividerView;->getFlingAnimator(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;J)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/DividerView;

.field final synthetic val$anim:Landroid/animation/ValueAnimator;

.field final synthetic val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

.field final synthetic val$taskPositionSameAtEnd:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/DividerView;Landroid/animation/ValueAnimator;ZLcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    iput-object p2, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$anim:Landroid/animation/ValueAnimator;

    iput-boolean p3, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$taskPositionSameAtEnd:Z

    iput-object p4, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->isHorizontalDivision()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get0(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$taskPositionSameAtEnd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->this$0:Lcom/android/systemui/stackdivider/DividerView;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/DividerView;->-get2(Lcom/android/systemui/stackdivider/DividerView;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    iget v0, v0, Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;->taskPosition:I

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerView$5;->val$snapTarget:Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/systemui/stackdivider/DividerView;->resizeStack(IILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;)V

    return-void

    :cond_2
    const v0, 0x7fffffff

    goto :goto_0
.end method
