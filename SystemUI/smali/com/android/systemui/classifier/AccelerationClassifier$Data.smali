.class Lcom/android/systemui/classifier/AccelerationClassifier$Data;
.super Ljava/lang/Object;
.source "AccelerationClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AccelerationClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field maxSpeedRatio:F

.field previousPoint:Lcom/android/systemui/classifier/Point;

.field previousSpeed:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/classifier/Point;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    iput v0, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    invoke-virtual {v3, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    iget-wide v4, p1, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    iget-object v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    iget-wide v6, v3, Lcom/android/systemui/classifier/Point;->timeOffsetNano:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    long-to-float v1, v4

    div-float v2, v0, v1

    const v3, 0x4b989680    # 2.0E7f

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_0

    const v3, 0x4a989680    # 5000000.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_1

    :cond_0
    iput v8, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    iget v4, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    div-float v4, v2, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->maxSpeedRatio:F

    :cond_2
    iput v2, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousSpeed:F

    iput-object p1, p0, Lcom/android/systemui/classifier/AccelerationClassifier$Data;->previousPoint:Lcom/android/systemui/classifier/Point;

    return-void
.end method
