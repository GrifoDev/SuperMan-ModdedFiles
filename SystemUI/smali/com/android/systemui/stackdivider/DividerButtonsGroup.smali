.class public Lcom/android/systemui/stackdivider/DividerButtonsGroup;
.super Landroid/widget/RelativeLayout;
.source "DividerButtonsGroup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private isNeedShowToolTip:Z

.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mAppPairPos:[I

.field private mAppPairRect:Landroid/graphics/Rect;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mButtons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/view/GestureDetector;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonsWrapper:Landroid/view/View;

.field private mRipple:Landroid/graphics/drawable/RippleDrawable;

.field private mRippleView:Landroid/view/View;

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->isNeedShowToolTip:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->isNeedShowToolTip:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->playTouchSound()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->isNeedShowToolTip:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairPos:[I

    return-void
.end method

.method private changeSnapButtonLook(Z)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a0375

    if-ne v3, v4, :cond_0

    if-eqz p1, :cond_2

    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f080463

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    check-cast v1, Landroid/widget/ImageView;

    const v3, 0x7f080464

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$1;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;I)V

    return-object v0
.end method

.method private drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 10

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703fc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-direct {v4, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int v1, v6, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    add-int v2, v6, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    sub-int v3, v6, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    div-int/lit8 v7, v5, 0x2

    add-int v0, v6, v7

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v6, v1, v3, v2, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/View;->setPressed(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private playTouchSound()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method animate(Z)V
    .locals 12

    const-wide/16 v10, 0xa7

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    if-eqz p1, :cond_0

    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x258

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const v4, 0x3f19999a    # 0.6f

    invoke-direct {v2, v8, v4}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$2;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_2

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-string/jumbo v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    invoke-static {p0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-array v5, v6, [Landroid/animation/Animator;

    aput-object v0, v5, v7

    aput-object v1, v5, v9

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x14d

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut90;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/stackdivider/DividerButtonsGroup$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup$3;-><init>(Lcom/android/systemui/stackdivider/DividerButtonsGroup;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v5}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data
.end method

.method calAppPairCoorAndRect([ILandroid/graphics/Rect;)V
    .locals 5

    const v2, 0x7f0a0368

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->getLocalVisibleRect(Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DividerPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception in DividerButtonsGroup::calAppPairCoorAndRect() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method cancelAnimate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getAppPairCoorAndRect([ILandroid/graphics/Rect;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairPos:[I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->calAppPairCoorAndRect([ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairPos:[I

    aget v0, v0, v2

    aput v0, p1, v2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairPos:[I

    aget v0, v0, v3

    aput v0, p1, v3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, p2, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAppPairRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerButtonsGroup_6092(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerButtonsGroup_6275(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->drawRipple(Landroid/view/View;Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public notifySnapMode(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->changeSnapButtonLook(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 12

    const v11, 0x7f0a0373

    const v7, 0x7f0a0368

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v10, :cond_1

    const/4 v2, 0x1

    :goto_0
    sget-boolean v6, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    if-eqz v2, :cond_3

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f0a0375

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f0a0376

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    const v7, 0x7f0a0374

    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {p0, v11}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v6, 0x7f0a0372

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtonsWrapper:Landroid/view/View;

    const v6, 0x7f0a0371

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRippleView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/RippleDrawable;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mRipple:Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07040c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    if-eq v6, v11, :cond_0

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_5
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_6
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mButtons:Landroid/util/ArrayMap;

    new-instance v7, Landroid/view/GestureDetector;

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->createGestureDetector(I)Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-virtual {v6, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/systemui/stackdivider/-$Lambda$WyBSwfTf59kvHTKiOvAAQ4sJCiw$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/stackdivider/-$Lambda$WyBSwfTf59kvHTKiOvAAQ4sJCiw$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v6, Lcom/android/systemui/stackdivider/-$Lambda$WyBSwfTf59kvHTKiOvAAQ4sJCiw;

    invoke-direct {v6, p0}, Lcom/android/systemui/stackdivider/-$Lambda$WyBSwfTf59kvHTKiOvAAQ4sJCiw;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {v4, v10}, Landroid/view/View;->semSetHoverPopupType(I)V

    goto :goto_4

    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_3
    const v6, 0x7f0a0375

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :cond_4
    const v6, 0x7f0a0374

    invoke-virtual {p0, v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_5
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_6
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_5

    :sswitch_0
    const/4 v3, 0x6

    goto :goto_6

    :sswitch_1
    const/4 v3, 0x0

    goto :goto_6

    :sswitch_2
    const/4 v3, 0x1

    goto :goto_6

    :sswitch_3
    const/4 v3, 0x5

    goto :goto_6

    :sswitch_4
    const/4 v3, 0x2

    goto :goto_6

    :cond_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0368 -> :sswitch_0
        0x7f0a0373 -> :sswitch_4
        0x7f0a0374 -> :sswitch_3
        0x7f0a0375 -> :sswitch_1
        0x7f0a0376 -> :sswitch_2
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->showToast(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    const/4 v0, 0x1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method public setNeedShowToolTip(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->isNeedShowToolTip:Z

    return-void
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    return-void
.end method

.method showToast(Landroid/view/View;)V
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502ba

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    if-nez v7, :cond_1

    iget v7, v3, Landroid/graphics/Point;->x:I

    aget v8, v0, v9

    sub-int/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v6, v7, v8

    :goto_0
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    if-ne v7, v10, :cond_0

    sub-int/2addr v6, v1

    :cond_0
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    const/4 v7, 0x1

    aget v7, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-double v8, v8

    const-wide v10, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v4

    const v8, 0x800035

    invoke-virtual {v5, v8, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v5}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    aget v7, v0, v9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v6, v7, v8

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method
