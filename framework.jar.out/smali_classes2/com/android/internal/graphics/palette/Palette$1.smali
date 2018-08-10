.class final Lcom/android/internal/graphics/palette/Palette$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static final BLACK_MAX_LIGHTNESS:F = 0.05f

.field private static final WHITE_MIN_LIGHTNESS:F = 0.95f


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isBlack([F)Z
    .locals 2

    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNearRedILine([F)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v2, p1, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p1, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p1, v0

    const v3, 0x3f51eb85    # 0.82f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private isWhite([F)Z
    .locals 2

    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAllowed(I[F)Z
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isWhite([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isBlack([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/graphics/palette/Palette$1;->isNearRedILine([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
