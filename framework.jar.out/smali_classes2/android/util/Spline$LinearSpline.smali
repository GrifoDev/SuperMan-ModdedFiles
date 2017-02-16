.class public Landroid/util/Spline$LinearSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinearSpline"
.end annotation


# instance fields
.field private final mM:[F

.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 6
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .prologue
    .line 237
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 238
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 239
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_0

    array-length v2, p1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 242
    array-length v0, p1

    .line 243
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [F

    iput-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    .line 244
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_2

    .line 245
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    add-int/lit8 v3, v1, 0x1

    aget v3, p2, v3

    aget v4, p2, v1

    sub-float/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    aget v5, p1, v1

    sub-float/2addr v4, v5

    div-float/2addr v3, v4

    aput v3, v2, v1

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_2
    iput-object p1, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    .line 248
    iput-object p2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    .line 237
    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .locals 5
    .param p1, "x"    # F

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v2

    .line 255
    .local v1, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    return p1

    .line 258
    :cond_0
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_1

    .line 259
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v2, v2, v3

    return v2

    .line 261
    :cond_1
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    .line 262
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    return v2

    .line 267
    :cond_2
    const/4 v0, 0x0

    .line 268
    .local v0, "i":I
    :cond_3
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_4

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 270
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v2, v2, v0

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 271
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v2, v2, v0

    return v2

    .line 274
    :cond_4
    iget-object v2, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v2, v2, v0

    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v3, v3, v0

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v4, v4, v0

    sub-float v4, p1, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    array-length v1, v3

    .line 281
    .local v1, "n":I
    const-string/jumbo v3, "LinearSpline{["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 283
    if-eqz v0, :cond_0

    .line 284
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    :cond_0
    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mX:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mY:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 288
    add-int/lit8 v3, v1, -0x1

    if-ge v0, v3, :cond_1

    .line 289
    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$LinearSpline;->mM:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 291
    :cond_1
    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_2
    const-string/jumbo v3, "]}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
