.class public Lcom/android/incallui/util/SecAnimationUtils$Scale;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


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

    .prologue
    .line 912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V
    .locals 10
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "destView"    # Landroid/view/View;
    .param p3, "startScaleValue"    # F
    .param p4, "endScaleValue"    # F
    .param p5, "newHeight"    # I
    .param p6, "show"    # Z

    .prologue
    .line 949
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    .line 952
    .local v6, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 954
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleX(F)V

    .line 955
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 957
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 959
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    .line 960
    .local v8, "oldHeight":I
    sub-int v7, p5, v8

    .line 962
    .local v7, "deltaHeight":I
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 963
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 964
    invoke-virtual {v0, p4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    .line 965
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/util/SecAnimationUtils$Scale$2;

    invoke-direct {v1, p0, v7, v8}, Lcom/android/incallui/util/SecAnimationUtils$Scale$2;-><init>(Landroid/view/View;II)V

    .line 966
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v9

    new-instance v0, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;

    move/from16 v1, p6

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/incallui/util/SecAnimationUtils$Scale$1;-><init>(ZLandroid/view/View;Landroid/view/View;Landroid/view/View;F)V

    .line 974
    invoke-virtual {v9, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 999
    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static scaleToHide(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "middleView"    # Landroid/view/View;
    .param p3, "rightView"    # Landroid/view/View;
    .param p4, "destView"    # Landroid/view/View;
    .param p5, "newHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 937
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 946
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 941
    .local v3, "startScaleValue":F
    const v4, 0x3dcccccd    # 0.1f

    .local v4, "endScaleValue":F
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v5, p5

    .line 943
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p5

    .line 944
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v5, p5

    .line 945
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    goto :goto_0
.end method

.method public static scaleToShow(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 7
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "leftView"    # Landroid/view/View;
    .param p2, "middleView"    # Landroid/view/View;
    .param p3, "rightView"    # Landroid/view/View;
    .param p4, "destView"    # Landroid/view/View;
    .param p5, "newHeight"    # I

    .prologue
    const/4 v6, 0x1

    .line 920
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 923
    :cond_1
    const v3, 0x3dcccccd    # 0.1f

    .line 924
    .local v3, "startScaleValue":F
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "endScaleValue":F
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v5, p5

    .line 926
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move v5, p5

    .line 927
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move v5, p5

    .line 928
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/util/SecAnimationUtils$Scale;->scaleInternal(Landroid/view/View;Landroid/view/View;Landroid/view/View;FFIZ)V

    goto :goto_0
.end method
