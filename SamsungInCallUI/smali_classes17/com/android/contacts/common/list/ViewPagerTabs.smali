.class public Lcom/android/contacts/common/list/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;
.source "ViewPagerTabs.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final TAB_SIDE_PADDING_IN_DPS:I = 0xa

.field private static final VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;


# instance fields
.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevSelected:I

.field mSidePadding:I

.field private mTabIcons:[I

.field private mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

.field final mTextAllCaps:Z

.field final mTextColor:Landroid/content/res/ColorStateList;

.field final mTextSize:I

.field final mTextStyle:I

.field private mUnreadCounts:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/ViewPagerTabs$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ViewPagerTabs$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x101038c
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {p0, v5}, Lcom/android/contacts/common/list/ViewPagerTabs;->setFillViewport(Z)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    sget-object v1, Lcom/android/contacts/common/list/ViewPagerTabs;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-direct {v1, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabs;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isLollipopCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/common/list/ViewPagerTabs;->VIEW_BOUNDS_OUTLINE_PROVIDER:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/list/ViewPagerTabs;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result v0

    return v0
.end method

.method private addTab(Ljava/lang/CharSequence;I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    array-length v4, v4

    if-ge p2, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040184

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f10003f

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    aget v4, v4, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v4, 0x7f100110

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget v4, v4, p2

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget v4, v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110004

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget v6, v6, p2

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aget v8, v8, p2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v2, v1

    :goto_1
    new-instance v4, Lcom/android/contacts/common/list/ViewPagerTabs$2;

    invoke-direct {v4, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$2;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;

    invoke-direct {v4, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mSidePadding:I

    invoke-virtual {v2, v4, v9, v5, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v2, p2, v5}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    iput v9, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {v2, v10}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f020322

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    if-lez v4, :cond_3

    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    iget v5, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextSize:I

    int-to-float v4, v4

    invoke-virtual {v3, v9, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-boolean v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTextAllCaps:Z

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    move-object v2, v3

    goto :goto_1
.end method

.method private addTabs(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3

    iget-object v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeAllViews()V

    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getRtlPosition(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method


# virtual methods
.method public configureTabIcons([I)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabIcons:[I

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->getRtlPosition(I)I

    move-result p1

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    if-ge v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    iget v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    invoke-virtual {v3, v4}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v3, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    invoke-virtual {p0, v0, v6}, Lcom/android/contacts/common/list/ViewPagerTabs;->smoothScrollTo(II)V

    iput p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPrevSelected:I

    goto :goto_0
.end method

.method public removeTab(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, p1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mTabStrip:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setUnreadCount(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    array-length v0, v0

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mUnreadCounts:[I

    aput p1, v0, p2

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTabs(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public updateTab(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->removeTab(I)V

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->addTab(Ljava/lang/CharSequence;I)V

    :cond_0
    return-void
.end method
