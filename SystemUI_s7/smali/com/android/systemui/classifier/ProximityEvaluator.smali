.class public Lcom/android/systemui/classifier/ProximityEvaluator;
.super Ljava/lang/Object;
.source "ProximityEvaluator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static evaluate(FI)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    if-nez p1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_0
    cmpl-float v2, p0, v1

    if-ltz v2, :cond_1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    double-to-float v0, v2

    :cond_1
    return v0
.end method
