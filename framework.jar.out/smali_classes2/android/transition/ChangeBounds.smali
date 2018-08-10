.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$1;,
        Landroid/transition/ChangeBounds$2;,
        Landroid/transition/ChangeBounds$3;,
        Landroid/transition/ChangeBounds$4;,
        Landroid/transition/ChangeBounds$5;,
        Landroid/transition/ChangeBounds$6;,
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android:changeBounds:bounds"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:changeBounds:clip"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:changeBounds:parent"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:changeBounds:windowX"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "android:changeBounds:windowY"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    iput-boolean v3, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    sget-object v2, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/transition/ChangeBounds;->setResizeClip(Z)V

    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_0
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowX"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    aget v3, v3, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:windowY"

    iget-object v3, p0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-boolean v1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v2, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Landroid/transition/ChangeBounds;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    if-nez v0, :cond_2

    if-ne p1, p2, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/transition/ChangeBounds;->captureValues(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 60

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v4, 0x0

    return-object v4

    :cond_1
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v49, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v30, v0

    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v49

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Landroid/view/ViewGroup;

    const-string/jumbo v4, "android:changeBounds:parent"

    move-object/from16 v0, v30

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    if-eqz v48, :cond_2

    if-nez v29, :cond_3

    :cond_2
    const/4 v4, 0x0

    return-object v4

    :cond_3
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds;->parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v47, v0

    move-object/from16 v0, v26

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v51, v0

    move-object/from16 v0, v26

    iget v9, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v50, v0

    move-object/from16 v0, v26

    iget v10, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move-object/from16 v0, v26

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v52, v50, v47

    sub-int v46, v43, v51

    sub-int v31, v10, v8

    sub-int v28, v11, v9

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/graphics/Rect;

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    const/16 v38, 0x0

    if-eqz v52, :cond_c

    if-eqz v46, :cond_c

    :goto_0
    move/from16 v0, v47

    if-ne v0, v8, :cond_4

    move/from16 v0, v51

    if-eq v0, v9, :cond_5

    :cond_4
    const/16 v38, 0x1

    :cond_5
    move/from16 v0, v50

    if-ne v0, v10, :cond_6

    move/from16 v0, v43

    if-eq v0, v11, :cond_7

    :cond_6
    add-int/lit8 v38, v38, 0x1

    :cond_7
    if-eqz v45, :cond_8

    move-object/from16 v0, v45

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_9

    :cond_8
    if-nez v45, :cond_a

    if-eqz v7, :cond_a

    :cond_9
    add-int/lit8 v38, v38, 0x1

    :cond_a
    if-lez v38, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    if-nez v4, :cond_11

    move/from16 v0, v47

    move/from16 v1, v51

    move/from16 v2, v50

    move/from16 v3, v43

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/4 v4, 0x2

    move/from16 v0, v38

    if-ne v0, v4, :cond_e

    move/from16 v0, v52

    move/from16 v1, v31

    if-ne v0, v1, :cond_d

    move/from16 v0, v46

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v51

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v56

    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    :goto_1
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_b

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v40

    check-cast v40, Landroid/view/ViewGroup;

    const/4 v4, 0x1

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    new-instance v57, Landroid/transition/ChangeBounds$9;

    move-object/from16 v0, v57

    move-object/from16 v1, p0

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/transition/ChangeBounds;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_b
    return-object v18

    :cond_c
    if-eqz v31, :cond_7

    if-eqz v28, :cond_7

    goto/16 :goto_0

    :cond_d
    new-instance v58, Landroid/transition/ChangeBounds$ViewBounds;

    move-object/from16 v0, v58

    invoke-direct {v0, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v51

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v56

    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v56

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v55

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v50

    int-to-float v5, v0

    move/from16 v0, v43

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v23

    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v58

    move-object/from16 v1, v23

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v22

    new-instance v42, Landroid/animation/AnimatorSet;

    invoke-direct/range {v42 .. v42}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v55, v4, v5

    const/4 v5, 0x1

    aput-object v22, v4, v5

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    move-object/from16 v18, v42

    new-instance v4, Landroid/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-direct {v4, v0, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1

    :cond_e
    move/from16 v0, v47

    if-ne v0, v8, :cond_f

    move/from16 v0, v51

    if-eq v0, v9, :cond_10

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v51

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v56

    sget-object v4, Landroid/transition/ChangeBounds;->TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    goto/16 :goto_1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v50

    int-to-float v5, v0

    move/from16 v0, v43

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v21

    sget-object v4, Landroid/transition/ChangeBounds;->BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    goto/16 :goto_1

    :cond_11
    move/from16 v0, v52

    move/from16 v1, v31

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v36

    add-int v4, v47, v37

    add-int v5, v51, v36

    move/from16 v0, v47

    move/from16 v1, v51

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    const/16 v41, 0x0

    move/from16 v0, v47

    if-ne v0, v8, :cond_12

    move/from16 v0, v51

    if-eq v0, v9, :cond_13

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v47

    int-to-float v5, v0

    move/from16 v0, v51

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v56

    sget-object v4, Landroid/transition/ChangeBounds;->POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v41

    :cond_13
    move-object/from16 v34, v7

    if-nez v45, :cond_14

    new-instance v45, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v45

    move/from16 v1, v52

    move/from16 v2, v46

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_14
    if-nez v7, :cond_19

    new-instance v27, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v31

    move/from16 v2, v28

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_2
    const/16 v25, 0x0

    move-object/from16 v0, v45

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    move-object/from16 v0, v45

    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    const-string/jumbo v4, "clipBounds"

    sget-object v5, Landroid/transition/ChangeBounds;->sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v45, v12, v13

    const/4 v13, 0x1

    aput-object v27, v12, v13

    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v25

    new-instance v4, Landroid/transition/ChangeBounds$8;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_15
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v18

    move-object/from16 v7, v27

    goto/16 :goto_1

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v53, v4, v5

    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v54, v4, v5

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v32, v4, v5

    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/transition/ChangeBounds;->tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v33, v4, v5

    move/from16 v0, v53

    move/from16 v1, v32

    if-ne v0, v1, :cond_17

    move/from16 v0, v54

    move/from16 v1, v33

    if-eq v0, v1, :cond_18

    :cond_17
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v59

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v35

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v59

    move/from16 v1, v35

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v20

    new-instance v24, Landroid/graphics/Canvas;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    add-int v4, v53, v59

    add-int v5, v54, v35

    move/from16 v0, v53

    move/from16 v1, v54

    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    move-result v17

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Landroid/transition/ChangeBounds;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v53

    int-to-float v5, v0

    move/from16 v0, v54

    int-to-float v12, v0

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v33

    int-to-float v14, v0

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v56

    sget-object v4, Landroid/transition/ChangeBounds;->DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v39

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v39, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v19

    new-instance v12, Landroid/transition/ChangeBounds$10;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v19

    :cond_18
    const/4 v4, 0x0

    return-object v4

    :cond_19
    move-object/from16 v27, v7

    goto/16 :goto_2
.end method

.method public getResizeClip()Z
    .locals 1

    iget-boolean v0, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/transition/ChangeBounds;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mReparent:Z

    return-void
.end method

.method public setResizeClip(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/transition/ChangeBounds;->mResizeClip:Z

    return-void
.end method
