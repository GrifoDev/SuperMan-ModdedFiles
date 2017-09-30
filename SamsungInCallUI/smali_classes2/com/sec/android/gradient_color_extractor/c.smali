.class public Lcom/sec/android/gradient_color_extractor/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gradient_color_extractor/c$a;
    }
.end annotation


# static fields
.field static i:F

.field static j:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x3df5c28f    # 0.12f

    sput v0, Lcom/sec/android/gradient_color_extractor/c;->i:F

    const/high16 v0, 0x3e800000    # 0.25f

    sput v0, Lcom/sec/android/gradient_color_extractor/c;->j:F

    return-void
.end method

.method static a([F[F[F)F
    .locals 7

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget v0, p1, v4

    aget v1, p0, v4

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v1, v0, v2

    if-ltz v1, :cond_0

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float v0, v1, v0

    :cond_0
    div-float/2addr v0, v2

    aget v1, p1, v5

    aget v2, p0, v5

    sub-float/2addr v1, v2

    aget v2, p1, v6

    aget v3, p0, v6

    sub-float/2addr v2, v3

    aget v3, p2, v4

    mul-float/2addr v0, v3

    aget v3, p2, v5

    mul-float/2addr v1, v3

    aget v3, p2, v6

    mul-float/2addr v2, v3

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    mul-float v1, v2, v2

    add-float/2addr v0, v1

    return v0
.end method

.method static a(Ljava/util/List;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int/2addr v3, v6

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    div-int v0, v4, v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    div-int v2, v3, v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v1, v3

    invoke-static {v0, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    goto :goto_1
.end method

.method static a([FFF)Z
    .locals 2

    const/4 v0, 0x1

    aget v1, p0, v0

    cmpg-float v1, v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x2

    aget v1, p0, v1

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/graphics/Bitmap;[I)[Lcom/sec/android/gradient_color_extractor/c$a;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    invoke-static {v1, p1}, Lcom/sec/android/gradient_color_extractor/c;->a([I[I)[Lcom/sec/android/gradient_color_extractor/c$a;

    move-result-object v0

    return-object v0
.end method

.method static a([I[I)[Lcom/sec/android/gradient_color_extractor/c$a;
    .locals 14

    array-length v5, p1

    new-array v6, v5, [Lcom/sec/android/gradient_color_extractor/c$a;

    new-array v7, v5, [I

    new-array v8, v5, [[F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    aget v1, p1, v0

    aput v1, v7, v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput-object v1, v8, v0

    aget v1, v7, v0

    aget-object v2, v8, v0

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p0

    new-array v9, v0, [[F

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_1

    const/4 v1, 0x3

    new-array v1, v1, [F

    aput-object v1, v9, v0

    aget v1, p0, v0

    aget-object v2, v9, v0

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-array v10, v5, [Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v10, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_6

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    aget-object v2, v9, v0

    sget v3, Lcom/sec/android/gradient_color_extractor/c;->i:F

    sget v11, Lcom/sec/android/gradient_color_extractor/c;->j:F

    invoke-static {v2, v3, v11}, Lcom/sec/android/gradient_color_extractor/c;->a([FFF)Z

    move-result v11

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_5

    aget-object v3, v8, v2

    sget v12, Lcom/sec/android/gradient_color_extractor/c;->i:F

    sget v13, Lcom/sec/android/gradient_color_extractor/c;->j:F

    invoke-static {v3, v12, v13}, Lcom/sec/android/gradient_color_extractor/c;->a([FFF)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v11, :cond_4

    aget-object v3, v9, v0

    aget-object v12, v8, v2

    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_0

    invoke-static {v3, v12, v13}, Lcom/sec/android/gradient_color_extractor/c;->a([F[F[F)F

    move-result v3

    cmpg-float v12, v3, v4

    if-gez v12, :cond_9

    move v1, v2

    :goto_5
    move v4, v3

    :cond_3
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    if-eqz v3, :cond_3

    if-eqz v11, :cond_3

    aget-object v3, v9, v0

    aget-object v12, v8, v2

    const/4 v13, 0x3

    new-array v13, v13, [F

    fill-array-data v13, :array_1

    invoke-static {v3, v12, v13}, Lcom/sec/android/gradient_color_extractor/c;->a([F[F[F)F

    move-result v3

    cmpg-float v12, v3, v4

    if-gez v12, :cond_3

    move v1, v2

    move v4, v3

    goto :goto_6

    :cond_5
    aget-object v1, v10, v1

    aget v2, p0, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v5, :cond_7

    aget-object v1, v10, v0

    invoke-static {v1}, Lcom/sec/android/gradient_color_extractor/c;->a(Ljava/util/List;)I

    move-result v1

    aput v1, v7, v0

    aget v1, v7, v0

    aget-object v2, v8, v0

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    array-length v1, p0

    int-to-float v1, v1

    div-float v1, v0, v1

    const/4 v0, 0x0

    :goto_8
    array-length v2, v7

    if-ge v0, v2, :cond_8

    new-instance v2, Lcom/sec/android/gradient_color_extractor/c$a;

    aget v3, v7, v0

    aget-object v4, v10, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-direct {v2, v3, v4}, Lcom/sec/android/gradient_color_extractor/c$a;-><init>(IF)V

    aput-object v2, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    new-instance v0, Lcom/sec/android/gradient_color_extractor/c$1;

    invoke-direct {v0}, Lcom/sec/android/gradient_color_extractor/c$1;-><init>()V

    invoke-static {v6, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v6

    :cond_9
    move v3, v4

    goto :goto_5

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
        0x3dcccccd    # 0.1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
