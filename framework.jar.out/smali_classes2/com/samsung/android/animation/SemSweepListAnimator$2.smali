.class Lcom/samsung/android/animation/SemSweepListAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemSweepListAnimator.java"


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


# direct methods
.method constructor <init>(Lcom/samsung/android/animation/SemSweepListAnimator;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/animation/SemSweepListAnimator;
    .param p2, "val$position"    # I

    .prologue
    .line 337
    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 345
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 406
    :cond_0
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : Animation is back, call resetSweepInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 408
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 409
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : send onSweepEnd"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    .line 414
    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : call resetSweepAnimatinFilter "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap0(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    .line 344
    return-void

    .line 346
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get4(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 347
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "SemSweepListAnimator : onActionUp : animator : onAnimationEnd : prepare copy bitmap to animate fade.. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 349
    .local v2, "tempBd":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 350
    .local v0, "copiedBitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get1(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-set0(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    .line 351
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 354
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 355
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : create fadeOut animator #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_7
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "SemSweepListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animator : sweepBdToFade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_8
    const/16 v3, 0xff

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 359
    .local v1, "fadeOutAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 360
    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$2$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemSweepListAnimator$2$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$2;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 371
    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$2;->val$position:I

    invoke-direct {v3, p0, v4, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$2$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$2;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 402
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : fadeOutAnimator.start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_9
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 340
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemSweepListAnimator"

    const-string/jumbo v1, "animator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    return-void
.end method
