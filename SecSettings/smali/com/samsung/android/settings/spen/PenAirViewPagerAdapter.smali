.class public Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PenAirViewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field mDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-direct {p0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->setDescriptions()V

    return-void
.end method

.method private setDescriptions()V
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080686

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    :goto_0
    const v2, 0x7f121412

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f080687

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    :goto_1
    const v2, 0x7f12140e

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f080688

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    :goto_2
    const v2, 0x7f121411

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    invoke-direct {v0}, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;-><init>()V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    const v2, 0x7f080689

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    :goto_3
    const v2, 0x7f121410

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    iget-object v2, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    if-eqz v1, :cond_1

    const v2, 0x7f080682

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_0

    :cond_1
    const v2, 0x7f08067d

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const v2, 0x7f080683

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_1

    :cond_3
    const v2, 0x7f08067e

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    const v2, 0x7f080684

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_2

    :cond_5
    const v2, 0x7f080680

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    const v2, 0x7f080685

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_3

    :cond_7
    const v2, 0x7f080681

    iput v2, v0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    goto :goto_3
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d01d2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a023b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a0238

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f0a0088

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int p2, v4, p2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    if-nez v4, :cond_1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    if-nez v4, :cond_2

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v3, v7}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    return-object v3

    :cond_1
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->summary:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter;->mDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;

    iget v4, v4, Lcom/samsung/android/settings/spen/PenAirViewPagerAdapter$Description;->animation:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
