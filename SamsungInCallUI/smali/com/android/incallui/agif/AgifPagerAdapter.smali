.class public Lcom/android/incallui/agif/AgifPagerAdapter;
.super Landroid/support/v4/view/ac;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AgifPagerAdapter"


# instance fields
.field protected final AGIF_CONTENT_COUNT:I

.field protected final AGIF_RECOMMEND_COUNT:I

.field protected mCategory:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mHasRecommendPage:Ljava/lang/Boolean;

.field protected mInflater:Landroid/view/LayoutInflater;

.field protected mPageCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/ac;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->AGIF_RECOMMEND_COUNT:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->AGIF_CONTENT_COUNT:I

    iput-object p1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    iput-object p3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecommendPage:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    if-eqz p3, :cond_0

    instance-of v0, p3, Lcom/android/incallui/agif/AgifGridView;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const v4, 0x7f1000a2

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/agif/AgifLoader;->getInstance()Lcom/android/incallui/agif/AgifLoader;

    move-result-object v2

    const-string v0, "AgifPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mPageCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", mHasRecommendPage = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecommendPage:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecommendPage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifLoader;->getRecommendedContents()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/agif/AgifLoader;->getRecommendedContents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const-string v0, "AgifPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recommendedContents = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040024

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f1000a1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lcom/android/incallui/agif/AgifRecommendImageAdapter;

    iget-object v4, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Lcom/android/incallui/agif/AgifRecommendImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifGridView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040026

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_1

    :cond_3
    check-cast p1, Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/agif/AgifGridView;

    new-instance v3, Lcom/android/incallui/agif/AgifImageAdapter;

    iget-object v4, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/incallui/agif/AgifLoader;->getAgifContentsInfo(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v3, v4, v2, p2}, Lcom/android/incallui/agif/AgifImageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v3}, Lcom/android/incallui/agif/AgifGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/incallui/agif/AgifPagerAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/agif/AgifPagerAdapter$1;-><init>(Lcom/android/incallui/agif/AgifPagerAdapter;)V

    invoke-virtual {v0, v2}, Lcom/android/incallui/agif/AgifGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v1, v6}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    move-object v0, v1

    goto :goto_1
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

.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "AgifPagerAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/util/VoiceCallAppLogging;->agifScreen_findMore()V

    invoke-static {}, Lcom/android/incallui/util/PackageHelpers;->launchGalaxyAppsSotreToCallCategory()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f1000a1
        :pswitch_0
    .end packed-switch
.end method

.method public setPage(Landroid/view/ViewGroup;I)V
    .locals 4

    iput p2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    instance-of v0, p1, Lcom/android/incallui/agif/AgifViewPager;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/incallui/agif/AgifViewPager;

    invoke-virtual {p1}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/agif/AgifViewPager;->getAgifTabIndicator()Lcom/android/incallui/agif/AgifTabIndicator;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mPageCount:I

    iget-object v2, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mCategory:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/agif/AgifPagerAdapter;->mHasRecommendPage:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/incallui/agif/AgifTabIndicator;->createAgifTabIndicator(ILjava/lang/String;ZLcom/android/incallui/agif/AgifViewPager;)V

    :cond_0
    return-void
.end method
