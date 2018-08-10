.class public Landroid/transition/ChangeClipBounds;
.super Landroid/transition/Transition;
.source "ChangeClipBounds.java"


# static fields
.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:clipBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:clipBounds:clip"

.field private static final TAG:Ljava/lang/String; = "ChangeTransform"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android:clipBounds:clip"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:clip"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v4, "android:clipBounds:bounds"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeClipBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 10

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    return-object v8

    :cond_1
    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:clip"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-nez v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-nez v5, :cond_3

    if-nez v1, :cond_3

    return-object v8

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    if-nez v5, :cond_5

    iget-object v6, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    :cond_4
    :goto_1
    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    return-object v8

    :cond_5
    if-nez v1, :cond_4

    iget-object v6, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v7, "android:clipBounds:bounds"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    goto :goto_1

    :cond_6
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/animation/RectEvaluator;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v4, v6}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    const-string/jumbo v7, "clipBounds"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v1, v8, v9

    invoke-static {v6, v7, v4, v8}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz v2, :cond_7

    iget-object v3, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    new-instance v6, Landroid/transition/ChangeClipBounds$1;

    invoke-direct {v6, p0, v3}, Landroid/transition/ChangeClipBounds$1;-><init>(Landroid/transition/ChangeClipBounds;Landroid/view/View;)V

    invoke-virtual {v0, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeClipBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method
