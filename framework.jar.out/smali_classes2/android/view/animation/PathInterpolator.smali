.class public Landroid/view/animation/PathInterpolator;
.super Landroid/view/animation/BaseInterpolator;
.source "PathInterpolator.java"


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 72
    invoke-direct {p0, p1, p2}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    .line 71
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    .prologue
    .line 84
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 85
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/animation/PathInterpolator;->setChangingConfiguration(I)V

    .line 102
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void

    .line 98
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->PathInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 60
    return-void
.end method

.method private initCubic(FFFF)V
    .locals 7
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 151
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 152
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    .line 153
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 154
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 150
    return-void
.end method

.method private initPath(Landroid/graphics/Path;)V
    .locals 13
    .param p1, "path"    # Landroid/graphics/Path;

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    .line 158
    const v10, 0x3b03126f    # 0.002f

    invoke-virtual {p1, v10}, Landroid/graphics/Path;->approximate(F)[F

    move-result-object v5

    .line 160
    .local v5, "pointComponents":[F
    array-length v10, v5

    div-int/lit8 v4, v10, 0x3

    .line 161
    .local v4, "numPoints":I
    const/4 v10, 0x1

    aget v10, v5, v10

    cmpl-float v10, v10, v11

    if-nez v10, :cond_0

    const/4 v10, 0x2

    aget v10, v5, v10

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_1

    .line 164
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path must start at (0,0) and end at (1,1)"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 162
    :cond_1
    array-length v10, v5

    add-int/lit8 v10, v10, -0x2

    aget v10, v5, v10

    cmpl-float v10, v10, v12

    if-nez v10, :cond_0

    .line 163
    array-length v10, v5

    add-int/lit8 v10, v10, -0x1

    aget v10, v5, v10

    cmpl-float v10, v10, v12

    if-nez v10, :cond_0

    .line 167
    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    .line 168
    new-array v10, v4, [F

    iput-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    .line 169
    const/4 v7, 0x0

    .line 170
    .local v7, "prevX":F
    const/4 v6, 0x0

    .line 171
    .local v6, "prevFraction":F
    const/4 v0, 0x0

    .line 172
    .local v0, "componentIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    move v1, v0

    .end local v0    # "componentIndex":I
    .local v1, "componentIndex":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 173
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v2, v5, v1

    .line 174
    .local v2, "fraction":F
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    aget v8, v5, v0

    .line 175
    .local v8, "x":F
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "componentIndex":I
    .restart local v0    # "componentIndex":I
    aget v9, v5, v1

    .line 176
    .local v9, "y":F
    cmpl-float v10, v2, v6

    if-nez v10, :cond_2

    cmpl-float v10, v8, v7

    if-eqz v10, :cond_2

    .line 177
    new-instance v10, Ljava/lang/IllegalArgumentException;

    .line 178
    const-string/jumbo v11, "The Path cannot have discontinuity in the X axis."

    .line 177
    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 180
    :cond_2
    cmpg-float v10, v8, v7

    if-gez v10, :cond_3

    .line 181
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "The Path cannot loop back on itself."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 183
    :cond_3
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aput v8, v10, v3

    .line 184
    iget-object v10, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aput v9, v10, v3

    .line 185
    move v7, v8

    .line 186
    move v6, v2

    .line 172
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "componentIndex":I
    .restart local v1    # "componentIndex":I
    goto :goto_0

    .line 157
    .end local v2    # "fraction":F
    .end local v8    # "x":F
    .end local v9    # "y":F
    :cond_4
    return-void
.end method

.method private initQuad(FF)V
    .locals 3
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 144
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 145
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 146
    invoke-virtual {v0, p1, p2, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 147
    invoke-direct {p0, v0}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 143
    return-void
.end method

.method private parseInterpolatorFromTypeArray(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 108
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 109
    const/4 v8, 0x4

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 110
    .local v3, "pathData":Ljava/lang/String;
    invoke-static {v3}, Landroid/util/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v2

    .line 111
    .local v2, "path":Landroid/graphics/Path;
    if-nez v2, :cond_0

    .line 112
    new-instance v8, Landroid/view/InflateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The path is null, which is created from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 115
    :cond_0
    invoke-direct {p0, v2}, Landroid/view/animation/PathInterpolator;->initPath(Landroid/graphics/Path;)V

    .line 105
    .end local v2    # "path":Landroid/graphics/Path;
    .end local v3    # "pathData":Ljava/lang/String;
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 118
    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlX1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 119
    :cond_2
    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-nez v8, :cond_3

    .line 120
    new-instance v8, Landroid/view/InflateException;

    const-string/jumbo v9, "pathInterpolator requires the controlY1 attribute"

    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    :cond_3
    invoke-virtual {p1, v10, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 123
    .local v4, "x1":F
    invoke-virtual {p1, v11, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 125
    .local v6, "y1":F
    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    .line 126
    .local v0, "hasX2":Z
    invoke-virtual {p1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    .line 128
    .local v1, "hasY2":Z
    if-eq v0, v1, :cond_4

    .line 129
    new-instance v8, Landroid/view/InflateException;

    .line 130
    const-string/jumbo v9, "pathInterpolator requires both controlX2 and controlY2 for cubic Beziers."

    .line 129
    invoke-direct {v8, v9}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 133
    :cond_4
    if-nez v0, :cond_5

    .line 134
    invoke-direct {p0, v4, v6}, Landroid/view/animation/PathInterpolator;->initQuad(FF)V

    goto :goto_0

    .line 136
    :cond_5
    invoke-virtual {p1, v12, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 137
    .local v5, "x2":F
    invoke-virtual {p1, v13, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 138
    .local v7, "y2":F
    invoke-direct {p0, v4, v6, v5, v7}, Landroid/view/animation/PathInterpolator;->initCubic(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 202
    cmpg-float v8, p1, v10

    if-gtz v8, :cond_0

    .line 203
    return v10

    .line 204
    :cond_0
    cmpl-float v8, p1, v9

    if-ltz v8, :cond_1

    .line 205
    return v9

    .line 208
    :cond_1
    const/4 v4, 0x0

    .line 209
    .local v4, "startIndex":I
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    array-length v8, v8

    add-int/lit8 v0, v8, -0x1

    .line 211
    .local v0, "endIndex":I
    :goto_0
    sub-int v8, v0, v4

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 212
    add-int v8, v4, v0

    div-int/lit8 v3, v8, 0x2

    .line 213
    .local v3, "midIndex":I
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v3

    cmpg-float v8, p1, v8

    if-gez v8, :cond_2

    .line 214
    move v0, v3

    goto :goto_0

    .line 216
    :cond_2
    move v4, v3

    goto :goto_0

    .line 220
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v0

    iget-object v9, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v9, v9, v4

    sub-float v7, v8, v9

    .line 221
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    if-nez v8, :cond_4

    .line 222
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v8, v8, v4

    return v8

    .line 225
    :cond_4
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mX:[F

    aget v8, v8, v4

    sub-float v6, p1, v8

    .line 226
    .local v6, "tInRange":F
    div-float v2, v6, v7

    .line 228
    .local v2, "fraction":F
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v5, v8, v4

    .line 229
    .local v5, "startY":F
    iget-object v8, p0, Landroid/view/animation/PathInterpolator;->mY:[F

    aget v1, v8, v0

    .line 230
    .local v1, "endY":F
    sub-float v8, v1, v5

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    return v8
.end method
