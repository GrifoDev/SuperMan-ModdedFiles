.class public Lcom/android/systemui/classifier/SpeedRatioEvaluator;
.super Ljava/lang/Object;
.source "SpeedRatioEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(F)F
    .locals 7

    const/4 v2, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    cmpl-float v1, p0, v2

    if-nez v1, :cond_0

    return v2

    :cond_0
    float-to-double v2, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_1
    float-to-double v2, p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v2, v4

    if-gtz v1, :cond_2

    add-float/2addr v0, v6

    :cond_2
    float-to-double v2, p0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_3

    add-float/2addr v0, v6

    :cond_3
    float-to-double v2, p0

    const-wide/high16 v4, 0x4032000000000000L    # 18.0

    cmpl-double v1, v2, v4

    if-lez v1, :cond_4

    add-float/2addr v0, v6

    :cond_4
    return v0
.end method
