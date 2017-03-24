.class final Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;
.super Ljava/lang/Object;
.source "VolumeDialogMotion.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogMotion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogDecelerateInterpolator"
.end annotation


# instance fields
.field private final mBase:F

.field private final mDrift:F

.field private final mOutputScale:F

.field private final mTimeScale:F


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x43c80000    # 400.0f

    const v2, 0x3fb33333    # 1.4f

    invoke-direct {p0, v1, v2, v0}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>(FFF)V

    return-void
.end method

.method private constructor <init>(FFF)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mBase:F

    iput p3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mDrift:F

    div-float v0, v1, p2

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mTimeScale:F

    invoke-direct {p0, v1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mOutputScale:F

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;-><init>()V

    return-void
.end method

.method private computeLog(F)F
    .locals 4

    iget v0, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mBase:F

    float-to-double v0, v0

    neg-float v2, p1

    iget v3, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mTimeScale:F

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mDrift:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->computeLog(F)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/volume/VolumeDialogMotion$LogDecelerateInterpolator;->mOutputScale:F

    mul-float/2addr v0, v1

    return v0
.end method
