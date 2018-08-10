.class Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/percent/PercentLayoutHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PercentMarginLayoutParams"
.end annotation


# instance fields
.field private mIsHeightComputedFromAspectRatio:Z

.field private mIsWidthComputedFromAspectRatio:Z


# direct methods
.method static synthetic -get0(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsHeightComputedFromAspectRatio:Z

    return v0
.end method

.method static synthetic -get1(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsWidthComputedFromAspectRatio:Z

    return v0
.end method

.method static synthetic -set0(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsHeightComputedFromAspectRatio:Z

    return p1
.end method

.method static synthetic -set1(Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/percent/PercentLayoutHelper$PercentMarginLayoutParams;->mIsWidthComputedFromAspectRatio:Z

    return p1
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-void
.end method
