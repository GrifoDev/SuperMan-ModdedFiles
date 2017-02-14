.class Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAppsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchAdapter"
.end annotation


# instance fields
.field mFilter:Lcom/android/launcher2/MenuAppsSearch$SearchFilter;

.field mSearchText:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;

.field toShow:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    new-instance v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;

    invoke-direct {v0, p1}, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;-><init>(Lcom/android/launcher2/MenuAppsSearch;)V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mFilter:Lcom/android/launcher2/MenuAppsSearch$SearchFilter;

    # setter for: Lcom/android/launcher2/MenuAppsSearch;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/launcher2/MenuAppsSearch;->access$102(Lcom/android/launcher2/MenuAppsSearch;Landroid/content/Context;)Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 10

    const v9, 0x7f0d0006

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/launcher2/Utilities;->isChineseAsLocaleDefault()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "en_US"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    new-instance v7, Lcom/android/launcher2/searchapp/PrefixHighlighter;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/android/launcher2/searchapp/PrefixHighlighter;-><init>(I)V

    # setter for: Lcom/android/launcher2/MenuAppsSearch;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;
    invoke-static {v6, v7}, Lcom/android/launcher2/MenuAppsSearch;->access$902(Lcom/android/launcher2/MenuAppsSearch;Lcom/android/launcher2/searchapp/PrefixHighlighter;)Lcom/android/launcher2/searchapp/PrefixHighlighter;

    iget-object v6, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mPrefixHighlighter:Lcom/android/launcher2/searchapp/PrefixHighlighter;
    invoke-static {v6}, Lcom/android/launcher2/MenuAppsSearch;->access$900(Lcom/android/launcher2/MenuAppsSearch;)Lcom/android/launcher2/searchapp/PrefixHighlighter;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v6, p2, v7}, Lcom/android/launcher2/searchapp/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p2, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :goto_1
    add-int v6, v3, v1

    if-gt v3, v6, :cond_0

    const/4 v6, -0x1

    if-le v3, v6, :cond_0

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showSearchTitle(Z)V
    invoke-static {v0, v2}, Lcom/android/launcher2/MenuAppsSearch;->access$800(Lcom/android/launcher2/MenuAppsSearch;Z)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mNotiTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$000(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public getItem(I)Lcom/android/launcher2/AppItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->getItem(I)Lcom/android/launcher2/AppItem;

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

    const v3, 0x7f030008

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher2/AppIconView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mTextSize:I
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$1200(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lcom/android/launcher2/AppIconView;->setCustomTextSize(F)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AppItem;->getIconBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mIconSize:I
    invoke-static {v4}, Lcom/android/launcher2/MenuAppsSearch;->access$1300(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v4

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;I)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

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
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v3, v3, Lcom/android/launcher2/MenuAppsSearch;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-object p2

    :cond_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getEnableHighContrast()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public runFilter()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    sget-object v2, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter$1;

    invoke-direct {v2, p0}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter$1;-><init>(Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    # setter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v2, v3}, Lcom/android/launcher2/MenuAppsSearch;->access$702(Lcom/android/launcher2/MenuAppsSearch;I)I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mResultGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsSearch;->access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mRecentGridView:Landroid/widget/GridView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsSearch;->mGalaxyAppsGridView:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mCurrentCellCount:I
    invoke-static {v3}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mFilter:Lcom/android/launcher2/MenuAppsSearch$SearchFilter;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->filterApps()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showSearchTitle(Z)V
    invoke-static {v2, v5}, Lcom/android/launcher2/MenuAppsSearch;->access$800(Lcom/android/launcher2/MenuAppsSearch;Z)V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsSearch;->clearGalaxyAppsResult()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # invokes: Lcom/android/launcher2/MenuAppsSearch;->showGalaxyAppsResult(Z)V
    invoke-static {v2, v6}, Lcom/android/launcher2/MenuAppsSearch;->access$1000(Lcom/android/launcher2/MenuAppsSearch;Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsSearch;->access$1100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    # getter for: Lcom/android/launcher2/MenuAppsSearch;->mSearchSubTitleText:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/launcher2/MenuAppsSearch;->access$1100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->toShow:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method
