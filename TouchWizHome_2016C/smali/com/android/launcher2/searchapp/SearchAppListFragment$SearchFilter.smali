.class Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Lcom/android/launcher2/searchapp/SearchAppListFragment$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterContainers()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppIndexInfo;",
            ">;"
        }
    .end annotation

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mRes:Landroid/content/res/Resources;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1800(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0029

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    :cond_1
    if-nez v9, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v10}, Lcom/android/launcher2/searchapp/AppInfo;->getSection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/launcher2/searchapp/AppIndexInfo;

    invoke-direct {v10, v6, v1}, Lcom/android/launcher2/searchapp/AppIndexInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_0

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v9, v2

    move v3, v4

    :goto_1
    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/AppInfo;->getSection()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    sub-int v10, v3, v4

    int-to-double v10, v10

    int-to-double v12, v7

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    add-int/2addr v1, v10

    move v4, v3

    :cond_3
    new-instance v10, Lcom/android/launcher2/searchapp/AppIndexInfo;

    invoke-direct {v10, v6, v1}, Lcom/android/launcher2/searchapp/AppIndexInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    return-object v8
.end method

.method public filterWidgets()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, ""

    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchEdit:Landroid/widget/SearchView;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1500(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAdapter:Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1500(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchListAdapter;->setSearchText(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseUtils()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AppInfo;

    iget-object v6, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->utils:Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;
    invoke-static {v6}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1700(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mAppsToShow:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$1600(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/searchapp/AppInfo;

    invoke-virtual {v1}, Lcom/android/launcher2/searchapp/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object v2
.end method

.method public filterWidgets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/searchapp/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$SearchFilter;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    # getter for: Lcom/android/launcher2/searchapp/SearchAppListFragment;->mSearchAppController:Lcom/android/launcher2/searchapp/SearchAppController;
    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->getAppsMap()Ljava/util/TreeMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method
