.class public Lcom/android/systemui/classifier/AnglesPercentageEvaluator;
.super Ljava/lang/Object;
.source "AnglesPercentageEvaluator.java"


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

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    float-to-double v2, p0

    const-wide v4, 0x3feccccccccccccdL    # 0.9

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    add-float/2addr v0, v6

    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    add-float/2addr v0, v6

    :cond_2
    return v0
.end method
