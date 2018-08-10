.class public Lcom/samsung/android/settings/search/model/SecSettingSearch;
.super Ljava/lang/Object;
.source "SecSettingSearch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDataRelatedKeywords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "content://com.samsung.android.provider.alias"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "get"

    const-string/jumbo v4, "version"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_3

    const-string/jumbo v0, "version"

    const/4 v2, -0x1

    invoke-virtual {v8, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_3

    const-string/jumbo v0, "content://com.samsung.android.provider.alias"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v14

    const-string/jumbo v6, ""

    const/4 v0, -0x1

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_2
    const-string/jumbo v0, "SearchTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SecurityException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :catch_1
    move-exception v10

    const-string/jumbo v0, "SearchTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "content://com.samsung.android.provider.alias"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    const-string/jumbo v0, "SearchTest"

    const-string/jumbo v2, "related search is not supported"

    invoke-static {v0, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    return-object v13
.end method

.method private static getIntentPayload(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/search2/IntentPayload;
    .locals 13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, ":settings:fragment_args_key"

    move-object/from16 v0, p3

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x22

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-static/range {v1 .. v8}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;ZI)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Lcom/android/settings/search2/IntentPayload;

    invoke-direct {v11, v10}, Lcom/android/settings/search2/IntentPayload;-><init>(Landroid/content/Intent;)V

    :goto_0
    return-object v11

    :cond_0
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0xb

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    new-instance v9, Landroid/content/ComponentName;

    move-object/from16 v0, p5

    invoke-direct {v9, v0, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    const-string/jumbo v1, ":settings:fragment_args_key"

    move-object/from16 v0, p3

    invoke-virtual {v10, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v11, Lcom/android/settings/search2/IntentPayload;

    invoke-direct {v11, v10}, Lcom/android/settings/search2/IntentPayload;-><init>(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static getPathAddedSearchResults(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    const/4 v12, -0x2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/search/SearchResultItem;

    const/4 v5, -0x1

    invoke-virtual {v7}, Lcom/samsung/android/settings/search/SearchResultItem;->getRootRank()I

    move-result v9

    if-eq v9, v0, :cond_0

    invoke-virtual {v7}, Lcom/samsung/android/settings/search/SearchResultItem;->getRootRank()I

    move-result v0

    iget-object v9, v7, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    const-string/jumbo v10, ">"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v9, v4

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    new-instance v1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;-><init>()V

    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v9

    iget v10, v7, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addIconRes(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addMenuType(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->build()Lcom/samsung/android/settings/search/SearchResultItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    iget-object v9, v7, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v1, Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-direct {v1}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;-><init>()V

    iget-object v9, v7, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addMenuType(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    if-ne v5, v12, :cond_1

    iget v9, v7, Lcom/samsung/android/settings/search/SearchResultItem;->iconResId:I

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addIconRes(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    iget-object v9, v7, Lcom/samsung/android/settings/search/SearchResultItem;->targetPkg:Ljava/lang/String;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTargetPkg(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->build()Lcom/samsung/android/settings/search/SearchResultItem;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, v7, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    const-string/jumbo v9, "SearchTest"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ")title = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/samsung/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v7, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v5, -0x2

    goto :goto_1

    :cond_4
    return-object v8
.end method

.method private static getSearchItemFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/settings/search/SearchResultItem;
    .locals 16

    if-eqz p1, :cond_4

    const/16 v1, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    const/4 v7, 0x0

    if-eqz v9, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    array-length v1, v9

    const/4 v2, 0x0

    invoke-virtual {v13, v9, v2, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v13}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    :cond_0
    const/16 v1, 0x14

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v1, 0x15

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v12

    const/4 v1, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v1, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v1, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v12, :cond_1

    invoke-static {v12, v15}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getUnmarshalledPayload([BI)Lcom/android/settings/search2/ResultPayload;

    move-result-object v14

    :goto_0
    const/16 v1, 0x8

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const v10, 0x7f080163

    :goto_1
    new-instance v8, Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-direct {v8}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;-><init>()V

    const/4 v1, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTitleEn(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addSummary(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addEntries(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addIconRes(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addKey(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTargetPkg(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTargetCls(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addScreenTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addClassName(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addMenuType(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addMenuPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addCategoryId(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addAction(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addExtras(Landroid/os/Bundle;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v1

    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addRankPath(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-virtual {v8}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->build()Lcom/samsung/android/settings/search/SearchResultItem;

    move-result-object v1

    return-object v1

    :cond_1
    if-nez v15, :cond_2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getIntentPayload(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/search2/IntentPayload;

    move-result-object v14

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v1, "SecSettingSearch"

    const-string/jumbo v2, "Error creating payload - bad marshalling data or mismatched types"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getSearchResultList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    const/4 v14, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v5}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getSearchResultListFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    invoke-static {v12}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getPathAddedSearchResults(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v13, "SecSettingSearch"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Basic search : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    :cond_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    if-eqz v14, :cond_5

    throw v14

    :catch_0
    move-exception v14

    goto :goto_0

    :catch_1
    move-exception v13

    :try_start_2
    throw v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v14

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    :goto_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    if-eqz v14, :cond_4

    throw v14

    :catch_2
    move-exception v15

    if-nez v14, :cond_3

    move-object v14, v15

    goto :goto_2

    :cond_3
    if-eq v14, v15, :cond_2

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    throw v13

    :cond_5
    const/4 v14, 0x0

    const/4 v10, 0x0

    :try_start_4
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-static {v0, v10, v5}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getSearchResultListFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v13, "SecSettingSearch"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Related in English : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_6
    if-eqz v10, :cond_7

    :try_start_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_7
    :goto_3
    if-eqz v14, :cond_b

    throw v14

    :catch_3
    move-exception v14

    goto :goto_3

    :catch_4
    move-exception v13

    :try_start_6
    throw v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v14

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    :goto_4
    if-eqz v10, :cond_8

    :try_start_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_8
    :goto_5
    if-eqz v14, :cond_a

    throw v14

    :catch_5
    move-exception v15

    if-nez v14, :cond_9

    move-object v14, v15

    goto :goto_5

    :cond_9
    if-eq v14, v15, :cond_8

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    throw v13

    :cond_b
    invoke-static/range {p0 .. p1}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getDataRelatedKeywords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v9, 0x0

    :try_start_8
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v13

    invoke-virtual {v13, v6}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-static {v0, v9, v5}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getSearchResultListFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v13, "SecSettingSearch"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Related search  : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_d
    if-eqz v9, :cond_e

    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    :cond_e
    :goto_6
    if-eqz v14, :cond_c

    throw v14

    :catch_6
    move-exception v14

    goto :goto_6

    :catch_7
    move-exception v13

    :try_start_a
    throw v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v14

    move-object/from16 v17, v14

    move-object v14, v13

    move-object/from16 v13, v17

    :goto_7
    if-eqz v9, :cond_f

    :try_start_b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    :cond_f
    :goto_8
    if-eqz v14, :cond_11

    throw v14

    :catch_8
    move-exception v15

    if-nez v14, :cond_10

    move-object v14, v15

    goto :goto_8

    :cond_10
    if-eq v14, v15, :cond_f

    invoke-virtual {v14, v15}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_11
    throw v13

    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_13

    new-instance v13, Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;-><init>(Lcom/samsung/android/settings/search/model/SecSettingSearch$RankComparator;)V

    invoke-static {v11, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v3, Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-direct {v3}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f1215ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addTitle(Ljava/lang/String;)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    move-result-object v13

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->addMenuType(I)Lcom/samsung/android/settings/search/SearchResultItem$Builder;

    invoke-virtual {v3}, Lcom/samsung/android/settings/search/SearchResultItem$Builder;->build()Lcom/samsung/android/settings/search/SearchResultItem;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_13
    return-object v2

    :catchall_3
    move-exception v13

    goto :goto_7

    :catchall_4
    move-exception v13

    goto/16 :goto_4

    :catchall_5
    move-exception v13

    goto/16 :goto_1
.end method

.method private static getSearchResultListFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, p1}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getSearchItemFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/samsung/android/settings/search/SearchResultItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/search/SearchResultItem;->menu_path:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-eqz p2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/samsung/android/settings/search/SearchResultItem;->key:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private static getUnmarshalledPayload([BI)Lcom/android/settings/search2/ResultPayload;
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/android/settings/search2/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, v1}, Lcom/android/settings/search2/ResultPayloadUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search2/ResultPayload;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecSettingSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error creating parcelable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
