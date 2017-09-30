.class public Lcom/android/incallui/util/SecAnimationUtils$Scale;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/SecAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Scale"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V
    .locals 8

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p5, v0

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/util/SecAnimationUtils$Scale$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/incallui/util/SecAnimationUtils$Scale$2;-><init>(Landroid/view/View;II)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v7

    new-instance v0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;

    move v1, p6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;-><init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    invoke-virtual {v7, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static scaleToHide(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    goto :goto_0
.end method

.method public static scaleToShow(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7

    const/4 v6, 0x1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    goto :goto_0
.end method
