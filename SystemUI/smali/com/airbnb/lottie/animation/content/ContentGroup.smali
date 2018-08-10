.class public Lcom/airbnb/lottie/animation/content/ContentGroup;
.super Ljava/lang/Object;
.source "ContentGroup.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/content/PathContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# instance fields
.field private final contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation
.end field

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final matrix:Landroid/graphics/Matrix;

.field private final name:Ljava/lang/String;

.field private final path:Landroid/graphics/Path;

.field private pathContents:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation
.end field

.field private final rect:Landroid/graphics/RectF;

.field private transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Lcom/airbnb/lottie/model/content/ShapeGroup;)V
    .locals 6

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Lcom/airbnb/lottie/model/content/ShapeGroup;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/animation/content/ContentGroup;->findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/airbnb/lottie/animation/content/ContentGroup;-><init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V

    return-void
.end method

.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;)V
    .locals 5
    .param p5    # Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iput-object p3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iput-object p4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    if-nez p5, :cond_0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-gez v2, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_2
    if-gez v2, :cond_3

    return-void

    :cond_0
    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3, p2}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addAnimationsToLayer(Lcom/airbnb/lottie/model/layer/BaseLayer;)V

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_0

    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v3, v0, Lcom/airbnb/lottie/animation/content/GreedyContent;

    if-nez v3, :cond_2

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/GreedyContent;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p4, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/airbnb/lottie/animation/content/GreedyContent;->absorbContent(Ljava/util/ListIterator;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private static contentsFromModels(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v1

    :cond_0
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/model/content/ContentModel;

    invoke-interface {v3, p0, p1}, Lcom/airbnb/lottie/model/content/ContentModel;->toContent(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;)Lcom/airbnb/lottie/animation/content/Content;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static findTransform(Ljava/util/List;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/content/ContentModel;",
            ">;)",
            "Lcom/airbnb/lottie/model/animatable/AnimatableTransform;"
        }
    .end annotation

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/model/content/ContentModel;

    instance-of v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    if-nez v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    return-object v0
.end method


# virtual methods
.method public addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/ColorFilter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v3, v0, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-nez v3, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v1, v0

    check-cast v1, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-nez p2, :cond_3

    :cond_2
    invoke-interface {v1, p1, v4, p3}, Lcom/airbnb/lottie/animation/content/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/Content;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, p1, p2, p3}, Lcom/airbnb/lottie/animation/content/DrawingContent;->addColorFilter(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/ColorFilter;)V

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-nez v3, :cond_0

    move v0, p3

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_1
    if-gez v2, :cond_1

    return-void

    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getOpacity()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    int-to-float v4, p3

    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    mul-float/2addr v3, v5

    float-to-int v0, v3

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/airbnb/lottie/animation/content/DrawingContent;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v1, p1, v3, v0}, Lcom/airbnb/lottie/animation/content/DrawingContent;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    goto :goto_2
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_1

    return-void

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v0, Lcom/airbnb/lottie/animation/content/DrawingContent;

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/airbnb/lottie/animation/content/DrawingContent;

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-interface {v0, v2, v3}, Lcom/airbnb/lottie/animation/content/DrawingContent;->getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v4, p1, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 5

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_1

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-nez v2, :cond_2

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->path:Landroid/graphics/Path;

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v0}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    goto :goto_2
.end method

.method getPathList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/PathContent;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    return-object v2

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v2, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->pathContents:Ljava/util/List;

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method getTransformationMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->matrix:Landroid/graphics/Matrix;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->transformAnimation:Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;

    invoke-virtual {v0}, Lcom/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public onValueChanged()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/Content;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/ContentGroup;->contents:Ljava/util/List;

    invoke-interface {v3, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/airbnb/lottie/animation/content/Content;->setContents(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method
