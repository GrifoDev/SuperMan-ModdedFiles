.class public Landroid/graphics/drawable/PaintDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "PaintDrawable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z
    .locals 9

    const-string/jumbo v6, "corners"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/internal/R$styleable;->DrawableCorners:[I

    invoke-virtual {p2, p4, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    const/4 v6, 0x2

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-ne v4, v3, :cond_0

    if-eq v5, v3, :cond_2

    :cond_0
    :goto_0
    const/16 v6, 0x8

    new-array v6, v6, [F

    int-to-float v7, v4

    const/4 v8, 0x0

    aput v7, v6, v8

    int-to-float v7, v4

    const/4 v8, 0x1

    aput v7, v6, v8

    int-to-float v7, v5

    const/4 v8, 0x2

    aput v7, v6, v8

    int-to-float v7, v5

    const/4 v8, 0x3

    aput v7, v6, v8

    int-to-float v7, v1

    const/4 v8, 0x4

    aput v7, v6, v8

    int-to-float v7, v1

    const/4 v8, 0x5

    aput v7, v6, v8

    int-to-float v7, v2

    const/4 v8, 0x6

    aput v7, v6, v8

    int-to-float v7, v2

    const/4 v8, 0x7

    aput v7, v6, v8

    invoke-virtual {p0, v6}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v6, 0x1

    return v6

    :cond_2
    if-ne v1, v3, :cond_0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/ShapeDrawable;->inflateTag(Ljava/lang/String;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Z

    move-result v6

    return v6
.end method

.method public setCornerRadii([F)V
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/PaintDrawable;->invalidateSelf()V

    return-void

    :cond_1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    goto :goto_0
.end method

.method public setCornerRadius(F)V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    new-array v1, v3, [F

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aput p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    return-void
.end method
