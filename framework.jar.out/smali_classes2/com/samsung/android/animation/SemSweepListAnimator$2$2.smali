.class Lcom/samsung/android/animation/SemSweepListAnimator$2$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/animation/SemSweepListAnimator$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

.field final synthetic val$copiedBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator$2;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/animation/SemSweepListAnimator$2;
    .param p2, "val$position"    # I
    .param p3, "val$copiedBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->val$position:I

    iput-object p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 383
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : send onSweepEnd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->val$position:I

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v3, v3, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    .line 387
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 388
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 389
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_4

    .line 390
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : recycle mSweepBdToFade"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 393
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->this$1:Lcom/samsung/android/animation/SemSweepListAnimator$2;

    iget-object v1, v1, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v1, v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-set0(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 396
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 397
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "SemSweepListAnimator"

    const-string/jumbo v2, "fadeOutAnimator : onAnimationEnd : recycle copiedBitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;->val$copiedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 378
    :cond_7
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 374
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemSweepListAnimator"

    const-string/jumbo v1, "fadeOutAnimator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    return-void
.end method
