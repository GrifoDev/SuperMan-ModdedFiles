.class public Lcom/android/systemui/recents/views/HelpIndicator;
.super Landroid/widget/LinearLayout;
.source "HelpIndicator.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentPage:I

.field mInflater:Landroid/view/LayoutInflater;

.field mMarginMarker:I

.field mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/HelpIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    iput v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mCurrentPage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/HelpIndicator;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070578

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarginMarker:I

    return-void
.end method


# virtual methods
.method public onPageChanged(II)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/HelpIndicatorMarker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/HelpIndicatorMarker;->activate(Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/HelpIndicatorMarker;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/HelpIndicatorMarker;->inactivate(Z)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mCurrentPage:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mCurrentPage:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/HelpIndicator;->onPageChanged(II)V

    iput p1, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mCurrentPage:I

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public setContentSize(I)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    iput p1, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    iput v7, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/HelpIndicator;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    if-gt p1, v5, :cond_0

    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    if-ge v0, v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d0174

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/HelpIndicatorMarker;

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/HelpIndicatorMarker;->activate(Z)V

    :goto_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_2

    iget v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarginMarker:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_2
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/views/HelpIndicator;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    iget v4, p0, Lcom/android/systemui/recents/views/HelpIndicator;->mSize:I

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_1

    :cond_5
    invoke-virtual {v2, v7}, Lcom/android/systemui/recents/views/HelpIndicatorMarker;->inactivate(Z)V

    goto :goto_2

    :cond_6
    return-void
.end method
