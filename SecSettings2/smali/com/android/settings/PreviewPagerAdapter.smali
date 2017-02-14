.class public Lcom/android/settings/PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;


# direct methods
.method static synthetic -get0(Lcom/android/settings/PreviewPagerAdapter;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/PreviewPagerAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .locals 11

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    array-length v6, p3

    new-array v6, v6, [Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const-string/jumbo v6, "PreviewPagerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "PreviewPagerAdapter: configurations"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    array-length v6, p3

    if-ge v3, v6, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v6, :cond_0

    array-length v6, p3

    add-int/lit8 v6, v6, -0x1

    sub-int v4, v6, v3

    :goto_1
    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v7, v6, v4

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, v4

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v6, "PreviewPagerAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "previewSampleResIds:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    array-length v7, p4

    :goto_2
    if-ge v6, v7, :cond_1

    aget-object v2, p4, v6

    const-string/jumbo v8, "PreviewPagerAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "configuration:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/content/Context;->setTheme(I)V

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    aget v8, p3, v3

    iget-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v4

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Landroid/view/View;->setAlpha(F)V

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v8, v8, v4

    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    move v4, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V
    .locals 5

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    int-to-float v3, p2

    mul-float/2addr v3, p3

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    instance-of v2, p1, Lcom/android/settings/display/ConversationMessageView;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/android/settings/display/ConversationMessageView;

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/display/ConversationMessageView;->setTextScale(IF)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    instance-of v2, p1, Lcom/samsung/android/settings/display/AppListView;

    if-eqz v2, :cond_1

    check-cast p1, Lcom/samsung/android/settings/display/AppListView;

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settings/display/AppListView;->setTextScale(IF)V

    goto :goto_0
.end method

.method private ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 4

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_0
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of v2, p1, Lcom/samsung/android/settings/display/AppListView;

    if-eqz v2, :cond_2

    check-cast p1, Lcom/samsung/android/settings/display/AppListView;

    invoke-virtual {p1, p2}, Lcom/samsung/android/settings/display/AppListView;->setTextStyle(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method private runAnimationEndAction()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    goto :goto_0
.end method


# virtual methods
.method public SetFontScale(IF)V
    .locals 8

    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const-string/jumbo v5, "PreviewPagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SetFontScale: childCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1, p2}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextScaleToAllChildViews(Landroid/view/View;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public SetFontStyle(Landroid/graphics/Typeface;)V
    .locals 8

    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const-string/jumbo v5, "PreviewPagerAdapter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPreviewLayer: childCount"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1, p1}, Lcom/android/settings/PreviewPagerAdapter;->ApplyTextStyleToAllChildViews(Landroid/view/View;Landroid/graphics/Typeface;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    return-object v0
.end method

.method isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPreviewLayer(I)V
    .locals 10

    const/4 v4, 0x0

    const-string/jumbo v3, "PreviewPagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreviewLayer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v6, v5

    move v3, v4

    :goto_0
    if-ge v3, v6, :cond_2

    aget-object v2, v5, v3

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    if-eq v1, p1, :cond_0

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const-string/jumbo v7, "PreviewPagerAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPreviewLayer: INVISIBLE  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method setPreviewLayer(IIIZ)V
    .locals 10

    iget-object v4, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v2, v4, v3

    if-ltz p2, :cond_0

    invoke-virtual {v2, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p4, :cond_1

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    if-ne v2, v6, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/settings/PreviewPagerAdapter$1;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/PreviewPagerAdapter$1;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p4, :cond_2

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    if-ne v2, v6, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    sget-object v7, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    const-wide/16 v8, 0x190

    invoke-virtual {v6, v8, v9}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    new-instance v7, Lcom/android/settings/PreviewPagerAdapter$2;

    invoke-direct {v7, p0, v1}, Lcom/android/settings/PreviewPagerAdapter$2;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/view/View;->setAlpha(F)V

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_3
    return-void
.end method
