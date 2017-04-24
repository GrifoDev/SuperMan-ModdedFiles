.class public Lcom/android/launcher2/HomeScreenGridSelectMenu;
.super Landroid/widget/RelativeLayout;
.source "HomeScreenGridSelectMenu.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mScreenGridFormat:Ljava/lang/String;

.field private static mSpanDescriptionFormat:Ljava/lang/String;


# instance fields
.field private grid4x4:Landroid/view/View;

.field private grid4x5:Landroid/view/View;

.field private grid5x5:Landroid/view/View;

.field private mActive:Z

.field private mContext:Landroid/content/Context;

.field private mExplainText4x5:Ljava/lang/String;

.field private mExplainText5x5:Ljava/lang/String;

.field private mExplainView:Landroid/widget/TextView;

.field private mGridBtnLayout:Landroid/widget/LinearLayout;

.field private mGridButtonClickListener:Landroid/view/View$OnClickListener;

.field private mGridInAnimatorSet:Landroid/animation/AnimatorSet;

.field private mGridLayout:Landroid/widget/RelativeLayout;

.field private mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

.field private mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

.field private mPlusPageAnim:Landroid/animation/ObjectAnimator;

.field private mSaveButtonClickListener:Landroid/view/View$OnClickListener;

.field private mSaveView:Landroid/view/View;

