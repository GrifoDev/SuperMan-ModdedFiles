.class public Lcom/ther/recents/MatrixEffect;
.super Landroid/view/View;
.source "MatrixEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ther/recents/MatrixEffect$SettingsObserver;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private canvas:Landroid/graphics/Canvas;

.field private canvasBmp:Landroid/graphics/Bitmap;

.field private cars:[C

.field private columnSize:I

.field private fontSize:I

.field private height:I

.field private mMatrixEffectBGColor:I

.field private mMatrixEffectFontSize:I

.field private mMatrixEffectFrequency:I

.field private mMatrixEffectTextAlpha:I

.field private mMatrixEffectTextColor:I

.field private paintBg:Landroid/graphics/Paint;

.field private paintBgBmp:Landroid/graphics/Paint;

.field private paintInitBg:Landroid/graphics/Paint;

.field private paintTxt:Landroid/graphics/Paint;

.field private txtPosByColumn:[I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/ther/recents/MatrixEffect;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/high16 v2, -0x1000000

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x18

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->fontSize:I

    const-string v0, "+-*/!^\'([])#@&?,=$\u20ac\u00b0|%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->cars:[C

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectTextColor()V

    iget v1, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectTextAlpha()V

    iget v1, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectTextAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectFontSize()V

    iget v1, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBg:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBg:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectBGColor()V

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectBGColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBg:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectFrequency()V

    iget v1, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectFrequency:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBgBmp:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintBgBmp:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectBGColor()V

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectBGColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintInitBg:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintInitBg:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->setMatrixEffectBGColor()V

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectBGColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintInitBg:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->paintInitBg:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private drawCanvas()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->canvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->width:I

    int-to-float v3, v2

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    int-to-float v4, v2

    iget-object v5, p0, Lcom/ther/recents/MatrixEffect;->paintBg:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/ther/recents/MatrixEffect;->drawText()V

    return-void
.end method

.method private drawText()V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->canvas:Landroid/graphics/Canvas;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ther/recents/MatrixEffect;->cars:[C

    sget-object v4, Lcom/ther/recents/MatrixEffect;->RANDOM:Ljava/util/Random;

    iget-object v5, p0, Lcom/ther/recents/MatrixEffect;->cars:[C

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-char v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ther/recents/MatrixEffect;->fontSize:I

    mul-int/2addr v3, v0

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    aget v4, v4, v0

    iget v5, p0, Lcom/ther/recents/MatrixEffect;->fontSize:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ther/recents/MatrixEffect;->paintTxt:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->fontSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    if-le v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fef333333333333L    # 0.975

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_0
    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    aget v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->canvasBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/ther/recents/MatrixEffect;->paintBgBmp:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-direct {p0}, Lcom/ther/recents/MatrixEffect;->drawCanvas()V

    invoke-virtual {p0}, Lcom/ther/recents/MatrixEffect;->invalidate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/ther/recents/MatrixEffect;->width:I

    iput p2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    iget v0, p0, Lcom/ther/recents/MatrixEffect;->width:I

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->canvasBmp:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/ther/recents/MatrixEffect;->canvasBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->canvas:Landroid/graphics/Canvas;

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->width:I

    int-to-float v3, v2

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    int-to-float v4, v2

    iget-object v5, p0, Lcom/ther/recents/MatrixEffect;->paintInitBg:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ther/recents/MatrixEffect;->width:I

    iget v1, p0, Lcom/ther/recents/MatrixEffect;->fontSize:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->columnSize:I

    iget v0, p0, Lcom/ther/recents/MatrixEffect;->columnSize:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    const/4 v6, 0x0

    :goto_0
    iget v0, p0, Lcom/ther/recents/MatrixEffect;->columnSize:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->txtPosByColumn:[I

    sget-object v1, Lcom/ther/recents/MatrixEffect;->RANDOM:Ljava/util/Random;

    iget v2, p0, Lcom/ther/recents/MatrixEffect;->height:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setMatrixEffectBGColor()V
    .locals 3

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_matrix_anim_bg_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectBGColor:I

    return-void
.end method

.method setMatrixEffectFontSize()V
    .locals 3

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_matrix_anim_font_size"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectFontSize:I

    return-void
.end method

.method setMatrixEffectFrequency()V
    .locals 3

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_matrix_anim_frequency"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectFrequency:I

    return-void
.end method

.method setMatrixEffectTextAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_matrix_anim_text_alpha"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectTextAlpha:I

    return-void
.end method

.method setMatrixEffectTextColor()V
    .locals 3

    iget-object v0, p0, Lcom/ther/recents/MatrixEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "recents_matrix_anim_text_color"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/ther/recents/MatrixEffect;->mMatrixEffectTextColor:I

    return-void
.end method
