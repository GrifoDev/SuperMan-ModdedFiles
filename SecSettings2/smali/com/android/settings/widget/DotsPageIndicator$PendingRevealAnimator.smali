.class public Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;
.super Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingRevealAnimator"
.end annotation


# instance fields
.field private final dot:I

.field final synthetic this$0:Lcom/android/settings/widget/DotsPageIndicator;


# direct methods
.method static synthetic -get0(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    return v0
.end method

.method public constructor <init>(Lcom/android/settings/widget/DotsPageIndicator;ILcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->this$0:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-direct {p0, p1, p3}, Lcom/android/settings/widget/DotsPageIndicator$PendingStartAnimator;-><init>(Lcom/android/settings/widget/DotsPageIndicator;Lcom/android/settings/widget/DotsPageIndicator$StartPredicate;)V

    iput p2, p0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->dot:I

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setFloatValues([F)V

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get0(Lcom/android/settings/widget/DotsPageIndicator;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-static {p1}, Lcom/android/settings/widget/DotsPageIndicator;->-get3(Lcom/android/settings/widget/DotsPageIndicator;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$1;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator$2;-><init>(Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DotsPageIndicator$PendingRevealAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3727c5ac    # 1.0E-5f
        0x3f800000    # 1.0f
    .end array-data
.end method
