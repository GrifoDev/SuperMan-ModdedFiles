.class Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAppsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecentAdapter"
.end annotation


# instance fields
.field private refreshHanlder:Landroid/os/Handler;

.field private refreshRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshHanlder:Landroid/os/Handler;

    new-instance v0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter$1;-><init>(Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    const v3, 0x7f080027

    const/16 v2, 0x8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v1, v1, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showHistoryTitle(Z)V
    invoke-static {v1, v0}, Lcom/android/launcher2/MenuAppsSearch;->access$1400(Lcom/android/launcher2/MenuAppsSearch;Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsSearch;->access$1500(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v2

    mul-int/2addr v1, v2

    if-le v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentLineCount:I
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$1500(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v1

    mul-int/2addr v0, v1

    :goto_1
    return v0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    :cond_5
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v1, 0x1

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showHistoryTitle(Z)V
    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsSearch;->access$1400(Lcom/android/launcher2/MenuAppsSearch;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v1}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/launcher2/AppItem;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->getItem(I)Lcom/android/launcher2/AppItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mTextSize:I
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$1200(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->setCustomTextSize(F)V

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshHanlder:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshHanlder:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->refreshRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mIconSize:I
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsSearch;->access$1300(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$RecentAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
