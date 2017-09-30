.class public Lcom/sec/android/gradient_color_extractor/a;
.super Lcom/sec/android/gradient_color_extractor/c;


# direct methods
.method public static a([F[FFFF)Z
    .locals 6

    const/4 v5, 0x2

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    aget v0, p1, v2

    aget v3, p0, v2

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x43340000    # 180.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    mul-float v3, p2, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    aget v0, p0, v1

    aget v3, p1, v1

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p3

    if-gez v0, :cond_3

    aget v0, p0, v5

    aget v3, p1, v5

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_3

    :goto_1
    return v1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    sub-float v0, v4, v0

    mul-float v3, p2, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static a(I)[I
    .locals 11

    const/4 v0, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    new-array v2, p0, [I

    const/4 v1, -0x1

    aput v1, v2, v8

    const/high16 v1, -0x1000000

    aput v1, v2, v9

    const v1, -0x777778

    aput v1, v2, v10

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    new-array v3, v0, [F

    sub-int v4, v1, v0

    int-to-float v4, v4

    const/high16 v5, 0x43b40000    # 360.0f

    sub-int v6, p0, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    aput v4, v3, v8

    aput v7, v3, v9

    aput v7, v3, v10

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method static a([Lcom/sec/android/gradient_color_extractor/c$a;FF)[I
    .locals 9

    const/4 v5, 0x3

    const/4 v8, -0x1

    const v7, 0x3dcccccd    # 0.1f

    const/4 v1, 0x0

    aget-object v0, p0, v1

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    const v2, 0x3f7d70a4    # 0.99f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    return-object v3

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v1, v0, p1, p2}, Lcom/sec/android/gradient_color_extractor/a;->b([Lcom/sec/android/gradient_color_extractor/c$a;IIFF)I

    move-result v3

    if-ne v3, v8, :cond_1

    move v0, v1

    move v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, 0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_2

    move v0, v1

    :cond_2
    add-int/lit8 v2, v3, 0x1

    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    invoke-static {p0, v2, v4, p1, p2}, Lcom/sec/android/gradient_color_extractor/a;->b([Lcom/sec/android/gradient_color_extractor/c$a;IIFF)I

    move-result v2

    if-ne v2, v8, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    new-array v4, v5, [F

    new-array v5, v5, [F

    aget-object v0, p0, v3

    iget v0, v0, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    invoke-static {v0, v4}, Landroid/graphics/Color;->colorToHSV(I[F)V

    move v0, v2

    :goto_1
    aget-object v2, p0, v0

    iget v2, v2, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    invoke-static {v2, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v5, v7, v7, v7}, Lcom/sec/android/gradient_color_extractor/a;->a([F[FFFF)Z

    move-result v2

    if-eqz v2, :cond_4

    add-int/lit8 v2, v0, 0x1

    array-length v6, p0

    add-int/lit8 v6, v6, -0x1

    invoke-static {p0, v2, v6, p1, p2}, Lcom/sec/android/gradient_color_extractor/a;->b([Lcom/sec/android/gradient_color_extractor/c$a;IIFF)I

    move-result v2

    if-ne v2, v8, :cond_5

    :cond_4
    :goto_2
    move v2, v3

    goto :goto_0

    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_6

    move v0, v2

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_1
.end method

.method static a([Lcom/sec/android/gradient_color_extractor/c$a;IIFF)[I
    .locals 11

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v9, 0x3

    aget-object v0, p0, p1

    iget v3, v0, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    aget-object v0, p0, p2

    iget v4, v0, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    new-array v5, v9, [F

    new-array v6, v9, [F

    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v0, Lcom/sec/android/gradient_color_extractor/a;->i:F

    add-float/2addr v0, p3

    sget v7, Lcom/sec/android/gradient_color_extractor/a;->j:F

    add-float/2addr v7, p3

    invoke-static {v5, v0, v7}, Lcom/sec/android/gradient_color_extractor/a;->a([FFF)Z

    move-result v0

    sget v7, Lcom/sec/android/gradient_color_extractor/a;->i:F

    add-float/2addr v7, p3

    sget v8, Lcom/sec/android/gradient_color_extractor/a;->j:F

    add-float/2addr v8, p3

    invoke-static {v6, v7, v8}, Lcom/sec/android/gradient_color_extractor/a;->a([FFF)Z

    move-result v7

    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    new-array v7, v9, [F

    new-array v8, v9, [F

    move v0, v1

    :goto_0
    array-length v9, p0

    if-ge v0, v9, :cond_3

    aget-object v9, p0, v0

    iget v9, v9, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    invoke-static {v9, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget-object v9, p0, v0

    iget v9, v9, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    cmpl-float v9, v9, p4

    if-ltz v9, :cond_3

    sget v9, Lcom/sec/android/gradient_color_extractor/a;->i:F

    add-float/2addr v9, p3

    sget v10, Lcom/sec/android/gradient_color_extractor/a;->j:F

    add-float/2addr v10, p3

    invoke-static {v7, v9, v10}, Lcom/sec/android/gradient_color_extractor/a;->a([FFF)Z

    move-result v9

    if-nez v9, :cond_1

    aget-object v7, p0, v0

    iget v7, v7, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    invoke-static {v7, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    :goto_1
    if-eq v0, v2, :cond_0

    move p2, v0

    :cond_0
    :goto_2
    invoke-static {v3, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {v4, v6}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    return-object v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_0

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method static b([Lcom/sec/android/gradient_color_extractor/c$a;IIFF)I
    .locals 6

    const/4 v3, 0x0

    const/4 v1, -0x1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v3, 0x3

    new-array v3, v3, [F

    :goto_1
    if-gt v0, v2, :cond_5

    aget-object v4, p0, v0

    iget v4, v4, Lcom/sec/android/gradient_color_extractor/c$a;->a:I

    invoke-static {v4, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget v4, Lcom/sec/android/gradient_color_extractor/a;->i:F

    sget v5, Lcom/sec/android/gradient_color_extractor/a;->j:F

    invoke-static {v3, v4, v5}, Lcom/sec/android/gradient_color_extractor/a;->a([FFF)Z

    move-result v4

    if-eqz v4, :cond_4

    aget-object v4, p0, v0

    iget v4, v4, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    cmpl-float v4, v4, p4

    if-ltz v4, :cond_2

    :cond_1
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    aget-object v4, p0, v0

    iget v4, v4, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    cmpl-float v4, v4, p3

    if-ltz v4, :cond_3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    aget-object v2, p0, v0

    iget v2, v2, Lcom/sec/android/gradient_color_extractor/c$a;->b:F

    cmpl-float v2, v2, p3

    if-gez v2, :cond_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method
