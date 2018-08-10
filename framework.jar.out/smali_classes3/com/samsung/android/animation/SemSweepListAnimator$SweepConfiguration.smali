.class public Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;
.super Ljava/lang/Object;
.source "SemSweepListAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/animation/SemSweepListAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SweepConfiguration"
.end annotation


# instance fields
.field public allowLeftToRight:Z

.field public allowRightToLeft:Z

.field public backgroundColorLeftToRight:I

.field public backgroundColorRightToLeft:I

.field public childIdForLocationHint:I

.field public drawableLeftToRight:Landroid/graphics/drawable/Drawable;

.field public drawablePadding:I

.field public drawableRightToLeft:Landroid/graphics/drawable/Drawable;

.field public textLeftToRight:Ljava/lang/String;

.field public textRightToLeft:Ljava/lang/String;

.field public textSize:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    iput-boolean p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    return-void
.end method
