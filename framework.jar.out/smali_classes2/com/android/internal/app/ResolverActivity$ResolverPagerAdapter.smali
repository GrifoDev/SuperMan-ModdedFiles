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
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2958
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    .line 2959
    invoke-direct {p0}, Lcom/android/internal/widget/PagerAdapter;-><init>()V

    .line 2960
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 2958
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 3012
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ViewPager;->removeView(Landroid/view/View;)V

    .line 3011
    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3023
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 2965
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 12
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/16 v11, 0x11

    const/4 v10, 0x0

    .line 2975
    const/4 v6, 0x0

    .line 2981
    .local v6, "v":Landroid/view/View;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get7(Lcom/android/internal/app/ResolverActivity;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;

    .line 2983
    .local v0, "gridResolveListAdapter":Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x109010b

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2984
    .local v6, "v":Landroid/view/View;
    const v7, 0x10204b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 2985
    .local v1, "gridView":Landroid/widget/GridView;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2988
    new-instance v2, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-direct {v2, v7}, Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;-><init>(Lcom/android/internal/app/ResolverActivity;)V

    .line 2989
    .local v2, "listener":Lcom/android/internal/app/ResolverActivity$PagerItemClickListener;
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2990
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 2992
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$PageResolverListAdapter;->getCount()I

    move-result v3

    .line 2993
    .local v3, "nCount":I
    if-nez p2, :cond_0

    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get26(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v8}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)I

    move-result v8

    if-gt v7, v8, :cond_0

    .line 2994
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 2995
    .local v4, "paddingLeft":I
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    .line 2997
    .local v5, "paddingRight":I
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 2998
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->setGravity(I)V

    .line 2999
    invoke-virtual {v1, v4, v10, v5, v10}, Landroid/view/View;->setPadding(IIII)V

    move-object v7, v6

    .line 3000
    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 3006
    .end local v4    # "paddingLeft":I
    .end local v5    # "paddingRight":I
    :goto_0
    check-cast p1, Lcom/android/internal/widget/ViewPager;

    .end local p1    # "pager":Landroid/view/View;
    invoke-virtual {p1, v6, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3007
    return-object v6

    .line 3002
    .restart local p1    # "pager":Landroid/view/View;
    :cond_0
    iget-object v7, p0, Lcom/android/internal/app/ResolverActivity$ResolverPagerAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v7}, Lcom/android/internal/app/ResolverActivity;->-get11(Lcom/android/internal/app/ResolverActivity;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3003
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    goto :goto_0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "pager"    # Landroid/view/View;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 3017
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

    .prologue
    .line 3020
    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3021
    return-void
.end method
