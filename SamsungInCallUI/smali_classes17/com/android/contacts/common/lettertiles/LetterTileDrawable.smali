.class public Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "LetterTileDrawable.java"


# static fields
.field private static DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap; = null

.field private static DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap; = null

.field public static final TYPE_BUSINESS:I = 0x2

.field public static final TYPE_DEFAULT:I = 0x1

.field public static final TYPE_PERSON:I = 0x1

.field public static final TYPE_VOICEMAIL:I = 0x3

.field private static sColors:Landroid/content/res/TypedArray;

.field private static sDefaultColor:I

.field private static final sFirstChar:[C

.field private static sLetterToTileRatio:F

.field private static final sPaint:Landroid/graphics/Paint;

.field private static final sRect:Landroid/graphics/Rect;

.field private static sTileFontColor:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mColor:I

.field private mContactType:I

.field private mIsCircle:Z

.field private mLetter:Ljava/lang/Character;

.field private mOffset:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    .line 58
    const/4 v0, 0x1

    new-array v0, v0, [C

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 42
    const-class v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->TAG:Ljava/lang/String;

    .line 66
    iput v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    .line 67
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    .line 69
    iput-boolean v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 75
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    if-nez v0, :cond_0

    .line 76
    const v0, 0x7f0c0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    .line 77
    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    .line 78
    const v0, 0x7f0f00a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    .line 79
    const v0, 0x7f0a046a

    invoke-virtual {p1, v0, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    sput v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    .line 80
    const v0, 0x7f020112

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    .line 82
    const v0, 0x7f0200ec

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    .line 84
    const v0, 0x7f020125

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    .line 86
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    const v1, 0x7f0904fb

    .line 87
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 88
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 94
    sget v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 95
    return-void
.end method

.method private drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 114
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 117
    .local v0, "destRect":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 119
    .local v1, "halfLength":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int/2addr v2, v1

    .line 120
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v3, v1

    int-to-float v3, v3

    iget v4, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 121
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    add-int/2addr v4, v1

    .line 122
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget v6, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v5, v5

    .line 119
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 125
    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v8, v8, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 127
    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 128
    return-void
.end method

.method private drawLetterTile(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 132
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 135
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 136
    .local v8, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 138
    .local v9, "minDimension":I
    iget-boolean v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    div-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    if-eqz v0, :cond_1

    .line 148
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    iget-object v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    aput-char v1, v0, v2

    .line 151
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    sget v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sLetterToTileRatio:F

    mul-float/2addr v1, v4

    int-to-float v4, v9

    mul-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    sget-object v4, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 154
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sTileFontColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 158
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sFirstChar:[C

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v4, v0

    .line 159
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    iget v5, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    add-float/2addr v0, v5

    sget-object v5, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    sub-float v5, v0, v5

    sget-object v6, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 158
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 167
    :goto_1
    return-void

    .line 141
    :cond_0
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 163
    :cond_1
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBitmapForContactType(I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 164
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, v7, v0, v1, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private static getBitmapForContactType(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "contactType"    # I

    .prologue
    .line 188
    packed-switch p0, :pswitch_data_0

    .line 196
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    .line 190
    :pswitch_0
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_PERSON_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 192
    :pswitch_1
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_BUSINESS_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 194
    :pswitch_2
    sget-object v0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->DEFAULT_VOICEMAIL_AVATAR:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static isEnglishLetter(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 201
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

.method private pickColor(Ljava/lang/String;)I
    .locals 3
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 178
    :cond_0
    sget v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    .line 184
    :goto_0
    return v1

    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sget-object v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    rem-int v0, v1, v2

    .line 184
    .local v0, "color":I
    sget-object v1, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sColors:Landroid/content/res/TypedArray;

    sget v2, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->sDefaultColor:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 100
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->drawLetterTile(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 216
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 207
    return-void
.end method

.method public setColor(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 254
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 255
    return-object p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 212
    return-void
.end method

.method public setContactType(I)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "contactType"    # I

    .prologue
    .line 271
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mContactType:I

    .line 272
    return-object p0
.end method

.method public setIsCircular(Z)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "isCircle"    # Z

    .prologue
    .line 276
    iput-boolean p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mIsCircle:Z

    .line 277
    return-object p0
.end method

.method public setLetter(Ljava/lang/Character;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "letter"    # Ljava/lang/Character;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 250
    return-object p0
.end method

.method public setLetterAndColorFromContactDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 2
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "identifier"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 260
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->isEnglishLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    .line 266
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->pickColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mColor:I

    .line 267
    return-object p0

    .line 264
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mLetter:Ljava/lang/Character;

    goto :goto_0
.end method

.method public setOffset(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 1
    .param p1, "offset"    # F

    .prologue
    .line 243
    const/high16 v0, -0x41000000    # -0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 244
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mOffset:F

    .line 245
    return-object p0

    .line 243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScale(F)Lcom/android/contacts/common/lettertiles/LetterTileDrawable;
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/android/contacts/common/lettertiles/LetterTileDrawable;->mScale:F

    .line 227
    return-object p0
.end method
