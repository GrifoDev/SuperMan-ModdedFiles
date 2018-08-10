.class public final Landroid/support/v7/graphics/Palette$Builder;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/Palette$Builder$1;
    }
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Filter;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColors:I

.field private mRegion:Landroid/graphics/Rect;

.field private mResizeArea:I

.field private mResizeMaxDimension:I

.field private final mSwatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/graphics/Target;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    const/16 v0, 0x10

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    const/16 v0, 0x3100

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bitmap is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Palette;->DEFAULT_FILTER:Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_VIBRANT:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->LIGHT_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    sget-object v1, Landroid/support/v7/graphics/Target;->DARK_MUTED:Landroid/support/v7/graphics/Target;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p1

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int v0, v9, v8

    new-array v11, v0, [I

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v10

    mul-int/2addr v0, v3

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v2

    mul-int v2, v10, v9

    invoke-static {v1, v0, v11, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-object v11
.end method

.method private scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v8, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-lez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int v0, v4, v5

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    if-le v0, v4, :cond_0

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    int-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    :cond_0
    :goto_0
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_2

    return-object p1

    :cond_1
    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-lez v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    if-le v1, v4, :cond_0

    iget v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    int-to-double v4, v4

    int-to-double v6, v1

    div-double v2, v4, v6

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-double v6, v5

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {p1, v4, v5, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public clearFilters()Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public generate()Landroid/support/v7/graphics/Palette;
    .locals 14
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v8, 0x0

    const/4 v1, 0x0

    iget-object v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v9}, Landroid/support/v7/graphics/Palette$Builder;->scaleBitmapDown(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v9, :cond_0

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v10, v9

    iget-object v9, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-double v12, v9

    div-double v6, v10, v12

    iget v9, v4, Landroid/graphics/Rect;->left:I

    int-to-double v10, v9

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    iput v9, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    int-to-double v10, v9

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v9, v10

    iput v9, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->right:I

    int-to-double v10, v9

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    int-to-double v10, v9

    mul-double/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v4, Landroid/graphics/Rect;->bottom:I

    :cond_0
    new-instance v3, Landroid/support/v7/graphics/ColorCutQuantizer;

    invoke-direct {p0, v0}, Landroid/support/v7/graphics/Palette$Builder;->getPixelsFromBitmap(Landroid/graphics/Bitmap;)[I

    move-result-object v9

    iget v10, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    iget-object v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    :goto_0
    invoke-direct {v3, v9, v10, v8}, Landroid/support/v7/graphics/ColorCutQuantizer;-><init>([II[Landroid/support/v7/graphics/Palette$Filter;)V

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, v8, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    invoke-virtual {v3}, Landroid/support/v7/graphics/ColorCutQuantizer;->getQuantizedColors()Ljava/util/List;

    move-result-object v5

    :goto_1
    new-instance v2, Landroid/support/v7/graphics/Palette;

    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mTargets:Ljava/util/List;

    invoke-direct {v2, v5, v8}, Landroid/support/v7/graphics/Palette;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette;->generate()V

    return-object v2

    :cond_2
    iget-object v8, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    iget-object v11, p0, Landroid/support/v7/graphics/Palette$Builder;->mFilters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Landroid/support/v7/graphics/Palette$Filter;

    invoke-interface {v8, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/support/v7/graphics/Palette$Filter;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/support/v7/graphics/Palette$Builder;->mSwatches:Ljava/util/List;

    goto :goto_1
.end method

.method public maximumColorCount(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mMaxColors:I

    return-object p0
.end method

.method public resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeArea:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mResizeMaxDimension:I

    return-object p0
.end method

.method public setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/graphics/Palette$Builder;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The given region must intersect with the Bitmap\'s dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method
