.class public Landroid/graphics/LinearGradient;
.super Landroid/graphics/Shader;
.source "LinearGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mPositions:[F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method public constructor <init>(FFFFIILandroid/graphics/Shader$TileMode;)V
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "color0"    # I
    .param p6, "color1"    # I
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 83
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 84
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 85
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 86
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 87
    iput p5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    .line 88
    iput p6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    .line 89
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 90
    iget v7, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate2(FFFFIII)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/LinearGradient;->init(J)V

    .line 81
    return-void
.end method

.method public constructor <init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F
    .param p5, "colors"    # [I
    .param p6, "positions"    # [F
    .param p7, "tile"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 54
    array-length v0, p5

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-eqz p6, :cond_1

    array-length v0, p5

    array-length v1, p6

    if-eq v0, v1, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/LinearGradient;->mType:I

    .line 61
    iput p1, p0, Landroid/graphics/LinearGradient;->mX0:F

    .line 62
    iput p2, p0, Landroid/graphics/LinearGradient;->mY0:F

    .line 63
    iput p3, p0, Landroid/graphics/LinearGradient;->mX1:F

    .line 64
    iput p4, p0, Landroid/graphics/LinearGradient;->mY1:F

    .line 65
    iput-object p5, p0, Landroid/graphics/LinearGradient;->mColors:[I

    .line 66
    iput-object p6, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    .line 67
    iput-object p7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 68
    iget v7, p7, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;->nativeCreate1(FFFF[I[FI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/LinearGradient;->init(J)V

    .line 53
    return-void
.end method

.method private native nativeCreate1(FFFF[I[FI)J
.end method

.method private native nativeCreate2(FFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 99
    iget v1, p0, Landroid/graphics/LinearGradient;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 108
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "LinearGradient should be created with either colors and positions or start color and end color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :pswitch_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v2, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v3, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget-object v5, p0, Landroid/graphics/LinearGradient;->mColors:[I

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 102
    iget-object v7, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    if-eqz v7, :cond_0

    iget-object v6, p0, Landroid/graphics/LinearGradient;->mPositions:[F

    invoke-virtual {v6}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [F

    :cond_0
    iget-object v7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 101
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 111
    .local v0, "copy":Landroid/graphics/LinearGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/LinearGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 112
    return-object v0

    .line 105
    .end local v0    # "copy":Landroid/graphics/LinearGradient;
    :pswitch_1
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Landroid/graphics/LinearGradient;->mX0:F

    iget v2, p0, Landroid/graphics/LinearGradient;->mY0:F

    iget v3, p0, Landroid/graphics/LinearGradient;->mX1:F

    iget v4, p0, Landroid/graphics/LinearGradient;->mY1:F

    iget v5, p0, Landroid/graphics/LinearGradient;->mColor0:I

    iget v6, p0, Landroid/graphics/LinearGradient;->mColor1:I

    iget-object v7, p0, Landroid/graphics/LinearGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 106
    .restart local v0    # "copy":Landroid/graphics/LinearGradient;
    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
