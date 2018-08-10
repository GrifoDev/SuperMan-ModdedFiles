.class Lcom/samsung/android/animation/SemSweepListAnimator$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

.field final synthetic val$copiedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;ILandroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : send onSweepEnd #2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$position:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : recycle mSweepBdToFade"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$1;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1, v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-set0(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : recycle copiedBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemSweepListAnimator"

    const-string/jumbo v1, "fadeOutAnimator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
