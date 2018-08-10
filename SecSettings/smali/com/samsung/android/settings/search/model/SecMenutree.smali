.class public Lcom/samsung/android/settings/search/model/SecMenutree;
.super Ljava/lang/Object;
.source "SecMenutree.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private root:Lcom/samsung/android/settings/search/model/SecMenu;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "SecMenutree"

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    const-string/jumbo v1, "Settings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v1, Lcom/samsung/android/settings/search/model/SecMenu;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    iput-object v1, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecMenu;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iput-object v3, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v2, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v2, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->find(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    iget-object v2, v0, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v2}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->getKey()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object v3
.end method

.method public initMainMenues(Landroid/content/Context;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v15

    if-ge v5, v15, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v13

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    if-eqz v15, :cond_2

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_1
    iget v15, v13, Lcom/android/settingslib/drawer/Tile;->titleRes:I

    move-object/from16 v0, p1

    invoke-static {v0, v15}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1

    const-string/jumbo v15, "SecMenutree"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "skip keyword : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v16, "com.android.settings.tileid"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v16, "com.android.settings.support"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v16, "com.android.settings.type"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v4, v13, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v15, "quick"

    invoke-virtual {v15, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v11, ""

    goto :goto_1

    :cond_3
    if-nez v6, :cond_4

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    if-eqz v14, :cond_5

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    new-instance v1, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v1}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    invoke-virtual {v1, v11}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    invoke-virtual {v15, v7}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    if-eqz v15, :cond_7

    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->fragment:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v9, Lcom/samsung/android/settings/search/model/SecInnerMenu;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-direct {v9, v15, v1}, Lcom/samsung/android/settings/search/model/SecInnerMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    :cond_6
    :goto_3
    if-eqz v9, :cond_8

    iget-object v15, v9, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-virtual {v15, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setCategoryId(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    iget v0, v13, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIconResId(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v15

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setMenuType(I)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v15, v9}, Lcom/samsung/android/settings/search/model/SecMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto :goto_2

    :cond_7
    iget-object v15, v13, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v15, :cond_6

    new-instance v9, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v0, v13, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v9, v15, v1, v0}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    goto :goto_3

    :cond_8
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "tile don\'t have any link information: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v15, v15, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v15, :cond_a

    const-string/jumbo v15, "root.subMenues is null"

    invoke-static {v15}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v15, v15, Lcom/samsung/android/settings/search/model/SecMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Lcom/samsung/android/settings/search/model/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_4

    :cond_b
    return-void
.end method

.method public saveSearchItems(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecMenutree;->root:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/search/model/SecMenu;->save(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
