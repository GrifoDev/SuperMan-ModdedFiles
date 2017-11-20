.class public Lcom/android/contacts/common/list/ViewPagerTabs;
.super Landroid/widget/HorizontalScrollView;

# interfaces
.implements Landroid/support/v4/view/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;
    }
.end annotation


# static fields
.field private static final k:Landroid/view/ViewOutlineProvider;

.field private static final l:[I


# instance fields
.field a:Landroid/support/v4/view/ViewPager;

.field final b:I

.field final c:Landroid/content/res/ColorStateList;

.field final d:I

.field final e:Z

.field f:I

.field g:I

.field private h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

.field private i:[I

.field private j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/contacts/common/list/ViewPagerTabs$1;

    invoke-direct {v0}, Lcom/android/contacts/common/list/ViewPagerTabs$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->k:Landroid/view/ViewOutlineProvider;

    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->l:[I

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/common/list/ViewPagerTabs;->k:Landroid/view/ViewOutlineProvider;

    goto :goto_0

    :array_0
    .array-data 4
        0x1010095
        0x1010097
        0x1010098
        0x101038c
    .end array-data
.end method

.method private a(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int p1, v0, p1

    :cond_0
    return p1
.end method

.method static synthetic a(Lcom/android/contacts/common/list/ViewPagerTabs;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->a(I)I

    move-result v0

    return v0
.end method

.method private a(Landroid/support/v4/view/ac;)V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->removeAllViews()V

    invoke-virtual {p1}, Landroid/support/v4/view/ac;->getCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ac;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->a(Ljava/lang/CharSequence;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/CharSequence;I)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->i:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->i:[I

    array-length v0, v0

    if-ge p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04019a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100049

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->i:[I

    aget v0, v0, p2

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f100151

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->j:[I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->j:[I

    aget v3, v3, p2

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->j:[I

    aget v3, v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110004

    iget-object v4, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->j:[I

    aget v4, v4, p2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->j:[I

    aget v6, v6, p2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    move-object v0, v1

    :goto_1
    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabs$2;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$2;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/list/ViewPagerTabs$OnTabLongClickListener;-><init>(Lcom/android/contacts/common/list/ViewPagerTabs;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->g:I

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->g:I

    invoke-virtual {v0, v1, v7, v2, v7}, Landroid/view/View;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_0

    iput v7, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->f:I

    invoke-virtual {v0, v8}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0203c4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->b:I

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_3
    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->d:I

    if-lez v1, :cond_4

    iget v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v7, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_4
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->c:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->c:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->a(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/list/ViewPagerTabs;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->f:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->f:I

    if-ge v2, v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    iget v2, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->f:I

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->h:Lcom/android/contacts/common/list/ViewPagerTabStrip;

    invoke-virtual {v1, v0}, Lcom/android/contacts/common/list/ViewPagerTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/contacts/common/list/ViewPagerTabs;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int v1, v3, v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    invoke-virtual {p0, v1, v4}, Lcom/android/contacts/common/list/ViewPagerTabs;->smoothScrollTo(II)V

    iput v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->f:I

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->a:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/android/contacts/common/list/ViewPagerTabs;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/ac;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/common/list/ViewPagerTabs;->a(Landroid/support/v4/view/ac;)V

    return-void
.end method
