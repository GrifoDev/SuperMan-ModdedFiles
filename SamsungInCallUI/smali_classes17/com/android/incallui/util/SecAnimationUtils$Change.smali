.class public Lcom/android/incallui/util/SecAnimationUtils$Change;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/util/SecAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Change"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeHeight(Landroid/view/View;IZ)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "newHeight"    # I
    .param p2, "visible"    # Z

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 697
    if-nez p0, :cond_0

    .line 735
    :goto_0
    return-void

    .line 699
    :cond_0
    if-eqz p2, :cond_1

    move v2, v5

    .line 700
    .local v2, "fromAlpha":F
    :goto_1
    if-eqz p2, :cond_2

    .line 702
    .local v4, "toAlpha":F
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 703
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 705
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 707
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 708
    .local v3, "oldHeight":I
    sub-int v1, p1, v3

    .line 710
    .local v1, "deltaHeight":I
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 711
    invoke-virtual {v5, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    const-wide/16 v6, 0xfa

    .line 712
    invoke-virtual {v5, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/util/SecAnimationUtils$Change$2;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/incallui/util/SecAnimationUtils$Change$2;-><init>(Landroid/view/View;II)V

    .line 713
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/incallui/util/SecAnimationUtils$Change$1;

    invoke-direct {v6, p0, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change$1;-><init>(Landroid/view/View;I)V

    .line 721
    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    .line 732
    invoke-virtual {v5}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 734
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .end local v0    # "animator":Landroid/view/ViewPropertyAnimator;
    .end local v1    # "deltaHeight":I
    .end local v2    # "fromAlpha":F
    .end local v3    # "oldHeight":I
    .end local v4    # "toAlpha":F
    :cond_1
    move v2, v4

    .line 699
    goto :goto_1

    .restart local v2    # "fromAlpha":F
    :cond_2
    move v4, v5

    .line 700
    goto :goto_2
.end method

.method public static changeOnlyHeight(Landroid/view/View;II)V
    .locals 6
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "newHeight"    # I
    .param p2, "duration"    # I

    .prologue
    .line 743
    if-nez p0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 746
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 748
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 749
    .local v2, "oldHeight":I
    sub-int v1, p1, v2

    .line 751
    .local v1, "deltaHeight":I
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    int-to-long v4, p2

    .line 752
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/SecAnimationUtils$Change$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/incallui/util/SecAnimationUtils$Change$4;-><init>(Landroid/view/View;II)V

    .line 753
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/incallui/util/SecAnimationUtils$Change$3;

    invoke-direct {v4, p0, p1}, Lcom/android/incallui/util/SecAnimationUtils$Change$3;-><init>(Landroid/view/View;I)V

    .line 761
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 772
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 774
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static changeToHide(Landroid/view/View;)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 828
    if-nez p0, :cond_0

    .line 865
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 831
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 833
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 835
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 836
    const/4 v2, 0x0

    .line 837
    .local v2, "newHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 838
    .local v3, "oldHeight":I
    rsub-int/lit8 v1, v3, 0x0

    .line 840
    .local v1, "deltaHeight":I
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    .line 841
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$8;

    invoke-direct {v5, p0, v1, v3}, Lcom/android/incallui/util/SecAnimationUtils$Change$8;-><init>(Landroid/view/View;II)V

    .line 842
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$7;

    invoke-direct {v5, p0, v3}, Lcom/android/incallui/util/SecAnimationUtils$Change$7;-><init>(Landroid/view/View;I)V

    .line 850
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 862
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 864
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static changeToShow(Landroid/view/View;)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 783
    if-nez p0, :cond_0

    .line 820
    :goto_0
    return-void

    .line 785
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 786
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 788
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 790
    invoke-virtual {p0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 791
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 792
    .local v2, "newHeight":I
    const/4 v3, 0x0

    .line 793
    .local v3, "oldHeight":I
    add-int/lit8 v1, v2, 0x0

    .line 795
    .local v1, "deltaHeight":I
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    .line 796
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$6;

    invoke-direct {v5, p0, v1}, Lcom/android/incallui/util/SecAnimationUtils$Change$6;-><init>(Landroid/view/View;I)V

    .line 797
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$5;

    invoke-direct {v5, p0, v2}, Lcom/android/incallui/util/SecAnimationUtils$Change$5;-><init>(Landroid/view/View;I)V

    .line 805
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 817
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 819
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public static changeTopMargin(Landroid/view/View;I)V
    .locals 8
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "newTopMargin"    # I

    .prologue
    .line 873
    if-nez p0, :cond_0

    .line 906
    :goto_0
    return-void

    .line 875
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 876
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 878
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 879
    .local v3, "targetLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 880
    .local v2, "oldTopMargin":I
    sub-int v1, p1, v2

    .line 882
    .local v1, "deltaTopMargin":I
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xfa

    .line 883
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$10;

    invoke-direct {v5, v3, v1, v2, p0}, Lcom/android/incallui/util/SecAnimationUtils$Change$10;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;IILandroid/view/View;)V

    .line 884
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/android/incallui/util/SecAnimationUtils$Change$9;

    invoke-direct {v5, v3, p1, p0}, Lcom/android/incallui/util/SecAnimationUtils$Change$9;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V

    .line 892
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 903
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 905
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method
