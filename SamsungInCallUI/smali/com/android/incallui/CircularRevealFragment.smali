.class public Lcom/android/incallui/CircularRevealFragment;
.super Landroid/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "CircularRevealFragment"


# instance fields
.field private mAnimationStarted:Z

.field private mListener:Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

.field private mTouchPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/CircularRevealFragment;->mTouchPoint:Landroid/graphics/Point;

    iput-object p2, p0, Lcom/android/incallui/CircularRevealFragment;->mListener:Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CircularRevealFragment;)Landroid/graphics/Point;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CircularRevealFragment;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/CircularRevealFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CircularRevealFragment;)Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment;->mListener:Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    return-object v0
.end method

.method public static endCircularReveal(Landroid/app/FragmentManager;)V
    .locals 2

    const-string v0, "CircularRevealFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v0, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v0, 0x2

    iget v0, v3, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x2

    if-eqz p1, :cond_1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    :cond_1
    const/4 v4, 0x0

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v1, v0, v4, v3}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public static startCircularReveal(Landroid/app/FragmentManager;Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V
    .locals 4

    const-string v0, "CircularRevealFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f10015a

    new-instance v2, Lcom/android/incallui/CircularRevealFragment;

    invoke-direct {v2, p1, p2}, Lcom/android/incallui/CircularRevealFragment;-><init>(Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V

    const-string v3, "CircularRevealFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :goto_0
    return-void

    :cond_0
    const-string v0, "CircularRevealFragment"

    const-string v1, "An instance of CircularRevealFragment already exists"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/incallui/CircularRevealFragment;->mAnimationStarted:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CircularRevealFragment;->startOutgoingAnimation(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CircularRevealFragment;->mAnimationStarted:Z

    return-void
.end method

.method public startOutgoingAnimation(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Asked to do outgoing call animation when not attached"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/CircularRevealFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CircularRevealFragment$1;-><init>(Lcom/android/incallui/CircularRevealFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    if-eqz p1, :cond_1

    const v2, 0x7f1001c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v2, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/CircularRevealFragment$2;

    invoke-direct {v2, p0, v1}, Lcom/android/incallui/CircularRevealFragment$2;-><init>(Lcom/android/incallui/CircularRevealFragment;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
