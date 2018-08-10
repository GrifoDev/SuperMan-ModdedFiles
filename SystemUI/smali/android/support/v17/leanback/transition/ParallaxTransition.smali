.class public Landroid/support/v17/leanback/transition/ParallaxTransition;
.super Landroid/transition/Visibility;
.source "ParallaxTransition.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field static sInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/transition/ParallaxTransition;->sInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method createAnimator(Landroid/view/View;)Landroid/animation/Animator;
    .locals 5

    const/4 v3, 0x0

    sget v2, Landroid/support/v17/leanback/R$id;->lb_parallax_source:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/Parallax;

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    sget-object v2, Landroid/support/v17/leanback/transition/ParallaxTransition;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Landroid/support/v17/leanback/transition/ParallaxTransition$1;

    invoke-direct {v2, p0, v1}, Landroid/support/v17/leanback/transition/ParallaxTransition$1;-><init>(Landroid/support/v17/leanback/transition/ParallaxTransition;Landroid/support/v17/leanback/widget/Parallax;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/transition/ParallaxTransition;->createAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/transition/ParallaxTransition;->createAnimator(Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
