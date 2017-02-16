.class public Lcom/android/systemui/classifier/Stroke;
.super Ljava/lang/Object;
.source "Stroke.java"


# instance fields
.field private final NANOS_TO_SECONDS:F

.field private final mDpi:F

.field private mEndTimeNano:J

.field private mLength:F

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mStartTimeNano:J


# direct methods
.method public constructor <init>(JF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x4e6e6b28    # 1.0E9f

    iput v0, p0, Lcom/android/systemui/classifier/Stroke;->NANOS_TO_SECONDS:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    iput p3, p0, Lcom/android/systemui/classifier/Stroke;->mDpi:F

    iput-wide p1, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    iput-wide p1, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    return-void
.end method


# virtual methods
.method public addPoint(FFJ)V
    .locals 7

    iput-wide p3, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    new-instance v0, Lcom/android/systemui/classifier/Point;

    iget v1, p0, Lcom/android/systemui/classifier/Stroke;->mDpi:F

    div-float v1, p1, v1

    iget v2, p0, Lcom/android/systemui/classifier/Stroke;->mDpi:F

    div-float v2, p2, v2

    iget-wide v4, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    sub-long v4, p3, v4

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/systemui/classifier/Point;-><init>(FFJ)V

    iget-object v1, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v2, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    iget-object v1, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDurationNanos()J
    .locals 4

    iget-wide v0, p0, Lcom/android/systemui/classifier/Stroke;->mEndTimeNano:J

    iget-wide v2, p0, Lcom/android/systemui/classifier/Stroke;->mStartTimeNano:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDurationSeconds()F
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/classifier/Stroke;->getDurationNanos()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    return v0
.end method

.method public getEndPointLength()F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, v1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v0

    return v0
.end method

.method public getPoints()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/classifier/Stroke;->mPoints:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalLength()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/classifier/Stroke;->mLength:F

    return v0
.end method
