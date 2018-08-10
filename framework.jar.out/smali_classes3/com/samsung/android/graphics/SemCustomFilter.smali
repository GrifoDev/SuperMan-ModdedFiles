.class public Lcom/samsung/android/graphics/SemCustomFilter;
.super Lcom/samsung/android/graphics/SemImageFilter;
.source "SemCustomFilter.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/graphics/SemImageFilter;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/SemCustomFilter;->setVertexShader(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/SemCustomFilter;->setFragmentShader(Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemCustomFilter;->clone()Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/SemCustomFilter;->clone()Lcom/samsung/android/graphics/SemCustomFilter;

    move-result-object v0

    return-object v0
.end method

.method public getUniform1f(Ljava/lang/String;)[F
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [F

    invoke-super {p0, p1, v1, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniform1i(Ljava/lang/String;)[I
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [I

    invoke-super {p0, p1, v1, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-object v0
.end method

.method public getUniform2f(Ljava/lang/String;)[F
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [F

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniform2i(Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x2

    new-array v0, v2, [I

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-object v0
.end method

.method public getUniform3f(Ljava/lang/String;)[F
    .locals 3

    const/4 v2, 0x3

    new-array v0, v2, [F

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniform3i(Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-object v0
.end method

.method public getUniform4f(Ljava/lang/String;)[F
    .locals 3

    const/4 v2, 0x4

    new-array v0, v2, [F

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniform4i(Ljava/lang/String;)[I
    .locals 3

    const/4 v2, 0x4

    new-array v0, v2, [I

    const/4 v1, 0x1

    invoke-super {p0, p1, v2, v1, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-object v0
.end method

.method public getUniformMatrix(Ljava/lang/String;II)[F
    .locals 2

    mul-int v1, p2, p3

    new-array v0, v1, [F

    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformMatrix(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniformfv(Ljava/lang/String;II)[F
    .locals 2

    mul-int v1, p2, p3

    new-array v0, v1, [F

    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformf(Ljava/lang/String;II[F)V

    return-object v0
.end method

.method public getUniformiv(Ljava/lang/String;II)[I
    .locals 2

    mul-int v1, p2, p3

    new-array v0, v1, [I

    invoke-super {p0, p1, p2, p3, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUniformi(Ljava/lang/String;II[I)V

    return-object v0
.end method

.method public getUpdateMargin()[I
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    invoke-super {p0, v0}, Lcom/samsung/android/graphics/SemImageFilter;->getUpdateMargin([I)V

    return-object v0
.end method

.method public getValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/SemImageFilter;->getValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;)F

    move-result v0

    return v0
.end method

.method public setSamplerBitmap(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1, p3}, Lcom/samsung/android/graphics/SemImageFilter;->setBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setUniform1f(Ljava/lang/String;F)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-super {p0, p1, v2, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform1i(Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-super {p0, p1, v2, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform2f(Ljava/lang/String;FF)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform2i(Ljava/lang/String;II)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform3f(Ljava/lang/String;FFF)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform3i(Ljava/lang/String;III)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniform4f(Ljava/lang/String;FFFF)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-array v0, v3, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniform4i(Ljava/lang/String;IIII)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x1

    new-array v0, v3, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    aput p3, v0, v2

    const/4 v1, 0x2

    aput p4, v0, v1

    const/4 v1, 0x3

    aput p5, v0, v1

    invoke-super {p0, p1, v3, v2, v0}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUniformMatrix(Ljava/lang/String;II[F)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformMatrix(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniformfv(Ljava/lang/String;II[F)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformf(Ljava/lang/String;II[F)V

    return-void
.end method

.method public setUniformiv(Ljava/lang/String;II[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUniformi(Ljava/lang/String;II[I)V

    return-void
.end method

.method public setUpdateMargin(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/graphics/SemImageFilter;->setUpdateMargin(IIII)V

    return-void
.end method

.method public setValue(IF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_BLEND_USAGE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->ordinal()I

    move-result v0

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->FILTER_OUTPUT_TEXTURE_FILTERING_STATE:Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->ordinal()I

    move-result v0

    if-gt p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;->values()[Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/graphics/SemCustomFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "HWUI_IMAGE_FILTER"

    const-string/jumbo v1, "Value can\'t be set. Index is invalid!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/graphics/SemImageFilter;->setValue(Lcom/samsung/android/graphics/SemImageFilter$ValueIndex;F)V

    return-void
.end method
