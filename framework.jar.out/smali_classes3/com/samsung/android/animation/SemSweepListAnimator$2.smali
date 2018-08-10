.class Lcom/samsung/android/animation/SemSweepListAnimator$2;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;->onActionUp(Landroid/view/MotionEvent;Landroid/view/View;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

.field final synthetic val$position:I

.field final synthetic val$viewForeground:Landroid/view/View;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput-object p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$viewForeground:Landroid/view/View;

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$width:I

    iput p4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get4(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$viewForeground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$width:I

    int-to-float v2, v2

    div-float v0, v1, v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->doUpActionWhenAnimationUpdate(IF)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get4(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method
