.class public Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;
.super Landroid/widget/FrameLayout;
.source "MaterialRippleLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;,
        Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$SingleTapConfirm;,
        Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;
    }
.end annotation


# static fields
.field private static final DEFAULT_ALPHA:F = 0.7f

.field private static final DEFAULT_BACKGROUND:I = 0x0

.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final DEFAULT_DELAY_CLICK:Z = true

.field private static final DEFAULT_DIAMETER_DP:F = 35.0f

.field private static final DEFAULT_DURATION:I = 0x12c

.field private static final DEFAULT_FADE_DURATION:I = 0x32

.field private static final DEFAULT_HOVER:Z = true

.field private static final DEFAULT_PERSISTENT:Z = false

.field private static final DEFAULT_RIPPLE_OVERLAY:Z = true

.field private static final FADE_EXTRA_DELAY:I = 0x19

.field private static final HOVER_DURATION:J = 0x96L


# instance fields
.field private final bounds:Landroid/graphics/Rect;

.field private childView:Landroid/view/View;

.field private circleAlphaProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private eventCancelled:Z

.field private eventX:F

.field private eventY:F

.field private gestureDetector:Landroid/view/GestureDetector;

.field private hoverAnimator:Landroid/animation/ObjectAnimator;

.field private final paint:Landroid/graphics/Paint;

.field private radius:F

.field private radiusProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private rippleAlpha:I

.field private rippleAnimator:Landroid/animation/AnimatorSet;

.field private rippleBackground:Landroid/graphics/drawable/Drawable;

.field private rippleColor:I

.field private rippleDelayClick:Z

.field private rippleDiameter:I

.field private rippleDuration:I

.field private rippleFadeDuration:I

.field private rippleHover:Z

.field private rippleOverlay:Z

.field private ripplePersistent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v5}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$2;

    const-class v2, Ljava/lang/Float;

    const-string v3, "radius"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$2;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    new-instance v1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;

    const-class v2, Ljava/lang/Integer;

    const-string v3, "rippleAlpha"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$3;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    invoke-virtual {p0, v6}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setWillNotDraw(Z)V

    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$SingleTapConfirm;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$SingleTapConfirm;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    sget-object v1, Lcom/android/incallui/R$styleable;->MaterialRippleLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleColor:I

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x420c0000    # 35.0f

    invoke-static {v1, v2}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->dpToPx(Landroid/content/res/Resources;F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v5, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDiameter:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleOverlay:Z

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleHover:Z

    const/4 v1, 0x4

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDuration:I

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x3

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAlpha:I

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDelayClick:Z

    const/4 v1, 0x5

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleFadeDuration:I

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->ripplePersistent:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAlpha:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->ripplePersistent:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAlpha:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDelayClick:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)F
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getRadius()F

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object v0
.end method

.method static dpToPx(Landroid/content/res/Resources;F)F
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getRadius()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radius:F

    return v0
.end method

.method public static on(Landroid/view/View;)Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;
    .locals 1

    new-instance v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;

    invoke-direct {v0, p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$RippleBuilder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private startHover()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDiameter:I

    int-to-float v3, v3

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private startRipple(Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventCancelled:Z

    if-eqz v11, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getHeight()I

    move-result v6

    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v4, v6, 0x2

    int-to-float v11, v5

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    int-to-float v11, v10

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    sub-float v7, v11, v12

    :goto_1
    int-to-float v11, v4

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    int-to-float v11, v6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    sub-float v8, v11, v12

    :goto_2
    float-to-double v12, v7

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    float-to-double v14, v8

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v14

    add-double/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v11, v12

    const v12, 0x3f99999a    # 1.2f

    mul-float v2, v11, v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v11}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    new-instance v12, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v12, v0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radiusProperty:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [F

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radius:F

    aput v14, v12, v13

    const/4 v13, 0x1

    aput v2, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDuration:I

    int-to-long v12, v11

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->circleAlphaProperty:Landroid/util/Property;

    const/4 v12, 0x2

    new-array v12, v12, [I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAlpha:I

    aput v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x0

    aput v14, v12, v13

    move-object/from16 v0, p0

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleFadeDuration:I

    int-to-long v12, v11

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v3, v11}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDuration:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleFadeDuration:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, -0x19

    int-to-long v12, v11

    invoke-virtual {v3, v12, v13}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->ripplePersistent:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAnimator:Landroid/animation/AnimatorSet;

    const/4 v12, 0x2

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_3
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout can host only one child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    iget v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    iget v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radius:F

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    iget v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    iget v2, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radius:F

    iget-object v3, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getChildView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    return-object v0
.end method

.method public getRippleAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->bounds:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventX:F

    float-to-int v6, v6

    iget v7, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventY:F

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v5, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {v1, p0, v9}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;)V

    iget-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDelayClick:Z

    if-nez v5, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->run()V

    :cond_2
    invoke-direct {p0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventCancelled:Z

    iget-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleHover:Z

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->startHover()V

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_1
    new-instance v1, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;

    invoke-direct {v1, p0, v9}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;-><init>(Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$1;)V

    if-eqz v2, :cond_6

    invoke-direct {p0, v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->startRipple(Ljava/lang/Runnable;)V

    :goto_2
    iget-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDelayClick:Z

    if-nez v5, :cond_3

    invoke-virtual {v1}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout$PerformClickEvent;->run()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRadius(F)V

    goto :goto_2

    :pswitch_2
    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->hoverAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_7
    invoke-virtual {p0, v8}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRadius(F)V

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_1

    :pswitch_3
    iget-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleHover:Z

    if-eqz v5, :cond_8

    if-eqz v2, :cond_9

    iget-boolean v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventCancelled:Z

    if-nez v5, :cond_9

    iget v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDiameter:I

    int-to-float v5, v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRadius(F)V

    :cond_8
    :goto_3
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v4, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->eventCancelled:Z

    goto :goto_1

    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->setRadius(F)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public setDefaultRippleAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleAlpha:I

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MaterialRippleLayout must have a child view to handle clicks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->childView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->radius:F

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleAlpha(Ljava/lang/Integer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->invalidate()V

    return-void
.end method

.method public setRippleBackground(I)V
    .locals 1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setRippleColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleColor:I

    iget-object v0, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setRippleDelayClick(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDelayClick:Z

    return-void
.end method

.method public setRippleDiameter(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDiameter:I

    return-void
.end method

.method public setRippleDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleDuration:I

    return-void
.end method

.method public setRippleFadeDuration(I)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleFadeDuration:I

    return-void
.end method

.method public setRippleHover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleHover:Z

    return-void
.end method

.method public setRippleOverlay(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->rippleOverlay:Z

    return-void
.end method

.method public setRipplePersistent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/visualcallcenter/MaterialRippleLayout;->ripplePersistent:Z

    return-void
.end method
