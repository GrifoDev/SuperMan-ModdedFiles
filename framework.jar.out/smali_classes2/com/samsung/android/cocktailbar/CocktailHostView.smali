.class public Lcom/samsung/android/cocktailbar/CocktailHostView;
.super Landroid/widget/FrameLayout;
.source "CocktailHostView.java"


# static fields
.field static final TAG:Ljava/lang/String; = "CocktailHostView"


# instance fields
.field private mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

.field private mCocktailId:I

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setIsRootNamespace(Z)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/samsung/android/cocktailbar/CocktailHostView;->setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getCocktail()Lcom/samsung/android/cocktailbar/Cocktail;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    return-object v0
.end method

.method public getCocktailId()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    return v0
.end method

.method public setCocktail(Lcom/samsung/android/cocktailbar/Cocktail;)V
    .locals 1
    .param p1, "cocktail"    # Lcom/samsung/android/cocktailbar/Cocktail;

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    .line 86
    iput-object p1, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktail:Lcom/samsung/android/cocktailbar/Cocktail;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/samsung/android/cocktailbar/Cocktail;->getCocktailId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mCocktailId:I

    .line 84
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 64
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailHostView;->mUser:Landroid/os/UserHandle;

    .line 63
    return-void
.end method

.method public viewDataChanged(I)V
    .locals 5
    .param p1, "viewId"    # I

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 101
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    instance-of v4, v3, Landroid/widget/AdapterView;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 102
    nop

    nop

    .line 103
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 104
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1

    move-object v2, v0

    .line 105
    nop

    nop

    .line 106
    .local v2, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 99
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_0
    :goto_0
    return-void

    .line 107
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    if-nez v0, :cond_0

    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    if-eqz v4, :cond_0

    .line 108
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    goto :goto_0
.end method
