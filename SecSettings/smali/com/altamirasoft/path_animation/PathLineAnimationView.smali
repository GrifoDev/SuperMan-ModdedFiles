.class public Lcom/altamirasoft/path_animation/PathLineAnimationView;
.super Landroid/widget/ImageView;
.source "PathLineAnimationView.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field context:Landroid/content/Context;

.field private dataArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/PathLineAnimatorModel;",
            ">;"
        }
    .end annotation
.end field

.field haveLoaded:Z

.field haveSVG:Z

.field haveSize:Z

.field height:I

.field isFinished:Z

.field isFinishedSingleAnimation:Z

.field isReverse:Z

.field isSingleAnimation:Z

.field listener:Lcom/altamirasoft/path_animation/PathListener;

.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;",
            ">;"
        }
    .end annotation
.end field

.field private mReverseAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

.field public needDebug:Z

.field needStart:Z

.field paddingBottom:I

.field paddingLeft:I

.field paddingRight:I

.field paddingTop:I

.field paint:Landroid/graphics/Paint;

.field pathPaint:Landroid/graphics/Paint;

.field pattern2:[F

.field pattern4:[F

.field reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

.field selfListener:Landroid/animation/Animator$AnimatorListener;

.field private set:Landroid/animation/AnimatorSet;

.field simplePaint:Landroid/graphics/Paint;

.field startDelay:J

.field width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    invoke-direct {p0, p1, p2, v2}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    iput-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/altamirasoft/path_animation/PathLineAnimationView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mReverseAnimatorListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimatorListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v0, 0x4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0
.end method

.method private renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V
    .locals 2

    new-instance v0, Landroid/graphics/DashPathEffect;

    invoke-direct {v0, p3, p4}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private resetAnimator()V
    .locals 10

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v7, v3, v6

    aput v8, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v7, v3, v6

    aput v8, v3, v9

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;

    invoke-direct {v4, p0, v0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$2;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;Lcom/altamirasoft/path_animation/PathLineAnimatorModel;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-boolean v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-nez v3, :cond_3

    const-wide/16 v4, 0x3e8

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    :goto_1
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    if-nez v3, :cond_4

    :goto_2
    iget v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    if-nez v3, :cond_5

    :goto_3
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mAnimators:Ljava/util/List;

    iget-object v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    if-nez v3, :cond_2

    const-wide/16 v4, 0x3e8

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v3

    iput-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDuration(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->duration:J

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDelay(I)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->delay:J

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getDirection(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getStartPoint(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatMode(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    iget-object v3, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    invoke-interface {v3, v2}, Lcom/altamirasoft/path_animation/PathAnimatorListener;->getRepeatCount(I)I

    move-result v3

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    goto/16 :goto_1

    :cond_4
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget-object v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->interpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/16 :goto_2

    :cond_5
    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatMode:I

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    iget-object v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->animator:Landroid/animation/ValueAnimator;

    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->repeatCount:I

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    goto/16 :goto_3
.end method

.method private runAnimation()V
    .locals 4

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetProgress()V

    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetAnimator()V

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidateLineListenerValue()V

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->resetListener()V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-wide v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->startDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_1

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "cancel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public initData()V
    .locals 11

    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-eqz v6, :cond_1

    :goto_0
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    if-nez v6, :cond_2

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    goto :goto_0

    :cond_2
    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-nez v6, :cond_4

    :try_start_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingLeft()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingTop()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingRight()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->getPaddingBottom()I

    move-result v6

    iput v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget v8, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->width:I

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingRight:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->height:I

    iget v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingBottom:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    sub-int/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/altamirasoft/path_animation/SvgHelper;->getPathsForViewport(II)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    new-instance v5, Landroid/graphics/PathMeasure;

    invoke-direct {v5}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v3, 0x0

    :goto_1
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_5

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    if-nez v6, :cond_6

    :goto_2
    return-void

    :cond_3
    return-void

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    invoke-direct {v0}, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;-><init>()V

    iput v3, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->position:I

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;

    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    iget-object v6, v1, Lcom/altamirasoft/path_animation/SvgHelper$SvgPath;->path:Landroid/graphics/Path;

    iput-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iput v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->isInitialized:Z

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needStart:Z

    invoke-direct {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->runAnimation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "log"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public invalidateLineListenerValue()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineWidth(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineColor(I)I

    move-result v2

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    invoke-interface {v2, v1}, Lcom/altamirasoft/path_animation/PathListener;->getLineCapStyle(I)Landroid/graphics/Paint$Cap;

    move-result-object v2

    iput-object v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    iget v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingLeft:I

    int-to-float v6, v6

    iget v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paddingTop:I

    int-to-float v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_0
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    if-nez v6, :cond_4

    :cond_2
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    if-eqz v6, :cond_3

    iget v4, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->length:F

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->paint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->direction:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v2, v4, v6

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    if-gtz v6, :cond_6

    :goto_1
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x1

    aput v4, v6, v7

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v4, v6, v7

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v8, v4

    add-float/2addr v8, v2

    iget v9, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isFinishedSingleAnimation:Z

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineWidth:I

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    iget-object v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->lineCap:Landroid/graphics/Paint$Cap;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->simplePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_5
    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    mul-float v2, v4, v6

    iget v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v6, v6

    add-float/2addr v6, v2

    sub-float v5, v6, v4

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v2, v6, v7

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v7, 0x0

    aput v5, v6, v7

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v7, 0x1

    aput v4, v6, v7

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern2:[F

    const/4 v8, 0x0

    invoke-direct {p0, p1, v6, v7, v8}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v6, v8

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    iget v7, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->startPoint:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    sub-float/2addr v7, v2

    const/4 v8, 0x1

    aput v7, v6, v8

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x2

    aput v2, v6, v7

    iget-object v6, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    const/4 v7, 0x3

    aput v4, v6, v7

    iget-object v6, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->path:Landroid/graphics/Path;

    iget-object v7, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pattern4:[F

    invoke-direct {p0, p1, v6, v7, v4}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->renderDash(Landroid/graphics/Canvas;Landroid/graphics/Path;[FF)V

    goto/16 :goto_1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onRestoreInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onSaveInstanceState - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_1

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onSizeChanged - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSize:Z

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    goto :goto_1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onViewAttachedToWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->cancel()V

    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "onViewDetachedFromWindow - view"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resetListener()V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    new-instance v0, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;

    invoke-direct {v0, p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView$1;-><init>(Lcom/altamirasoft/path_animation/PathLineAnimationView;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->set:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->selfListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public resetProgress()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->invalidate()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->dataArray:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;

    iget-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isReverse:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput v2, v0, Lcom/altamirasoft/path_animation/PathLineAnimatorModel;->percent:F

    goto :goto_1
.end method

.method public setOnPathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->animatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-void
.end method

.method public setOnPathListener(Lcom/altamirasoft/path_animation/PathListener;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->listener:Lcom/altamirasoft/path_animation/PathListener;

    return-void
.end method

.method public setOnReversePathAnimatorListener(Lcom/altamirasoft/path_animation/PathAnimatorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->reverseAnimatorListener:Lcom/altamirasoft/path_animation/PathAnimatorListener;

    return-void
.end method

.method public setSVG(I)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->needDebug:Z

    if-nez v0, :cond_0

    :goto_0
    iput-boolean v2, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveLoaded:Z

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->haveSVG:Z

    new-instance v0, Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->pathPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Lcom/altamirasoft/path_animation/SvgHelper;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v0, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->mSvg:Lcom/altamirasoft/path_animation/SvgHelper;

    iget-object v1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->context:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/altamirasoft/path_animation/SvgHelper;->load(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/altamirasoft/path_animation/PathLineAnimationView;->initData()V

    return-void

    :cond_0
    const-string/jumbo v0, "log"

    const-string/jumbo v1, "setSVG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSingleAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/altamirasoft/path_animation/PathLineAnimationView;->isSingleAnimation:Z

    return-void
.end method
