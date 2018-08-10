.class public Lcom/samsung/android/settings/search/model/SecLinkedMenu;
.super Lcom/samsung/android/settings/search/model/SecMenu;
.source "SecLinkedMenu.java"


# instance fields
.field private final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private EXTERNAL_PKG:[Ljava/lang/String;

.field private intent:Landroid/content/Intent;

.field private mTargetAction:Ljava/lang/String;

.field private mTargetClass:Ljava/lang/String;

.field private mTargetPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.phone"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.networkui"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.cocktailbarservice"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.desktoplauncher"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.game.gametools"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.uds"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.aodservice"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_0
    if-nez v10, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot add index data for Uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :catch_0
    move-exception v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown URI: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_5

    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    const/16 v3, 0xb

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v3, 0xc

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v3, 0xa

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v8, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    invoke-direct {v8}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-result-object v3

    invoke-virtual {v3, v13}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v13}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/search/model/SecMenu;

    iget-object v3, v3, Lcom/samsung/android/settings/search/model/SecMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v3

    :cond_2
    if-eqz p5, :cond_1

    :try_start_2
    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v3, Lcom/samsung/android/settings/search/model/SecMenu;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8}, Lcom/samsung/android/settings/search/model/SecMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_1

    :cond_3
    if-eqz p5, :cond_1

    move-object/from16 v0, p5

    invoke-interface {v0, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->parent:Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v3, v13}, Lcom/samsung/android/settings/search/model/SecMenu;->hasSubMenu(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    if-eqz v18, :cond_4

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v3, Lcom/samsung/android/settings/search/model/SecLinkedMenu;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v8, v12}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;-><init>(Lcom/samsung/android/settings/search/model/SecMenu;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->addSubMenu(Lcom/samsung/android/settings/search/model/SecMenu;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v8, v3}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    new-instance v3, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v3, v4, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v3, 0x1

    return v3
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v8, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-nez v8, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2

    :catch_0
    move-exception v10

    invoke-virtual {v10}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x6

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-lez v12, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v0, v12, v11}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->parsingXmlResource(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x1

    return v2
.end method

.method private addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "com.android.phone"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v10, p2

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v10}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    invoke-static {v10}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    move-object v4, p0

    move-object v5, v1

    move-object v6, p2

    move-object/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/util/List;)Z

    move-result v12

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".search"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    goto :goto_0

    :catch_0
    move-exception v11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not create context for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "settings/non_indexables_key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "settings/indexables_raw"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "settings/indexables_xml_res"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :goto_0
    if-nez v7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot add index data for Uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    :catch_0
    move-exception v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v1, "Cannot add index data by null value"

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v11
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v5, "com.android.phone"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, p2

    :goto_0
    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ".search"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->EMPTY_LIST:Ljava/util/List;

    return-object v5
.end method

.method private isSupportedExternalPackage(Ljava/lang/String;)Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->EXTERNAL_PKG:[Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSupportedExternalPackage/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/search/model/SearchUtils;->insertLogBuffer(Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public initSubMenu(Landroid/content/Context;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetPkgByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-static {p1, v3}, Lcom/android/settings/Utils;->getTargetClassByIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetClass:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->isSupportedExternalPackage(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    const-string/jumbo v4, "com.android.settings"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mBuilder:Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->initInnerSubMenu(Landroid/content/Context;Lcom/samsung/android/settings/search/model/SecMenu$DatabaseRow$Builder;Landroid/os/Bundle;)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    return-void

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->getNonIndexablesKeysFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->mTargetPkg:Ljava/lang/String;

    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->addIndexablesFromRemoteProvider(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Z

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/search/model/SecLinkedMenu;->subMenues:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/search/model/SecMenu;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/search/model/SecMenu;->initSubMenu(Landroid/content/Context;)V

    goto :goto_1

    :cond_5
    return-void
.end method
