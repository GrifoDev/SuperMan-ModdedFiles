.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(F)F
    .locals 3

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    :cond_0
    :goto_0
    return p0

    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    aget v0, p1, v2

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v3

    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getMinValue(I)F
    .locals 1

    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget v0, p1, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    aget v0, p1, v2

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v2

    aget v0, p1, v3

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v3

    return-object p1
.end method
