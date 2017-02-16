.class public Lcom/android/systemui/qs/TouchAnimator;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/TouchAnimator$1;,
        Lcom/android/systemui/qs/TouchAnimator$Builder;,
        Lcom/android/systemui/qs/TouchAnimator$FloatKeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;,
        Lcom/android/systemui/qs/TouchAnimator$Listener;,
        Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
    }
.end annotation


# static fields
.field private static final POSITION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/systemui/qs/TouchAnimator;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEndDelay:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

.field private mLastT:F

.field private final mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field private final mSpan:F

.field private final mStartDelay:F

.field private final mTargets:[Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Landroid/util/FloatProperty;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Landroid/util/FloatProperty;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/TouchAnimator;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$1;

    const-string/jumbo v1, "position"

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/TouchAnimator;->POSITION:Landroid/util/FloatProperty;

    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    iput-object p1, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    iput p3, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    iput p4, p0, Lcom/android/systemui/qs/TouchAnimator;->mEndDelay:F

    iget v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mEndDelay:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    iget v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    iput-object p5, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-object p6, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;Lcom/android/systemui/qs/TouchAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/qs/TouchAnimator;-><init>([Ljava/lang/Object;[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;FFLandroid/view/animation/Interpolator;Lcom/android/systemui/qs/TouchAnimator$Listener;)V

    return-void
.end method


# virtual methods
.method public setPosition(F)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mStartDelay:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mSpan:F

    div-float/2addr v2, v3

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    if-eqz v2, :cond_3

    cmpl-float v2, v1, v5

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v2}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtEnd()V

    :cond_2
    :goto_0
    iput v1, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mKeyframeSets:[Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/systemui/qs/TouchAnimator;->mTargets:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->setValue(FLjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    cmpl-float v2, v1, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v2}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationAtStart()V

    goto :goto_0

    :cond_5
    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpg-float v2, v2, v4

    if-lez v2, :cond_6

    iget v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mLastT:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/TouchAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    invoke-interface {v2}, Lcom/android/systemui/qs/TouchAnimator$Listener;->onAnimationStarted()V

    goto :goto_0

    :cond_7
    return-void
.end method
