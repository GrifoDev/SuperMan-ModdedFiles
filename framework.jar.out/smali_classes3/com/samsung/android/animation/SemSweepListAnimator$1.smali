.class Lcom/samsung/android/animation/SemSweepListAnimator$1;
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

    iput-object p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    iput p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->isAnimationBack()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get4(Lcom/samsung/android/animation/SemSweepListAnimator;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "onActionUp : animator : onAnimationEnd : prepare copy bitmap to animate fade.. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/animation/SemSweepTranslationFilter;

    invoke-virtual {v3}, Lcom/samsung/android/animation/SemSweepTranslationFilter;->getSweepBitmapDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "onActionUp : animator : onAnimationEnd : send onSweepEnd #1"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap0(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "onActionUp : animator : onAnimationEnd : failed getBitmap() and so can not copy bitmap, return"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get1(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v3, v4}, Lcom/samsung/android/animation/SemSweepListAnimator;->-set0(Lcom/samsung/android/animation/SemSweepListAnimator;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : create fadeOut animator #2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "SemSweepListAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animator : sweepBdToFade = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get5(Lcom/samsung/android/animation/SemSweepListAnimator;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/16 v3, 0xff

    const/4 v4, 0x0

    filled-new-array {v3, v4}, [I

    move-result-object v3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/animation/SemSweepListAnimator$1$1;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    invoke-direct {v3, p0, v4, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$1$2;-><init>(Lcom/samsung/android/animation/SemSweepListAnimator$1;ILandroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : fadeOutAnimator.start()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_8
    :goto_0
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : call resetSweepAnimationFilter "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap0(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    return-void

    :cond_a
    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : Animation is back, call resetSweepInfo()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-wrap1(Lcom/samsung/android/animation/SemSweepListAnimator;)V

    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v3, "SemSweepListAnimator"

    const-string/jumbo v4, "animator : onAnimationEnd : send onSweepEnd #3"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v3}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get2(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->val$position:I

    iget-object v5, p0, Lcom/samsung/android/animation/SemSweepListAnimator$1;->this$0:Lcom/samsung/android/animation/SemSweepListAnimator;

    invoke-static {v5}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get3(Lcom/samsung/android/animation/SemSweepListAnimator;)Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/animation/SemAbsSweepAnimationFilter;->getEndXOfActionUpAnimator()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/samsung/android/animation/SemSweepListAnimator$OnSweepListener;->onSweepEnd(IF)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/animation/SemSweepListAnimator;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SemSweepListAnimator"

    const-string/jumbo v1, "animator : onAnimationStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
