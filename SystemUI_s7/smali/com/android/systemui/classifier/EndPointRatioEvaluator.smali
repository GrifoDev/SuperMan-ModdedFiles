.class public Lcom/android/systemui/classifier/EndPointRatioEvaluator;
.super Ljava/lang/Object;
.source "EndPointRatioEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    float-to-double v2, p0

    const-wide v4, 0x3feb333333333333L    # 0.85

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    add-float/2addr v0, v6

    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    add-float/2addr v0, v6

    :cond_2
    float-to-double v2, p0

    const-wide v4, 0x3fe199999999999aL    # 0.55

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    add-float/2addr v0, v6

    :cond_3
    float-to-double v2, p0

    const-wide v4, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    add-float/2addr v0, v6

    :cond_4
    float-to-double v2, p0

    const-wide v4, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    add-float/2addr v0, v6

    :cond_5
    return v0
.end method
