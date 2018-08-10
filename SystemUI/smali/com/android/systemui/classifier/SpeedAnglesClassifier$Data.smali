.class Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;
.super Ljava/lang/Object;
.source "SpeedAnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/SpeedAnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private final DURATION_SCALE:F

.field private final LENGTH_SCALE:F

.field private mAcceleratingAngles:F

.field private mAnglesCount:F

.field private mCount:F

.field private mDist:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAngle:F

.field private mPreviousPoint:Lcom/android/systemui/classifier/Point;

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4cbebc20    # 1.0E8f

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->DURATION_SCALE:F

    iput v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->LENGTH_SCALE:F

    const v0, 0x3ea0d97c

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->ANGLE_DEVIATION:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    const v0, 0x40490fdb    # (float)Math.PI

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iput v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iput v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 8

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v4, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousPoint:Lcom/android/systemui/classifier/Point;

    new-instance v2, Lcom/android/systemui/classifier/Point;

    iget-wide v4, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    long-to-float v3, v4

    const v4, 0x4cbebc20    # 1.0E8f

    div-float/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mDist:F

    div-float/2addr v4, v7

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/classifier/Point;-><init>(FF)V

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, v2}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/classifier/Point;

    iget-object v4, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/classifier/Point;

    iget-object v5, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mLastThreePoints:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result v0

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    add-float/2addr v3, v7

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const v3, 0x4034f4ac

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    add-float/2addr v3, v7

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    :cond_2
    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    sub-float v1, v0, v3

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-float v3, v4

    iput v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    iput v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mPreviousAngle:F

    :cond_3
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 2

    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAcceleratingAngles:F

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mAnglesCount:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getAnglesVariance()F
    .locals 4

    iget v0, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSumSquares:F

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mSum:F

    iget v3, p0, Lcom/android/systemui/classifier/SpeedAnglesClassifier$Data;->mCount:F

    div-float/2addr v2, v3

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method
