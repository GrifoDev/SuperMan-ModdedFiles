.class final Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTENING_HYSTERESIS:F = 0.1f

.field private static final DEFAULT_DARKENING_HYSTERESIS:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private final mBrightLevels:[F

.field private final mDarkLevels:[F

.field private final mLuxLevels:[F


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 3

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    invoke-direct {p0, p2, v2}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p3, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    return-void
.end method

.method private getReferenceLevel(F[F)F
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    array-length v1, v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v1, p2, v0

    return v1
.end method

.method private setArrayFormat([IF)[F
    .locals 3

    array-length v2, p1

    new-array v1, v2, [F

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_0

    aget v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .locals 3

    iget-object v2, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float v1, p1, v2

    return v1
.end method

.method public getDarkeningThreshold(F)F
    .locals 3

    iget-object v2, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, p1, v2

    return v1
.end method
