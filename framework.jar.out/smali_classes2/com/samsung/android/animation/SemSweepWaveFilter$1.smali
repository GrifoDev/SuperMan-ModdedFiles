.class Lcom/samsung/android/animation/SemSweepWaveFilter$1;
.super Ljava/lang/Object;
.source "SemSweepWaveFilter.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepWaveFilter;->initWaveParams(FILcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepWaveFilter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-get2(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v2

    mul-float/2addr v2, v0

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-set0(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    neg-float v2, v0

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-get2(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v4

    invoke-static {v1, v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-set1(Lcom/samsung/android/animation/SemSweepWaveFilter;F)F

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    iget-object v2, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v2}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-get1(Lcom/samsung/android/animation/SemSweepWaveFilter;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->this$0:Lcom/samsung/android/animation/SemSweepWaveFilter;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-get0(Lcom/samsung/android/animation/SemSweepWaveFilter;)F

    move-result v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepWaveFilter$1;->val$position:I

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/animation/SemSweepWaveFilter;->-wrap0(Lcom/samsung/android/animation/SemSweepWaveFilter;Landroid/view/View;FI)V

    return-void
.end method
