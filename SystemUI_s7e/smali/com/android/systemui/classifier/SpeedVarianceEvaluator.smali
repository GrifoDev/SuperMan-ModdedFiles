.class public Lcom/android/systemui/classifier/SpeedVarianceEvaluator;
.super Ljava/lang/Object;
.source "SpeedVarianceEvaluator.java"


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

    const-wide v4, 0x3faeb851eb851eb8L    # 0.06

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    float-to-double v2, p0

    const-wide v4, 0x3fc3333333333333L    # 0.15

    cmpl-double v1, v2, v4

    if-lez v1, :cond_1

    add-float/2addr v0, v6

    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    add-float/2addr v0, v6

    :cond_2
    float-to-double v2, p0

    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    add-float/2addr v0, v6

    :cond_3
    return v0
.end method
