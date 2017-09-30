.class public Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;


# static fields
.field private static c:Landroid/content/res/TypedArray;

.field private static d:I

.field private static e:I

.field private static f:F

.field private static g:Landroid/graphics/Bitmap;

.field private static h:Landroid/graphics/Bitmap;

.field private static i:Landroid/graphics/Bitmap;

.field private static final j:Landroid/graphics/Paint;

.field private static final k:Landroid/graphics/Rect;

.field private static final l:[C


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/graphics/Paint;

.field private m:I

.field private n:F

.field private o:F

.field private p:Z

.field private q:I

.field private r:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->k:Landroid/graphics/Rect;

    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->l:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-class v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a:Ljava/lang/String;

    iput v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->m:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->o:F

    iput-boolean v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->p:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->r:Ljava/lang/Character;

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->c:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    const v0, 0x7f0c0029

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->c:Landroid/content/res/TypedArray;

    const v0, 0x7f0e00dd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->d:I

    const v0, 0x7f0e00de

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->e:I

    const v0, 0x7f0a04be

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->f:F

    const v0, 0x7f020185

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->g:Landroid/graphics/Bitmap;

    const v0, 0x7f02015f

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->h:Landroid/graphics/Bitmap;

    const v0, 0x7f020198

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->i:Landroid/graphics/Bitmap;

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    const v1, 0x7f0905c1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    sget v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->d:I

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->q:I

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->m:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->d:I

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->c:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    rem-int/2addr v0, v1

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->c:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->d:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->n:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->o:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    iget v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->o:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v7, v7, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->k:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->q:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-boolean v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->p:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    sget-object v7, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    iget-object v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->r:Ljava/lang/Character;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->l:[C

    iget-object v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->r:Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    aput-char v5, v4, v2

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    iget v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->n:F

    sget v6, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->f:F

    mul-float/2addr v5, v6

    int-to-float v1, v1

    mul-float/2addr v1, v5

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->l:[C

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->k:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v2, v3, v5}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    sget v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->e:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->l:[C

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->o:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v5

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->k:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float v5, v0, v5

    sget-object v6, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_1
    return-void

    :cond_0
    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->m:I

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b(I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(I)Landroid/graphics/Bitmap;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->g:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->g:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->h:Landroid/graphics/Bitmap;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->i:Landroid/graphics/Bitmap;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->n:F

    return-object p0
.end method

.method public a(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->m:I

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->r:Ljava/lang/Character;

    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->q:I

    return-object p0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->r:Ljava/lang/Character;

    goto :goto_0
.end method

.method public a(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->p:Z

    return-object p0
.end method

.method public b(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 1

    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->o:F

    return-object p0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->a(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
