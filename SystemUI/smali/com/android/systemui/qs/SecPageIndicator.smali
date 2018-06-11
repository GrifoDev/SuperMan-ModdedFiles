.class public Lcom/android/systemui/qs/SecPageIndicator;
.super Landroid/widget/LinearLayout;
.source "SecPageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private mNumPages:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070503

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget-object v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SecPageIndicator;->setFocusable(Z)V

    return-void
.end method

.method private animate(II)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/qs/SecPageIndicator;->playAnimation(Landroid/widget/ImageView;Z)V

    iput-boolean v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mAnimating:Z

    return-void
.end method

.method private playAnimation(Landroid/widget/ImageView;Z)V
    .locals 3

    const/16 v2, 0x96

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_1

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    goto :goto_0
.end method

.method private resetIndicator(I)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v1, p1, :cond_0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    const/16 v3, 0x96

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void
.end method

.method private setPosition(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->isVisibleToUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->animate(II)V

    :goto_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/SecPageIndicator;->resetIndicator(I)V

    goto :goto_0
.end method


# virtual methods
.method public setLocation(F)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    add-int/lit8 v2, v2, -0x1

    sub-int v1, v2, v1

    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPosition:I

    if-eq v2, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/SecPageIndicator;->setPosition(I)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumPages(I)V
    .locals 11

    const/4 v7, 0x4

    const/4 v10, 0x1

    const/4 v6, 0x0

    if-le p1, v10, :cond_1

    move v5, v6

    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/SecPageIndicator;->setVisibility(I)V

    iget-boolean v5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mAnimating:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "PageIndicator"

    const-string/jumbo v8, "setNumPages during animation"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/SecPageIndicator;->mNumPages:I

    :goto_1
    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/SecPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/SecPageIndicator;->removeViewAt(I)V

    goto :goto_1

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-ge v1, p1, :cond_6

    new-instance v4, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    new-array v0, v5, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0804db

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f0804da

    invoke-virtual {v5, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aput-object v5, v0, v10

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v10}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    const-class v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-class v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {v5, v7}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v2

    :cond_3
    sget-boolean v2, Lcom/android/mwilky/Renovate;->mUnlockQsColors:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/mwilky/Renovate;->mQsPageIndicatorColor:I

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v5}, Landroid/graphics/drawable/TransitionDrawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorWidth:I

    iget v9, p0, Lcom/android/systemui/qs/SecPageIndicator;->mPageIndicatorHeight:I

    invoke-direct {v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/qs/SecPageIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, p1, -0x1

    if-eq v1, v5, :cond_5

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/android/systemui/qs/SecPageIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070502

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/SecPageIndicator;->resetIndicator(I)V

    return-void
.end method
