.class public Landroid/transition/Fade;
.super Landroid/transition/Visibility;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Fade$FadeAnimatorListener;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final IN:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Fade"

.field public static final OUT:I = 0x2

.field static final PROPNAME_TRANSITION_ALPHA:Ljava/lang/String; = "android:fade:transitionAlpha"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Landroid/transition/Fade;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    invoke-virtual {p0, p1}, Landroid/transition/Fade;->setMode(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/transition/Visibility;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v2, Lcom/android/internal/R$styleable;->Fade:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Landroid/transition/Fade;->getMode()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/transition/Fade;->setMode(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 5

    cmpl-float v2, p2, p3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTransitionAlpha(F)V

    const-string/jumbo v2, "transitionAlpha"

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-boolean v2, Landroid/transition/Fade;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Fade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Created animator "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Landroid/transition/Fade$FadeAnimatorListener;

    invoke-direct {v1, p1}, Landroid/transition/Fade$FadeAnimatorListener;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Landroid/transition/Fade$1;

    invoke-direct {v2, p0, p1}, Landroid/transition/Fade$1;-><init>(Landroid/transition/Fade;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Landroid/transition/Fade;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v0
.end method

.method private static getStartAlpha(Landroid/transition/TransitionValues;F)F
    .locals 4

    move v0, p1

    if-eqz p0, :cond_0

    iget-object v2, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v3, "android:fade:transitionAlpha"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :cond_0
    return v0
.end method


# virtual methods
.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/transition/Visibility;->captureStartValues(Landroid/transition/TransitionValues;)V

    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string/jumbo v1, "android:fade:transitionAlpha"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    sget-boolean v2, Landroid/transition/Fade;->DBG:Z

    if-eqz v2, :cond_0

    if-eqz p3, :cond_2

    iget-object v1, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_0
    const-string/jumbo v2, "Fade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Fade.onAppear: startView, startVis, endView, endVis = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    invoke-static {p3, v2}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result v0

    cmpl-float v2, v0, v5

    if-nez v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-direct {p0, p2, v0, v5}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v2

    return-object v2

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p3, v1}, Landroid/transition/Fade;->getStartAlpha(Landroid/transition/TransitionValues;F)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/transition/Fade;->createAnimation(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object v1

    return-object v1
.end method
