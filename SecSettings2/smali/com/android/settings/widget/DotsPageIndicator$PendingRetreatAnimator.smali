.class public Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRetreatAnimator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;IIILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 14

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    move-object/from16 v0, p5

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get0(Lcom/android/settings/widget/DotsPageIndicator;)J

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get3(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p2

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get8(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    sub-float v6, v8, v9

    :goto_0
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    sub-float v3, v8, v9

    :goto_1
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    add-float v7, v8, v9

    :goto_2
    move/from16 v0, p3

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    add-float v4, v8, v9

    :goto_3
    move/from16 v0, p4

    new-array v8, v0, [Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    invoke-static {p1, v8}, Lcom/android/settings/widget/DotsPageIndicator;->-set3(Lcom/android/settings/widget/DotsPageIndicator;[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move/from16 v0, p4

    new-array v2, v0, [I

    cmpl-float v8, v6, v3

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v6, v8, v9

    const/4 v9, 0x1

    aput v3, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    const/4 v5, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v5, v0, :cond_4

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get7(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    add-int v10, p2, v5

    new-instance v11, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v12

    add-int v13, p2, v5

    aget v12, v12, v13

    invoke-direct {v11, p1, v12}, Lcom/android/settings/widget/DotsPageIndicator$RightwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {v9, p1, v10, v11}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object v9, v8, v5

    add-int v8, p2, v5

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    sub-float v6, v8, v9

    goto/16 :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    sub-float v3, v8, v9

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p2

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get8(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    add-float v7, v8, v9

    goto/16 :goto_2

    :cond_3
    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v8

    aget v8, v8, p3

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get2(Lcom/android/settings/widget/DotsPageIndicator;)F

    move-result v9

    add-float v4, v8, v9

    goto :goto_3

    :cond_4
    new-instance v8, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;

    invoke-direct {v8, p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_5
    new-instance v8, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;

    invoke-direct {v8, p0, v2, v6, v7}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$3;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;[IFF)V

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_5
    const/4 v8, 0x2

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v7, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->setFloatValues([F)V

    const/4 v5, 0x0

    :goto_6
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get7(Lcom/android/settings/widget/DotsPageIndicator;)[Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    move-result-object v8

    new-instance v9, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;

    sub-int v10, p2, v5

    new-instance v11, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get1(Lcom/android/settings/widget/DotsPageIndicator;)[F

    move-result-object v12

    sub-int v13, p2, v5

    aget v12, v12, v13

    invoke-direct {v11, p1, v12}, Lcom/android/settings/widget/DotsPageIndicator$LeftwardStartPredicate;-><init>(Lcom/android/settings/widget/DotsPageIndicator;F)V

    invoke-direct {v9, p1, v10, v11}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    aput-object v9, v8, v5

    sub-int v8, p2, v5

    aput v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    new-instance v8, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;

    invoke-direct {v8, p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;)V

    invoke-virtual {p0, v8}, Lcom/android/settings/widget/DotsPageIndicator$PendingRetreatAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_5
.end method
