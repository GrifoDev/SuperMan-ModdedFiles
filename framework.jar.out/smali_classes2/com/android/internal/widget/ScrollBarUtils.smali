.class public Lcom/android/internal/widget/ScrollBarUtils;
.super Ljava/lang/Object;
.source "ScrollBarUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbLength(IIII)I
    .locals 4

    mul-int/lit8 v1, p1, 0x2

    int-to-float v2, p0

    int-to-float v3, p2

    mul-float/2addr v2, v3

    int-to-float v3, p3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static getThumbOffset(IIIII)I
    .locals 3

    sub-int v1, p0, p1

    int-to-float v1, v1

    int-to-float v2, p4

    mul-float/2addr v1, v2

    sub-int v2, p3, p2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int v1, p0, p1

    if-le v0, v1, :cond_0

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method
