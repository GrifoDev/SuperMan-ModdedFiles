.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 13
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    const/4 v10, 0x0

    const/4 v12, 0x0

    .line 129
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 130
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 131
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 130
    :cond_1
    array-length v8, p1

    array-length v9, p2

    if-ne v8, v9, :cond_0

    array-length v8, p1

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 135
    array-length v6, p1

    .line 136
    .local v6, "n":I
    add-int/lit8 v8, v6, -0x1

    new-array v2, v8, [F

    .line 137
    .local v2, "d":[F
    new-array v5, v6, [F

    .line 140
    .local v5, "m":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_3

    .line 141
    add-int/lit8 v8, v4, 0x1

    aget v8, p1, v8

    aget v9, p1, v4

    sub-float v3, v8, v9

    .line 142
    .local v3, "h":F
    cmpg-float v8, v3, v12

    if-gtz v8, :cond_2

    .line 143
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The control points must all have strictly increasing X values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_2
    add-int/lit8 v8, v4, 0x1

    aget v8, p2, v8

    aget v9, p2, v4

    sub-float/2addr v8, v9

    div-float/2addr v8, v3

    aput v8, v2, v4

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 150
    .end local v3    # "h":F
    :cond_3
    aget v8, v2, v10

    aput v8, v5, v10

    .line 151
    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_4

    .line 152
    add-int/lit8 v8, v4, -0x1

    aget v8, v2, v8

    aget v9, v2, v4

    add-float/2addr v8, v9

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v8, v9

    aput v8, v5, v4

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 154
    :cond_4
    add-int/lit8 v8, v6, -0x1

    add-int/lit8 v9, v6, -0x2

    aget v9, v2, v9

    aput v9, v5, v8

    .line 157
    const/4 v4, 0x0

    :goto_2
    add-int/lit8 v8, v6, -0x1

    if-ge v4, v8, :cond_9

    .line 158
    aget v8, v2, v4

    cmpl-float v8, v8, v12

    if-nez v8, :cond_6

    .line 159
    aput v12, v5, v4

    .line 160
    add-int/lit8 v8, v4, 0x1

    aput v12, v5, v8

    .line 157
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    :cond_6
    aget v8, v5, v4

    aget v9, v2, v4

    div-float v0, v8, v9

    .line 163
    .local v0, "a":F
    add-int/lit8 v8, v4, 0x1

    aget v8, v5, v8

    aget v9, v2, v4

    div-float v1, v8, v9

    .line 164
    .local v1, "b":F
    cmpg-float v8, v0, v12

    if-ltz v8, :cond_7

    cmpg-float v8, v1, v12

    if-gez v8, :cond_8

    .line 165
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The control points must have monotonic Y values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 168
    :cond_8
    float-to-double v8, v0

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v3, v8

    .line 169
    .restart local v3    # "h":F
    const/high16 v8, 0x41100000    # 9.0f

    cmpl-float v8, v3, v8

    if-lez v8, :cond_5

    .line 170
    const/high16 v8, 0x40400000    # 3.0f

    div-float v7, v8, v3

    .line 171
    .local v7, "t":F
    mul-float v8, v7, v0

    aget v9, v2, v4

    mul-float/2addr v8, v9

    aput v8, v5, v4

    .line 172
    add-int/lit8 v8, v4, 0x1

    mul-float v9, v7, v1

    aget v10, v2, v4

    mul-float/2addr v9, v10

    aput v9, v5, v8

    goto :goto_3

    .line 177
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v3    # "h":F
    .end local v7    # "t":F
    :cond_9
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 178
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 179
    iput-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 129
    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/4 v5, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 185
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v2, v4

    .line 186
    .local v2, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 187
    return p1

    .line 189
    :cond_0
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v5

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_1

    .line 190
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v5

    return v4

    .line 192
    :cond_1
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    .line 193
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    return v4

    .line 198
    :cond_2
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    :cond_3
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    cmpl-float v4, p1, v4

    if-ltz v4, :cond_4

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v1

    cmpl-float v4, p1, v4

    if-nez v4, :cond_3

    .line 202
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    return v4

    .line 207
    :cond_4
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v5, v1, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v5, v5, v1

    sub-float v0, v4, v5

    .line 208
    .local v0, "h":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    div-float v3, v4, v0

    .line 209
    .local v3, "t":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    mul-float v5, v7, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v5, v5, v1

    mul-float/2addr v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    sub-float v5, v8, v3

    mul-float/2addr v4, v5

    .line 210
    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    mul-float v6, v7, v3

    const/high16 v7, 0x40400000    # 3.0f

    sub-float v6, v7, v6

    mul-float/2addr v5, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    add-int/lit8 v7, v1, 0x1

    aget v6, v6, v7

    mul-float/2addr v6, v0

    sub-float v7, v3, v8

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    mul-float/2addr v5, v3

    mul-float/2addr v5, v3

    .line 209
    add-float/2addr v4, v5

    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v3

    .line 218
    .local v1, "n":I
    const-string/jumbo v3, "MonotoneCubicSpline{["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 220
    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_0
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