.field private mZeroPageAnim:Landroid/animation/ObjectAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "HomeScreenGridSelectMenu"

    sput-object v0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mActive:Z

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mActive:Z

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mActive:Z

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$6;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;

    invoke-direct {v0, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$7;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/HomeScreenGridSelectMenu;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->updateBtnForScreenGrid(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher2/HomeScreenGridSelectMenu;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private animateIndicatorTop(Z)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    if-eqz p1, :cond_1

    sget-object v3, Lcom/android/launcher2/Workspace;->INDICATOR_TOP:Landroid/util/Property;

    new-array v4, v6, [I

    aput v1, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/launcher2/HomeScreenGridSelectMenu$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$3;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    sget-object v3, Lcom/android/launcher2/Workspace;->INDICATOR_TOP:Landroid/util/Property;

    new-array v4, v6, [I

    aput v0, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mIncidatorTopAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0
.end method

.method private animatePluspage(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/HomeScreenGridSelectMenu$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$4;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mPlusPageAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateZeropage(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher2/ZeroPageUtils$PreferencesUtil;->getSavedHomeZeroPageOnOffState(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v1}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/launcher2/HomeScreenGridSelectMenu$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$5;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_1
    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :cond_3
    const-string v0, "alpha"

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mZeroPageAnim:Landroid/animation/ObjectAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
    .end array-data
.end method

.method private animationInGrid()V
    .locals 9

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v8, 0x2

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_1

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v5

    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v8, [F

    fill-array-data v6, :array_2

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x3

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    fill-array-data v7, :array_3

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v3}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    const-string v4, "alpha"

    new-array v5, v8, [F

    fill-array-data v5, :array_4

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v3, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v3}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v4, Lcom/android/launcher2/HomeScreenGridSelectMenu$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$1;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        -0x3d380000    # -100.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animationOutGrid()V
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridInAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_0

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_1

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v11

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_2

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_3

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v5, Lcom/android/launcher2/utils/interpolator/SineInOut90;

    invoke-direct {v5}, Lcom/android/launcher2/utils/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_4

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x32

    invoke-virtual {v1, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    new-instance v5, Lcom/android/launcher2/utils/interpolator/SineInOut33;

    invoke-direct {v5}, Lcom/android/launcher2/utils/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v1, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    new-array v6, v13, [Landroid/animation/PropertyValuesHolder;

    sget-object v7, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_5

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v10

    sget-object v7, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_6

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v11

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_7

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v9

    sget-object v7, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v8, v9, [F

    fill-array-data v8, :array_8

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v6, Lcom/android/launcher2/HomeScreenGridSelectMenu$2;

    invoke-direct {v6, p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu$2;-><init>(Lcom/android/launcher2/HomeScreenGridSelectMenu;)V

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridOutAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x43c80000    # 400.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        -0x3d380000    # -100.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private changeIconColor(I)V
    .locals 5

    const/4 v4, 0x1

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private changeTextColor(I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-nez p1, :cond_5

    const v5, 0x7f0b0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0062

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d0001

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_3
    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v5, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v2, v7, v1, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_4
    return-void

    :cond_5
    const v5, 0x7f0b0061

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v2, v5

    const v5, 0x7f0b0060

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v1, v5

    const v5, 0x7f0d002d

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d002e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private hideGrid(ZZ)V
    .locals 12

    const/16 v11, 0x8

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    sget-object v6, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hideGrid() : animation = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / finish = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-direct {p0, v9}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animateIndicatorTop(Z)V

    :cond_0
    invoke-virtual {v4, v9}, Lcom/android/launcher2/Workspace;->setCrosshairsVisibilityChilds(Z)V

    :cond_1
    if-eqz v3, :cond_5

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090118

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090114

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->invalidate()V

    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/launcher2/QuickViewWorkspace;->closeGrid(Z)Z

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v3, v6}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_6

    invoke-direct {p0, v2, v9}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animatePluspage(Landroid/view/View;Z)V

    :cond_4
    :goto_0
    invoke-virtual {v3, v9}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz p1, :cond_7

    invoke-direct {p0, v5, v9}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animateZeropage(Landroid/view/View;Z)V

    :cond_5
    :goto_1
    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animationOutGrid()V

    :goto_2
    return-void

    :cond_6
    invoke-virtual {v2, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_7
    invoke-virtual {v5, v10}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_8
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    if-eqz v6, :cond_9

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeScreenOptionMenu;->setScaleX(F)V

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/android/launcher2/HomeScreenOptionMenu;->setScaleY(F)V

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenOptionMenu()Lcom/android/launcher2/HomeScreenOptionMenu;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/HomeScreenOptionMenu;->setTranslationY(F)V

    :cond_9
    invoke-virtual {p0, v11}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setVisibility(I)V

    goto :goto_2

    :cond_a
    sget-object v6, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    const-string v7, "hideGrid : Homeview is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v11}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setVisibility(I)V

    goto :goto_2
.end method

.method private showGrid(Z)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v7, Lcom/android/launcher2/HomeScreenGridSelectMenu;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showGrid() :  animation = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->updateBtnForScreenGrid(II)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz p1, :cond_4

    invoke-direct {p0, v11}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animateIndicatorTop(Z)V

    :goto_0
    invoke-virtual {v5, v11}, Lcom/android/launcher2/Workspace;->setCrosshairsVisibilityChilds(Z)V

    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getQuickViewWorkspace()Lcom/android/launcher2/QuickViewWorkspace;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Lcom/android/launcher2/QuickViewWorkspace;->openGrid(Z)Z

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->loadLayoutParameters()V

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->requestLayout()V

    invoke-virtual {p0, v10}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setVisibility(I)V

    invoke-virtual {v4}, Lcom/android/launcher2/QuickViewWorkspace;->getChildCount()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v4, v7}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_5

    invoke-direct {p0, v3, v11}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animatePluspage(Landroid/view/View;Z)V

    :cond_1
    :goto_1
    invoke-virtual {v4, v10}, Lcom/android/launcher2/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher2/ZeroPageUtils;->isZeropageEnable()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5, v10}, Lcom/android/launcher2/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2, v12}, Lcom/android/launcher2/CellLayout;->setCrosshairsVisibility(F)V

    if-eqz v6, :cond_2

    if-eqz p1, :cond_6

    invoke-direct {p0, v6, v11}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animateZeropage(Landroid/view/View;Z)V

    :cond_2
    :goto_2
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->animationInGrid()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0901d9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090114

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher2/Workspace;->updateIndicator(II)V

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->invalidate()V

    goto :goto_0

    :cond_5
    invoke-virtual {v3, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_6
    invoke-virtual {v6, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private updateBtnForScreenGrid(II)V
    .locals 9

    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x5

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-array v0, v3, [I

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/launcher2/Utilities;->loadCurentGridSize(Landroid/content/Context;[I)V

    aget v1, v0, v5

    if-ne v1, p1, :cond_4

    aget v1, v0, v8

    if-ne v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setApplyDescription(Landroid/view/View;Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    if-ne p1, v7, :cond_7

    if-ne p2, v7, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {p0, v1, v7, v7}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setGridDescription(Landroid/view/View;II)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {p0, v1, v7, v7}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setSpanDescription(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {p0, v1, v7, v6}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setSpanDescription(Landroid/view/View;II)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setSpanDescription(Landroid/view/View;II)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {p0, v1, v8}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setApplyDescription(Landroid/view/View;Z)V

    aget v1, v0, v5

    if-eq v1, p1, :cond_6

    if-ne p1, v7, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainText4x5:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainText5x5:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    if-ne p1, v7, :cond_8

    if-ne p2, v6, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {p0, v1, v7, v6}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setGridDescription(Landroid/view/View;II)V

    goto/16 :goto_2

    :cond_8
    if-ne p1, v6, :cond_3

    if-ne p2, v6, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {v1, v8}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setSelected(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {p0, v1, v6, v6}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setGridDescription(Landroid/view/View;II)V

    goto/16 :goto_2
.end method


# virtual methods
.method public applyScreenGridText(Landroid/widget/TextView;II)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mScreenGridFormat:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public cancelGridChange(Z)V
    .locals 4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getHomeScreenGridChangeHelper()Lcom/android/launcher2/HomeScreenGridChangeHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/HomeScreenGridChangeHelper;->restoreGridLayout()V

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/launcher2/QuickViewWorkspace;->mShowGridState:Z

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->closeFolder()V

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode()V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->refreshQuickViewWorkspace()V

    :cond_2
    return-void
.end method

.method public changeColor(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->changeTextColor(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->changeIconColor(I)V

    return-void
.end method

.method public isActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mActive:Z

    return v0
.end method

.method public loadLayoutParameters()V
    .locals 14

    const v13, 0x7f09026e

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f09021c

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v10, 0x7f09021b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v10, 0x7f090273

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const v10, 0x7f090216

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const v10, 0x7f09021a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v10, v6, v7, v6, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    const v10, 0x7f090218

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const v10, 0x7f090217

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    const v10, 0x7f090271

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0200a2

    invoke-virtual {v10, v12, v11, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0200a3

    invoke-virtual {v10, v12, v11, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f0200a4

    invoke-virtual {v10, v12, v11, v12, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v10, v13}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v10, v13}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    iget-object v10, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v10, Landroid/widget/TextView;

    invoke-static {v10, v13}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportNewColorInvert()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "need_dark_font"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->changeColor(I)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->loadLayoutParameters()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const v5, 0x7f0800c0

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainText4x5:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainText5x5:Ljava/lang/String;

    const v1, 0x7f0800e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSpanDescriptionFormat:Ljava/lang/String;

    const v1, 0x7f080104

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mScreenGridFormat:Ljava/lang/String;

    const v1, 0x7f1000e3

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridBtnLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f1000e2

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f1000e1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mExplainView:Landroid/widget/TextView;

    const v1, 0x7f1000e5

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->applyScreenGridText(Landroid/widget/TextView;II)V

    const v1, 0x7f1000e6

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->applyScreenGridText(Landroid/widget/TextView;II)V

    const v1, 0x7f1000e7

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->applyScreenGridText(Landroid/widget/TextView;II)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mGridButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const v1, 0x7f1000e8

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f090270

    invoke-static {v1, v2}, Lcom/android/launcher2/utils/common/FontSizeUtils;->setSystemFontSize(Landroid/widget/TextView;I)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    sget-object v2, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSaveView:Landroid/view/View;

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setApplyDescription(Landroid/view/View;Z)V

    sget-object v1, Lcom/android/launcher2/FocusHelper;->SCREEN_GRID_MENU_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setActive(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mActive:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->showGrid(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->hideGrid(ZZ)V

    goto :goto_0
.end method

.method public setApplyDescription(Landroid/view/View;Z)V
    .locals 6

    const v5, 0x7f08002c

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const v4, 0x7f080046

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/HomeScreenGridSelectMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setGridDescription(Landroid/view/View;II)V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const v2, 0x7f0800c8

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    const v3, 0x7f0800e1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSpanDescriptionFormat:Ljava/lang/String;

    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    sget-object v2, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSpanDescriptionFormat:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v6}, Lcom/sec/dtl/launcher/Talk;->sayByTalkback(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public setSpanDescription(Landroid/view/View;II)V
    .locals 7

    const/4 v5, 0x4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const v4, 0x7f0800c8

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    const v4, 0x7f08008e

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-ne p2, v5, :cond_3

    if-ne p3, v5, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x4:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    const v5, 0x7f0800e1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/LauncherApplication;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSpanDescriptionFormat:Ljava/lang/String;

    sget-object v3, Lcom/android/launcher2/HomeScreenGridSelectMenu;->mSpanDescriptionFormat:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid4x5:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :goto_1
    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/HomeScreenGridSelectMenu;->grid5x5:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :goto_2
    goto :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_2
.end method
