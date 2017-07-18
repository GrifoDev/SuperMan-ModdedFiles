.class public abstract Lcom/android/settings/PreviewSeekBarPreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PreviewSeekBarPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;,
        Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;,
        Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
    }
.end annotation


# instance fields
.field protected mActivityLayoutResId:I

.field protected mCurrentIndex:I

.field protected mEntries:[Ljava/lang/String;

.field protected mInitialIndex:I

.field private mLabel:Landroid/widget/TextView;

.field private mLarger:Landroid/view/View;

.field private mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

.field private mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPreviewPager:Landroid/support/v4/view/ViewPager;

.field private mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

.field protected mPreviewSampleResIds:[I

.field private mSmaller:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Landroid/support/v4/view/ViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/PreviewPagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/PreviewSeekBarPreferenceFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/PreviewSeekBarPreferenceFragment;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$1;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$2;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-void
.end method

.method private setPagerIndicatorContentDescription(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    invoke-virtual {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0b1058

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/DotsPageIndicator;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setPreviewLayer(IZ)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPagerIndicatorContentDescription(I)V

    iget-object v0, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget v1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    iget-object v2, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/android/settings/PreviewPagerAdapter;->setPreviewLayer(IIIZ)V

    iput p1, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mCurrentIndex:I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected abstract commit()V
.end method

.method protected abstract createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v8

    const v10, 0x102003f

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mActivityLayoutResId:I

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v5, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v10, 0x7f1103be

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLabel:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    const v10, 0x7f1103c0

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/LabeledSeekBar;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/LabeledSeekBar;->setLabels([Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Lcom/android/settings/widget/LabeledSeekBar;->setMax(I)V

    iget v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/LabeledSeekBar;->setProgress(I)V

    new-instance v10, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;

    const/4 v11, 0x0

    invoke-direct {v10, p0, v11}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/LabeledSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v10, 0x7f1103bf

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mSmaller:Landroid/view/View;

    new-instance v11, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;

    invoke-direct {v11, p0, v9}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$3;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/widget/LabeledSeekBar;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v10, 0x7f1103c1

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mLarger:Landroid/view/View;

    new-instance v11, Lcom/android/settings/PreviewSeekBarPreferenceFragment$4;

    invoke-direct {v11, p0, v9}, Lcom/android/settings/PreviewSeekBarPreferenceFragment$4;-><init>(Lcom/android/settings/PreviewSeekBarPreferenceFragment;Lcom/android/settings/widget/LabeledSeekBar;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v10, v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/LabeledSeekBar;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v10, v10

    new-array v0, v10, [Landroid/content/res/Configuration;

    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mEntries:[Ljava/lang/String;

    array-length v10, v10

    if-ge v3, v10, :cond_2

    invoke-virtual {p0, v7, v3}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->createConfig(Landroid/content/res/Configuration;I)Landroid/content/res/Configuration;

    move-result-object v10

    aput-object v10, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const v10, 0x7f110593

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager;

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    new-instance v10, Lcom/android/settings/PreviewPagerAdapter;

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    invoke-direct {v10, v2, v4, v11, v0}, Lcom/android/settings/PreviewPagerAdapter;-><init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPagerAdapter:Lcom/android/settings/PreviewPagerAdapter;

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_3

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length v10, v10

    add-int/lit8 v10, v10, -0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v10, v11}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v10, 0x7f1103bd

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/settings/widget/DotsPageIndicator;

    iput-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewSampleResIds:[I

    array-length v10, v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPreviewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/DotsPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    iget-object v11, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicatorPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/DotsPageIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :goto_3
    iget v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mInitialIndex:I

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->setPreviewLayer(IZ)V

    return-object v8

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/settings/PreviewSeekBarPreferenceFragment;->mPageIndicator:Lcom/android/settings/widget/DotsPageIndicator;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/android/settings/widget/DotsPageIndicator;->setVisibility(I)V

    goto :goto_3
.end method
