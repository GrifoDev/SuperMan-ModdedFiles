.class public Lcom/airbnb/lottie/model/layer/TextLayer;
.super Lcom/airbnb/lottie/model/layer/BaseLayer;
.source "TextLayer.java"


# instance fields
.field private colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final composition:Lcom/airbnb/lottie/LottieComposition;

.field private final contentsForCharacter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;>;"
        }
    .end annotation
.end field

.field private final fillPaint:Landroid/graphics/Paint;

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final rectF:Landroid/graphics/RectF;

.field private strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final strokePaint:Landroid/graphics/Paint;

.field private strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final tempCharArray:[C

.field private final textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

.field private trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/model/layer/BaseLayer;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/Layer;)V

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$1;

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/model/layer/TextLayer$1;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    new-instance v1, Lcom/airbnb/lottie/model/layer/TextLayer$2;

    invoke-direct {v1, p0, v2}, Lcom/airbnb/lottie/model/layer/TextLayer$2;-><init>(Lcom/airbnb/lottie/model/layer/TextLayer;I)V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    iput-object p1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getText()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getTextProperties()Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :cond_1
    :goto_1
    if-nez v0, :cond_6

    :cond_2
    :goto_2
    if-nez v0, :cond_7

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->color:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_0

    :cond_5
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->stroke:Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->strokeWidth:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_2

    :cond_7
    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;->tracking:Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/model/layer/TextLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_3
.end method

.method private drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_2

    :cond_0
    const/4 v3, 0x1

    move-object v0, p3

    move-object v1, p1

    move v5, v4

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_0

    return-void
.end method

.method private drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/ContentGroup;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/content/ContentGroup;->getPath()Landroid/graphics/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v3, p4, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v2, v3, p5}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method private drawCharacterFromFont(CLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    int-to-char v1, p1

    aput-char v1, v0, v2

    iget-boolean v0, p2, Lcom/airbnb/lottie/model/DocumentData;->strokeOverFill:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    iget-object v1, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1, p3}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacter([CLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawGlyph(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void
.end method

.method private drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V
    .locals 15

    move-object/from16 v0, p1

    iget v2, v0, Lcom/airbnb/lottie/model/DocumentData;->size:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v5, v2, v4

    invoke-static/range {p2 .. p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v11

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v10, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v2, v4}, Lcom/airbnb/lottie/model/FontCharacter;->hashFor(CLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieComposition;->getCharacters()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/FontCharacter;

    if-eqz v3, :cond_1

    move-object v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterAsGlyph(Lcom/airbnb/lottie/model/FontCharacter;Landroid/graphics/Matrix;FLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/model/FontCharacter;->getWidth()D

    move-result-wide v6

    double-to-float v2, v6

    mul-float/2addr v2, v5

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    mul-float/2addr v2, v4

    mul-float v14, v2, v11

    move-object/from16 v0, p1

    iget v2, v0, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v2, v2

    const/high16 v4, 0x41200000    # 10.0f

    div-float v13, v2, v4

    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v2, :cond_2

    :goto_1
    mul-float v2, v13, v11

    add-float/2addr v14, v2

    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v14, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v2}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v13, v2

    goto :goto_1
.end method

.method private drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V
    .locals 14

    invoke-static/range {p3 .. p3}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v4

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/Font;->getFamily()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lcom/airbnb/lottie/model/Font;->getStyle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/airbnb/lottie/LottieDrawable;->getTypeface(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v5, p1, Lcom/airbnb/lottie/model/DocumentData;->text:Ljava/lang/String;

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieDrawable;->getTextDelegate()Lcom/airbnb/lottie/TextDelegate;

    move-result-object v6

    if-nez v6, :cond_1

    :goto_0
    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v11, p1, Lcom/airbnb/lottie/model/DocumentData;->size:I

    int-to-float v11, v11

    iget-object v12, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v12}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v3, v10, :cond_2

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v6, v5}, Lcom/airbnb/lottie/TextDelegate;->getTextInternal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    move-object/from16 v0, p4

    invoke-direct {p0, v2, p1, v0}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawCharacterFromFont(CLcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Canvas;)V

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    int-to-char v11, v2

    const/4 v12, 0x0

    aput-char v11, v10, v12

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v11, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->tempCharArray:[C

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    iget v10, p1, Lcom/airbnb/lottie/model/DocumentData;->tracking:I

    int-to-float v10, v10

    const/high16 v11, 0x41200000    # 10.0f

    div-float v7, v10, v11

    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v10, :cond_3

    :goto_2
    mul-float v10, v7, v4

    add-float v8, v1, v10

    const/4 v10, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v10}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v10, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->trackingAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v10}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    add-float/2addr v7, v10

    goto :goto_2
.end method

.method private getContentsForCharacter(Lcom/airbnb/lottie/model/FontCharacter;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/model/FontCharacter;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/ContentGroup;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/airbnb/lottie/model/FontCharacter;->getShapes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v4, :cond_1

    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->contentsForCharacter:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    return-object v5

    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/content/ShapeGroup;

    new-instance v5, Lcom/airbnb/lottie/animation/content/ContentGroup;

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-direct {v5, v6, p0, v2}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method drawLayer(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->textAnimation:Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TextKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieComposition;->getFonts()Ljava/util/Map;

    move-result-object v4

    iget-object v5, v1, Lcom/airbnb/lottie/model/DocumentData;->fontName:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/model/Font;

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->color:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->transform:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    div-int/lit8 v0, v4, 0x64

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v4, :cond_4

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget v5, v1, Lcom/airbnb/lottie/model/DocumentData;->strokeWidth:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->composition:Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    mul-float/2addr v5, v3

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v4}, Lcom/airbnb/lottie/LottieDrawable;->useTextGlyphs()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-direct {p0, v1, v2, p2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextWithFont(Lcom/airbnb/lottie/model/DocumentData;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Matrix;Landroid/graphics/Canvas;)V

    :goto_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_2
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->fillPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->colorAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokePaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/model/layer/TextLayer;->strokeWidthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, v1, p2, v2, p1}, Lcom/airbnb/lottie/model/layer/TextLayer;->drawTextGlyphs(Lcom/airbnb/lottie/model/DocumentData;Landroid/graphics/Matrix;Lcom/airbnb/lottie/model/Font;Landroid/graphics/Canvas;)V

    goto :goto_4
.end method
