.class public Lcom/android/settings/search/SecInnerMenu;
.super Lcom/android/settings/search/SecMenu;
.source "SecInnerMenu.java"


# instance fields
.field private args:Landroid/os/Bundle;

.field private fragment:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getFragment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/search/SearchUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v18

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SearchIndexableResource \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\' should implement the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/android/settings/search/Indexable;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " interface!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/SearchUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v24

    if-nez v24, :cond_1

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v20

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v23

    if-eqz v20, :cond_3

    const/16 v19, 0x0

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_3

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, v27

    iget v0, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    move/from16 v28, v0

    if-lez v28, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v23

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/search/SecInnerMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;I)V

    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "There is no xmlResId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v26

    if-eqz v26, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_12

    const/16 v19, 0x0

    :goto_2
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_12

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v23, :cond_5

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v4, :cond_d

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SecMenu;

    if-eqz v21, :cond_c

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    :cond_6
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v4, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    :cond_7
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, -0x1

    if-le v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    new-instance v4, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_8
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    const/4 v10, 0x0

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-eqz v4, :cond_a

    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_9

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_9

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_9
    new-instance v4, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_a
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    goto :goto_4

    :cond_b
    move-object/from16 v0, v25

    iget v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->menu_type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    new-instance v4, Lcom/android/settings/search/SecMenu;

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/android/settings/search/SecMenu;->title:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/settings/search/SecMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/android/settings/search/SecMenu;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "menu is null : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    if-eqz v4, :cond_e

    new-instance v11, Lcom/android/settings/search/SecInnerMenu;

    move-object/from16 v0, v25

    iget-object v13, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v14, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v15, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/settings/search/SecInnerMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_11

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_11

    :cond_f
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    if-eqz v4, :cond_10

    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_10
    new-instance v4, Lcom/android/settings/search/SecLinkedMenu;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/SecLinkedMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, v25

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    if-nez v4, :cond_f

    new-instance v4, Lcom/android/settings/search/SecMenu;

    move-object/from16 v0, v25

    iget-object v6, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v25

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/search/SecMenu;-><init>(Lcom/android/settings/search/SecMenu;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/settings/search/SecInnerMenu;->addSubMenu(Lcom/android/settings/search/SecMenu;)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v4, :cond_13

    return-void

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search/SecInnerMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_5
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/settings/search/SecMenu;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_5

    :cond_14
    return-void
.end method

.method public saveInnerMenu(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/search/SecInnerMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/search/SecInnerMenu;->summary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/settings/search/SecInnerMenu;->fragment:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/search/SecInnerMenu;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings/search/SecInnerMenu;->iconResId:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/settings/search/SecInnerMenu;->index:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->key:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/search/SecInnerMenu;->menuType:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->path:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->categoryId:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/search/SecInnerMenu;->args:Landroid/os/Bundle;

    move-object/from16 v23, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v23}, Lcom/android/settings/search/SecInnerMenu;->updateOneRowWithFilteredData(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
