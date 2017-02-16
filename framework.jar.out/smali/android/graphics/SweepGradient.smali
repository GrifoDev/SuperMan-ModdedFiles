.class public Landroid/graphics/SweepGradient;
.super Landroid/graphics/Shader;
.source "SweepGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_START_AND_COLOR_END:I = 0x2


# instance fields
.field private mColor0:I

.field private mColor1:I

.field private mColors:[I

.field private mCx:F

.field private mCy:F

.field private mPositions:[F

.field private mType:I


# direct methods
.method public constructor <init>(FFII)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "color0"    # I
    .param p4, "color1"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 77
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 78
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 79
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 80
    iput p3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    .line 81
    iput p4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    .line 82
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate2(FFII)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/SweepGradient;->init(J)V

    .line 76
    return-void
.end method

.method public constructor <init>(FF[I[F)V
    .locals 2
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "colors"    # [I
    .param p4, "positions"    # [F

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 53
    array-length v0, p3

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_1

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 58
    const-string/jumbo v1, "color and position arrays must be of equal length"

    .line 57
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/SweepGradient;->mType:I

    .line 61
    iput p1, p0, Landroid/graphics/SweepGradient;->mCx:F

    .line 62
    iput p2, p0, Landroid/graphics/SweepGradient;->mCy:F

    .line 63
    iput-object p3, p0, Landroid/graphics/SweepGradient;->mColors:[I

    .line 64
    iput-object p4, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    .line 65
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/SweepGradient;->nativeCreate1(FF[I[F)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/SweepGradient;->init(J)V

    .line 52
    return-void
.end method

.method private static native nativeCreate1(FF[I[F)J
.end method

.method private static native nativeCreate2(FFII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 91
    iget v1, p0, Landroid/graphics/SweepGradient;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "SweepGradient should be created with either colors and positions or start color and end color"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :pswitch_0
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v3, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v4, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget-object v1, p0, Landroid/graphics/SweepGradient;->mColors:[I

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 94
    iget-object v5, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    if-eqz v5, :cond_0

    iget-object v2, p0, Landroid/graphics/SweepGradient;->mPositions:[F

    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [F

    .line 93
    :cond_0
    invoke-direct {v0, v3, v4, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 103
    .local v0, "copy":Landroid/graphics/SweepGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/SweepGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 104
    return-object v0

    .line 97
    .end local v0    # "copy":Landroid/graphics/SweepGradient;
    :pswitch_1
    new-instance v0, Landroid/graphics/SweepGradient;

    iget v1, p0, Landroid/graphics/SweepGradient;->mCx:F

    iget v2, p0, Landroid/graphics/SweepGradient;->mCy:F

    iget v3, p0, Landroid/graphics/SweepGradient;->mColor0:I

    iget v4, p0, Landroid/graphics/SweepGradient;->mColor1:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FFII)V

    .line 98
    .restart local v0    # "copy":Landroid/graphics/SweepGradient;
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
