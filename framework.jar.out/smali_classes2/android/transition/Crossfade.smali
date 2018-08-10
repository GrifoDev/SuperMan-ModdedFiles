.class public Landroid/transition/Crossfade;
.super Landroid/transition/Transition;
.source "Crossfade.java"


# static fields
.field public static final FADE_BEHAVIOR_CROSSFADE:I = 0x0

.field public static final FADE_BEHAVIOR_OUT_IN:I = 0x2

.field public static final FADE_BEHAVIOR_REVEAL:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Crossfade"

.field private static final PROPNAME_BITMAP:Ljava/lang/String; = "android:crossfade:bitmap"

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:crossfade:bounds"

.field private static final PROPNAME_DRAWABLE:Ljava/lang/String; = "android:crossfade:drawable"

.field public static final RESIZE_BEHAVIOR_NONE:I = 0x0

.field public static final RESIZE_BEHAVIOR_SCALE:I = 0x1

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;


# instance fields
.field private mFadeBehavior:I

.field private mResizeBehavior:I


# direct methods
.method static synthetic -get0(Landroid/transition/Crossfade;)I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    iput v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    iput v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v1, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v5, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:bounds"

    invoke-interface {v5, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    instance-of v5, v4, Landroid/view/TextureView;

    if-eqz v5, :cond_1

    check-cast v4, Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:bitmap"

    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v5, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v6, "android:crossfade:drawable"

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/Crossfade;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 22

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v19, v0

    move-object/from16 v0, p3

    iget-object v14, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:crossfade:bounds"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/graphics/Rect;

    const-string/jumbo v2, "android:crossfade:bounds"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    const-string/jumbo v2, "android:crossfade:bitmap"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/graphics/Bitmap;

    const-string/jumbo v2, "android:crossfade:bitmap"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/Bitmap;

    const-string/jumbo v2, "android:crossfade:drawable"

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    const-string/jumbo v2, "android:crossfade:drawable"

    invoke-interface {v14, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_a

    if-eqz v7, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_a

    if-eqz v4, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v15

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-virtual {v15, v7}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-virtual {v15, v6}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    const-string/jumbo v2, "alpha"

    const/16 v3, 0xff

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    filled-new-array {v3, v0, v1}, [I

    move-result-object v3

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    :goto_2
    new-instance v2, Landroid/transition/Crossfade$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5, v6}, Landroid/transition/Crossfade$1;-><init>(Landroid/transition/Crossfade;Landroid/view/View;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_9

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    const/16 v20, 0x0

    const/16 v21, 0x1

    aput v20, v3, v21

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x2

    aput v20, v3, v21

    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    :cond_3
    :goto_3
    new-instance v2, Landroid/transition/Crossfade$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Landroid/transition/Crossfade$2;-><init>(Landroid/transition/Crossfade;ZLandroid/view/View;Landroid/graphics/drawable/BitmapDrawable;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v8, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v16, Landroid/animation/AnimatorSet;

    invoke-direct/range {v16 .. v16}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz v9, :cond_4

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    const-string/jumbo v2, "bounds"

    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    move-object/from16 v0, v20

    invoke-static {v6, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mResizeBehavior:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const-string/jumbo v2, "bounds"

    sget-object v3, Landroid/transition/Crossfade;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    const/16 v21, 0x1

    aput-object v13, v20, v21

    move-object/from16 v0, v20

    invoke-static {v7, v2, v3, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_5
    return-object v16

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v15

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "alpha"

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    invoke-static {v6, v2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v8

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/transition/Crossfade;->mFadeBehavior:I

    if-nez v2, :cond_3

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/16 v20, 0x0

    const/16 v21, 0x0

    aput v20, v3, v21

    const/high16 v20, 0x3f800000    # 1.0f

    const/16 v21, 0x1

    aput v20, v3, v21

    invoke-static {v5, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    return-object v2
.end method

.method public getFadeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    return v0
.end method

.method public getResizeBehavior()I
    .locals 1

    iget v0, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    return v0
.end method

.method public setFadeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mFadeBehavior:I

    :cond_0
    return-object p0
.end method

.method public setResizeBehavior(I)Landroid/transition/Crossfade;
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/transition/Crossfade;->mResizeBehavior:I

    :cond_0
    return-object p0
.end method
