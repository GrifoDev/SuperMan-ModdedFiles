.class public Lcom/android/incallui/CircularRevealFragment;
.super Landroid/app/Fragment;
.source "CircularRevealFragment.java"


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

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V
    .locals 0
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "listener"    # Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/android/incallui/CircularRevealFragment;->mTouchPoint:Landroid/graphics/Point;

    .line 77
    iput-object p2, p0, Lcom/android/incallui/CircularRevealFragment;->mListener:Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CircularRevealFragment;)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CircularRevealFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment;->mTouchPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/CircularRevealFragment;Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CircularRevealFragment;
    .param p1, "x1"    # Landroid/graphics/Point;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/incallui/CircularRevealFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/CircularRevealFragment;)Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CircularRevealFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/incallui/CircularRevealFragment;->mListener:Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    return-object v0
.end method

.method public static endCircularReveal(Landroid/app/FragmentManager;)V
    .locals 2
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    .line 63
    const-string v1, "CircularRevealFragment"

    invoke-virtual {p0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 64
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 67
    :cond_0
    return-void
.end method

.method private getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    .locals 10
    .param p1, "touchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 152
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 153
    const/4 v5, 0x0

    .line 170
    :goto_0
    return-object v5

    .line 155
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    .line 156
    .local v6, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 157
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 158
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 160
    iget v7, v2, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v7, 0x2

    .line 161
    .local v3, "startX":I
    iget v7, v2, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v7, 0x2

    .line 162
    .local v4, "startY":I
    if-eqz p1, :cond_1

    .line 163
    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 164
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 167
    :cond_1
    const/4 v7, 0x0

    iget v8, v2, Landroid/graphics/Point;->x:I

    iget v9, v2, Landroid/graphics/Point;->y:I

    .line 168
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    .line 167
    invoke-static {v6, v3, v4, v7, v8}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v5

    .line 169
    .local v5, "valueAnimator":Landroid/animation/Animator;
    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0051

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto :goto_0
.end method

.method public static startCircularReveal(Landroid/app/FragmentManager;Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V
    .locals 4
    .param p0, "fm"    # Landroid/app/FragmentManager;
    .param p1, "touchPoint"    # Landroid/graphics/Point;
    .param p2, "listener"    # Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;

    .prologue
    .line 53
    const-string v0, "CircularRevealFragment"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f100119

    new-instance v2, Lcom/android/incallui/CircularRevealFragment;

    invoke-direct {v2, p1, p2}, Lcom/android/incallui/CircularRevealFragment;-><init>(Landroid/graphics/Point;Lcom/android/incallui/CircularRevealFragment$OnCircularRevealCompleteListener;)V

    const-string v3, "CircularRevealFragment"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "CircularRevealFragment"

    const-string v1, "An instance of CircularRevealFragment already exists"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 93
    const v0, 0x7f04006f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcom/android/incallui/CircularRevealFragment;->mAnimationStarted:Z

    if-nez v0, :cond_0

    .line 85
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CircularRevealFragment;->startOutgoingAnimation(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V

    .line 87
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CircularRevealFragment;->mAnimationStarted:Z

    .line 88
    return-void
.end method

.method public startOutgoingAnimation(Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;)V
    .locals 4
    .param p1, "palette"    # Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/android/incallui/CircularRevealFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 98
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 99
    const-string v2, "Asked to do outgoing call animation when not attached"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/android/incallui/CircularRevealFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CircularRevealFragment$1;-><init>(Lcom/android/incallui/CircularRevealFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 117
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 119
    if-eqz p1, :cond_1

    .line 120
    const v2, 0x7f10014c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget v3, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mPrimaryColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 122
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->mSecondaryColor:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 125
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/android/incallui/CircularRevealFragment$2;

    invoke-direct {v3, p0, v1}, Lcom/android/incallui/CircularRevealFragment$2;-><init>(Lcom/android/incallui/CircularRevealFragment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0
.end method
