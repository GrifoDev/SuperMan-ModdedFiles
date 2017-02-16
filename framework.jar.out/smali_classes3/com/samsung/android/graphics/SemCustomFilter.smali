.class public Lcom/samsung/android/graphics/SemCustomFilter;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemCustomFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "vcode"    # Ljava/lang/String;
    .param p2, "fcode"    # Ljava/lang/String;

    .prologue
    .line 54
    const/16 v0, 0xee

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>(I)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->setVertexShader(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setFragmentShader(Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Lcom/samsung/android/graphics/SemCustomFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-super {p0}, Lcom/samsung/android/graphics/SemImageFilter;->clone()Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/SemCustomFilter;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/SemImageFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemCustomFilter;->clone()Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNativeBitmap(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->getNativeBitmap(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUniform1f(Ljava/lang/String;)[F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 322
    new-array v0, v1, [F

    .line 323
    .local v0, "value":[F
    invoke-super {p0, p1, v1, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    .line 324
    return-object v0
.end method

.method public getUniform1i(Ljava/lang/String;)[I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 395
    new-array v0, v1, [I

    .line 396
    .local v0, "value":[I
    invoke-super {p0, p1, v1, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    .line 397
    return-object v0
.end method

.method public getUniform2f(Ljava/lang/String;)[F
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 336
    new-array v0, v2, [F

    .line 337
    .local v0, "value":[F
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    .line 338
    return-object v0
.end method

.method public getUniform2i(Ljava/lang/String;)[I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    .line 409
    new-array v0, v2, [I

    .line 410
    .local v0, "value":[I
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    .line 411
    return-object v0
.end method

.method public getUniform3f(Ljava/lang/String;)[F
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 350
    new-array v0, v2, [F

    .line 351
    .local v0, "value":[F
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    .line 352
    return-object v0
.end method

.method public getUniform3i(Ljava/lang/String;)[I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x3

    .line 423
    new-array v0, v2, [I

    .line 424
    .local v0, "value":[I
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    .line 425
    return-object v0
.end method

.method public getUniform4f(Ljava/lang/String;)[F
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 364
    new-array v0, v2, [F

    .line 365
    .local v0, "value":[F
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    .line 366
    return-object v0
.end method

.method public getUniform4i(Ljava/lang/String;)[I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 437
    new-array v0, v2, [I

    .line 438
    .local v0, "value":[I
    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    .line 439
    return-object v0
.end method

.method public getUniformMatrix(Ljava/lang/String;II)[F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 469
    mul-int v1, p2, p3

    new-array v0, v1, [F

    .line 470
    .local v0, "value":[F
    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformMatrix(Ljava/lang/String;II[F)V

    .line 471
    return-object v0
.end method

.method public getUniformfv(Ljava/lang/String;II)[F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I

    .prologue
    .line 381
    mul-int v1, p2, p3

    new-array v0, v1, [F

    .line 382
    .local v0, "value":[F
    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    .line 383
    return-object v0
.end method

.method public getUniformiv(Ljava/lang/String;II)[I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I

    .prologue
    .line 453
    mul-int v1, p2, p3

    new-array v0, v1, [I

    .line 454
    .local v0, "value":[I
    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    .line 455
    return-object v0
.end method

.method public getUpdateMargin()[I
    .locals 2

    .prologue
    .line 92
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 93
    .local v0, "margin":[I
    invoke-super {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUpdateMargin([I)V

    .line 94
    return-object v0
.end method

.method public getValue(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->getValue(I)F

    move-result v0

    return v0
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 297
    invoke-super {p0, p1, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 296
    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F

    .prologue
    const/4 v2, 0x1

    .line 105
    new-array v0, v2, [F

    .line 106
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 107
    invoke-super {p0, p1, v2, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 104
    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I

    .prologue
    const/4 v2, 0x1

    .line 205
    new-array v0, v2, [I

    .line 206
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 207
    invoke-super {p0, p1, v2, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 204
    return-void
.end method

.method public setUniform2f(Ljava/lang/String;FF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 119
    new-array v0, v3, [F

    .line 120
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 121
    aput p3, v0, v2

    .line 122
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 118
    return-void
.end method

.method public setUniform2i(Ljava/lang/String;II)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 219
    new-array v0, v3, [I

    .line 220
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 221
    aput p3, v0, v2

    .line 222
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 218
    return-void
.end method

.method public setUniform3f(Ljava/lang/String;FFF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 135
    new-array v0, v3, [F

    .line 136
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 137
    aput p3, v0, v2

    .line 138
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 139
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 134
    return-void
.end method

.method public setUniform3i(Ljava/lang/String;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 235
    new-array v0, v3, [I

    .line 236
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 237
    aput p3, v0, v2

    .line 238
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 239
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 234
    return-void
.end method

.method public setUniform4f(Ljava/lang/String;FFFF)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # F
    .param p3, "value1"    # F
    .param p4, "value2"    # F
    .param p5, "value3"    # F

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 153
    new-array v0, v3, [F

    .line 154
    .local v0, "value":[F
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 155
    aput p3, v0, v2

    .line 156
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 157
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 158
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 152
    return-void
.end method

.method public setUniform4i(Ljava/lang/String;IIII)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value0"    # I
    .param p3, "value1"    # I
    .param p4, "value2"    # I
    .param p5, "value3"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 253
    new-array v0, v3, [I

    .line 254
    .local v0, "value":[I
    const/4 v1, 0x0

    aput p2, v0, v1

    .line 255
    aput p3, v0, v2

    .line 256
    const/4 v1, 0x2

    aput p4, v0, v1

    .line 257
    const/4 v1, 0x3

    aput p5, v0, v1

    .line 258
    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 252
    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "row"    # I
    .param p3, "col"    # I
    .param p4, "value"    # [F

    .prologue
    .line 284
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    .line 283
    return-void
.end method

.method public setUniformfv(Ljava/lang/String;II[F)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [F

    .prologue
    .line 194
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    .line 193
    return-void
.end method

.method public setUniformiv(Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "vec"    # I
    .param p3, "count"    # I
    .param p4, "value"    # [I

    .prologue
    .line 271
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    .line 270
    return-void
.end method

.method public setUpdateMargin(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUpdateMargin(IIII)V

    .line 80
    return-void
.end method

.method public setValue(IF)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(IF)V

    .line 168
    return-void
.end method
