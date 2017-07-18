.class Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAppsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalaxyAppsResultAdapter"
.end annotation


# instance fields
.field mSearchText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p1, p2}, Lcom/android/launcher2/MenuAppsSearch;->access$102(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->mSearchText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher2/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->getItem(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$1200(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->setCustomTextSize(F)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v4}, Lcom/android/launcher2/MenuAppsSearch;->access$1300(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->setGravity(I)V

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$GalaxyAppsResultAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method
