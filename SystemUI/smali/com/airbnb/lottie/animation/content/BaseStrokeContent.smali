.class public abstract Lcom/airbnb/lottie/animation/content/BaseStrokeContent;
.super Ljava/lang/Object;
.source "BaseStrokeContent.java"

# interfaces
.implements Lcom/airbnb/lottie/animation/content/DrawingContent;
.implements Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;
    }
.end annotation


# instance fields
.field private final dashPatternAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private final dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final dashPatternValues:[F

.field private final lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

.field private final opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final paint:Landroid/graphics/Paint;

.field private final path:Landroid/graphics/Path;

.field private final pathGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final pm:Landroid/graphics/PathMeasure;

.field private final rect:Landroid/graphics/RectF;

.field private final trimPathPath:Landroid/graphics/Path;

.field private final widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation",
            "<*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/airbnb/lottie/LottieDrawable;Lcom/airbnb/lottie/model/layer/BaseLayer;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/LottieDrawable;",
            "Lcom/airbnb/lottie/model/layer/BaseLayer;",
            "Landroid/graphics/Paint$Cap;",
            "Landroid/graphics/Paint$Join;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ">;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/graphics/PathMeasure;

    invoke-direct {v1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {p5}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz p8, :cond_0

    invoke-virtual {p8}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_3

    :goto_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    const/4 v0, 0x0

    :goto_4
    invoke-interface {p7}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-nez v1, :cond_5

    :goto_5
    return-void

    :cond_0
    iput-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {p7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;->createAnimation()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {p2, v1}, Lcom/airbnb/lottie/model/layer/BaseLayer;->addAnimation(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v1, p0}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->addUpdateListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_5
.end method

.method private applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3dcccccd    # 0.1f

    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternOffsetAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    invoke-direct {v4, v5, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    const-string/jumbo v3, "StrokeContent#applyDashPattern"

    invoke-static {v3}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v3}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v4, v0

    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v5

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v5, v3, v0

    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v4, v3, v0

    mul-float/2addr v4, v2

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aget v3, v3, v0

    cmpg-float v3, v3, v6

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->dashPatternValues:[F

    aput v6, v3, v0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V
    .locals 12

    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_0
    if-gez v3, :cond_1

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v8

    :goto_1
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getOffset()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x43b40000    # 360.0f

    div-float v5, v9, v10

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getStart()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v6, v9, v5

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getEnd()Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    mul-float/2addr v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    add-float v1, v9, v5

    const/4 v0, 0x0

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_2
    if-gez v3, :cond_3

    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    const-string/jumbo v9, "StrokeContent#applyTrimPath"

    invoke-static {v9}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_1
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9, p3}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    :cond_2
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v8, v9

    goto/16 :goto_1

    :cond_3
    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-static {p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v9}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    invoke-virtual {v9, p3}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pm:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    cmpl-float v9, v1, v8

    if-lez v9, :cond_6

    sub-float v9, v1, v8

    add-float v10, v0, v4

    cmpg-float v9, v9, v10

    if-gez v9, :cond_6

    sub-float v9, v1, v8

    cmpg-float v9, v0, v9

    if-gez v9, :cond_6

    cmpl-float v9, v6, v8

    if-lez v9, :cond_5

    sub-float v9, v6, v8

    div-float v7, v9, v4

    :goto_3
    sub-float v9, v1, v8

    div-float/2addr v9, v4

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_4
    :goto_4
    add-float/2addr v0, v4

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    add-float v9, v0, v4

    cmpg-float v9, v9, v6

    if-gez v9, :cond_7

    const/4 v9, 0x1

    :goto_5
    if-nez v9, :cond_4

    cmpl-float v9, v0, v1

    if-gtz v9, :cond_4

    add-float v9, v0, v4

    cmpg-float v9, v9, v1

    if-gtz v9, :cond_8

    cmpg-float v9, v6, v0

    if-gez v9, :cond_8

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    goto :goto_5

    :cond_8
    cmpg-float v9, v6, v0

    if-gez v9, :cond_9

    const/4 v7, 0x0

    :goto_6
    add-float v9, v0, v4

    cmpl-float v9, v1, v9

    if-lez v9, :cond_a

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_7
    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    const/4 v10, 0x0

    invoke-static {v9, v7, v2, v10}, Lcom/airbnb/lottie/utils/Utils;->applyTrimPathIfNeeded(Landroid/graphics/Path;FFF)V

    iget-object v9, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->trimPathPath:Landroid/graphics/Path;

    iget-object v10, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_9
    sub-float v9, v6, v0

    div-float v7, v9, v4

    goto :goto_6

    :cond_a
    sub-float v9, v1, v0

    div-float v2, v9, v4

    goto :goto_7
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 7

    const/high16 v6, 0x437f0000    # 255.0f

    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    int-to-float v4, p3

    div-float v5, v4, v6

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->opacityAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v0, v4

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-static {p2}, Lcom/airbnb/lottie/utils/Utils;->getScale(Landroid/graphics/Matrix;)F

    move-result v6

    mul-float/2addr v4, v6

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_0

    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyDashPatternIfNeeded(Landroid/graphics/Matrix;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    const-string/jumbo v4, "StrokeContent#draw"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_1
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$200(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Lcom/airbnb/lottie/animation/content/TrimPathContent;

    move-result-object v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_1
    if-gez v2, :cond_3

    const-string/jumbo v4, "StrokeContent#buildPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    const-string/jumbo v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const-string/jumbo v4, "StrokeContent#drawPath"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, v3, p2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->applyTrimPath(Landroid/graphics/Canvas;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;Landroid/graphics/Matrix;)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v3}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method public getBounds(Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 11

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const-string/jumbo v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->beginSection(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x0

    :goto_0
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_0

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->widthAnimation:Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    div-float v6, v3, v9

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    div-float v7, v3, v9

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    div-float v8, v3, v9

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    div-float v9, v3, v9

    add-float/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->rect:Landroid/graphics/RectF;

    invoke-virtual {p1, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget v4, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v10

    iget v5, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v10

    iget v6, p1, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v10

    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v10

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    const-string/jumbo v4, "StrokeContent#getBounds"

    invoke-static {v4}, Lcom/airbnb/lottie/L;->endSection(Ljava/lang/String;)F

    return-void

    :cond_0
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->path:Landroid/graphics/Path;

    invoke-static {v2}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4}, Lcom/airbnb/lottie/animation/content/PathContent;->getPath()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v5, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onValueChanged()V
    .locals 1

    iget-object v0, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->lottieDrawable:Lcom/airbnb/lottie/LottieDrawable;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieDrawable;->invalidateSelf()V

    return-void
.end method

.method public setContents(Ljava/util/List;Ljava/util/List;)V
    .locals 7
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

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_0
    if-gez v2, :cond_0

    if-nez v3, :cond_3

    :goto_1
    const/4 v1, 0x0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-gez v2, :cond_4

    if-nez v1, :cond_a

    :goto_3
    return-void

    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v4, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-nez v4, :cond_2

    :cond_1
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    goto :goto_4

    :cond_3
    invoke-virtual {v3, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_1

    :cond_4
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/animation/content/Content;

    instance-of v4, v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    if-nez v4, :cond_6

    :cond_5
    instance-of v4, v0, Lcom/airbnb/lottie/animation/content/PathContent;

    if-nez v4, :cond_8

    :goto_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v4}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->getType()Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    move-result-object v4

    sget-object v5, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->Individually:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    if-ne v4, v5, :cond_5

    if-nez v1, :cond_7

    :goto_6
    new-instance v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    move-object v4, v0

    check-cast v4, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-direct {v1, v4, v6}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    check-cast v0, Lcom/airbnb/lottie/animation/content/TrimPathContent;

    invoke-virtual {v0, p0}, Lcom/airbnb/lottie/animation/content/TrimPathContent;->addListener(Lcom/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener;)V

    goto :goto_5

    :cond_7
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    if-eqz v1, :cond_9

    :goto_7
    invoke-static {v1}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;->access$100(Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;)Ljava/util/List;

    move-result-object v4

    check-cast v0, Lcom/airbnb/lottie/animation/content/PathContent;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v1, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;

    invoke-direct {v1, v3, v6}, Lcom/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup;-><init>(Lcom/airbnb/lottie/animation/content/TrimPathContent;Lcom/airbnb/lottie/animation/content/BaseStrokeContent$1;)V

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lcom/airbnb/lottie/animation/content/BaseStrokeContent;->pathGroups:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method
