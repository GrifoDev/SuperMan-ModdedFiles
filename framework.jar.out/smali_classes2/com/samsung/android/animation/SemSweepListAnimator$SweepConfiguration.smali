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

    .prologue
    const/4 v1, 0x1

    .line 618
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    .line 617
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "allowLeftToRight"    # Z
    .param p2, "allowRightToLeft"    # Z

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;-><init>(ZZI)V

    .line 609
    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 0
    .param p1, "allowLeftToRight"    # Z
    .param p2, "allowRightToLeft"    # Z
    .param p3, "childIdForLocationHint"    # I

    .prologue
    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 597
    iput-boolean p1, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowLeftToRight:Z

    .line 598
    iput-boolean p2, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->allowRightToLeft:Z

    .line 599
    iput p3, p0, Lcom/samsung/android/animation/SemSweepListAnimator$SweepConfiguration;->childIdForLocationHint:I

    .line 595
    return-void
.end method
