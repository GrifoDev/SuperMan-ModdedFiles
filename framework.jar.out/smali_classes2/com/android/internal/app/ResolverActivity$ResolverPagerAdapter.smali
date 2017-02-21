.class Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;
.super Lcom/android/internal/widget/PagerAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResolverPagerAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/widget/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 12

    const/16 v11, 0x11

    const/4 v10, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109010b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x10204b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v2, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v2, v7}, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v3

    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get26(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)I

    move-result v8

    if-gt v7, v8, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v1, v11}, Landroid/widget/GridView;->setGravity(I)V

    invoke-virtual {v1, v4, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    move-object v7, v6

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    :goto_0
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    invoke-virtual {p1, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-object v6

    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    goto :goto_0
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

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
