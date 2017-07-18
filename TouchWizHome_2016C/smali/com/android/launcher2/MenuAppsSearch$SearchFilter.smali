.class public Lcom/android/launcher2/MenuAppsSearch$SearchFilter;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppsSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SearchFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApps()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    sget-object v15, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v15}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v15

    iput-object v15, v14, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v14}, Lcom/android/launcher2/MenuAppsSearch;->access$300(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/SearchView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v14}, Lcom/android/launcher2/MenuAppsSearch;->access$100(Lcom/android/launcher2/MenuAppsSearch;)Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/launcher2/MenuAppsSearch;->switchGridView(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mSearchAdapter:Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;

    invoke-virtual {v14, v11}, Lcom/android/launcher2/MenuAppsSearch$SearchAdapter;->setSearchText(Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    if-eqz v14, :cond_7

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->checkIsChinaModel()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->isChineseUtils()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_2
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v15

    sget-object v16, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/android/launcher2/searchapp/SearchAppLocaleUtils;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-nez v15, :cond_3

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mAppItems:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_5
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/AppItem;

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v15

    sget-object v16, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_5

    iget-boolean v15, v5, Lcom/android/launcher2/AppItem;->mHidden:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    iget-boolean v15, v5, Lcom/android/launcher2/AppItem;->mHidden:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->isGame()Z

    move-result v15

    if-eqz v15, :cond_5

    :cond_6
    invoke-virtual {v5}, Lcom/android/launcher2/AppItem;->getTitle()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    if-eqz v9, :cond_8

    sget-object v14, Lcom/android/launcher2/MenuAppsGrid;->APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    invoke-virtual {v14}, Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;->updateCollator()V

    sget-object v14, Lcom/android/launcher2/MenuAppsGrid;->APPS_COMPARATOR:Lcom/android/launcher2/MenuAppsGrid$AppsAlphabeticalComparator;

    invoke-static {v9, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_8
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v14

    if-nez v14, :cond_b

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v14, v15, :cond_b

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02b5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v10, v4, v3

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v14}, Lcom/android/launcher2/MenuAppsSearch;->access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v15}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v15

    div-int/2addr v14, v15

    mul-int/2addr v14, v2

    add-int/2addr v14, v10

    iput v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v15}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v15

    rem-int/2addr v14, v15

    if-eqz v14, :cond_9

    iget v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v14, v2

    iput v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_9
    iget v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gt v14, v10, :cond_a

    const/4 v14, 0x0

    iput v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v14}, Lcom/android/launcher2/MenuAppsSearch;->access$600(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v14

    invoke-virtual {v14, v6}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_3
    return-object v9

    :cond_b
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_2

    :cond_c
    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isTabletModel()Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v14

    sget-object v15, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x4:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v14, v15, :cond_e

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cc

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_4
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02b5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cf

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02ce

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int v10, v4, v3

    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v14

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v14}, Lcom/android/launcher2/MenuAppsSearch;->access$200(Lcom/android/launcher2/MenuAppsSearch;)Landroid/widget/GridView;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v15}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v15

    div-int/2addr v14, v15

    mul-int/2addr v14, v2

    add-int/2addr v14, v10

    iput v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v14, v14, Lcom/android/launcher2/MenuAppsSearch;->mRecentAppsMap:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v15}, Lcom/android/launcher2/MenuAppsSearch;->access$700(Lcom/android/launcher2/MenuAppsSearch;)I

    move-result v15

    rem-int/2addr v14, v15

    if-eqz v14, :cond_d

    iget v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v14, v2

    iput v14, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/MenuAppsSearch$SearchFilter;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/launcher2/MenuAppsSearch;->switchGridView(Z)V

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a02cb

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto/16 :goto_4
.end method
