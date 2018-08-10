.class public Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;
.super Ljava/lang/Object;
.source "DeviceSearchIndexModule.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyfinder/index/api/modules/IndexModuleSearchable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceSearchIndexModuleSearchable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mRealCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createResultData(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;
        }
    .end annotation

    const/16 v16, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v19, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v19, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/16 v19, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v19, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v15

    const/16 v19, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v19, ">"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v18, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v19, v0

    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_4

    const/16 v19, 0x0

    aget-object v18, v22, v19

    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x6

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v24, "com.android.settings"

    if-nez v20, :cond_0

    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v25, 0x7f12188c

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_1
    const-string/jumbo v19, "com.google.android.gms"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string/jumbo v24, "com.android.settings"

    const v7, 0x7f0806af

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9, v8}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v17

    const/16 v19, 0x4

    move/from16 v0, v19

    if-ne v11, v0, :cond_6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "android.resource://"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v25, "/"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    :goto_2
    const/16 v21, 0x0

    if-eqz v15, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v23

    array-length v0, v15

    move/from16 v19, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-virtual {v0, v15, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    const/16 v19, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v21

    invoke-virtual/range {v23 .. v23}, Landroid/os/Parcel;->recycle()V

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;

    const/16 v19, 0x0

    invoke-direct/range {v4 .. v19}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;[BLandroid/net/Uri;ILjava/lang/String;Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    const-string/jumbo v19, "DeviceSearch"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "already added : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object/from16 v18, v10

    goto/16 :goto_0

    :cond_5
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f12188c

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v25, " > "

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getSettingSearchResult(Ljava/util/ArrayList;)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;",
            ">;)",
            "Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;"
        }
    .end annotation

    new-instance v14, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v14, v4}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;-><init>(I)V

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v13, 0x0

    move-object/from16 v17, v16

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_2

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.REQUEST_FINDO_SEARCH_CALL_SETTING_MENU"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/samsung/android/settings/search/SecSearchActivity;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v4, 0x8000

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v4, "id"

    iget-object v5, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mId:Ljava/lang/String;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x0

    new-instance v3, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;

    iget-wide v4, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mObjectId:J

    iget-object v7, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIcon:Landroid/net/Uri;

    iget v8, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mIconColor:I

    iget-object v9, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mTitle:Ljava/lang/String;

    iget-object v10, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mMenuPath:Ljava/lang/String;

    iget-object v11, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mSummaryOn:Ljava/lang/String;

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultSettingsItem;-><init>(JLandroid/content/Intent;Landroid/net/Uri;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    if-ne v4, v13, :cond_1

    new-instance v16, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    const v7, 0x7f1215ed

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V

    :goto_1
    if-eqz v16, :cond_0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;->addResultItem(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/item/SearchResultItem;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v16

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v4, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v16, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;

    iget-object v4, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v15, v2, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchData;->mRootMenu:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;->addCategory(Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/category/SearchResultCategory;)V
    :try_end_3
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v12

    :goto_2
    invoke-virtual {v12}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;->printStackTrace()V

    :goto_3
    return-object v14

    :cond_2
    move-object/from16 v16, v17

    goto :goto_3

    :catch_1
    move-exception v12

    move-object/from16 v16, v17

    goto :goto_2

    :cond_3
    move-object/from16 v16, v17

    goto :goto_1
.end method

.method private getTileIconColor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getLegacySearchActivity()Landroid/content/ComponentName;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/android/settings/sfinderconnect/SFinderConnectProvider;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getSearchResult(Ljava/lang/String;I)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;
    .locals 11

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getSearchReultCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    :try_start_1
    invoke-direct {p0, v1, v0, v6}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->createResultData(Landroid/database/Cursor;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    :try_start_4
    throw v8
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_0
    move-exception v5

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "IllegalStateException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->getSettingSearchResult(Ljava/util/ArrayList;)Lcom/samsung/android/app/galaxyfinder/index/api/resultobjects/SearchResult;

    move-result-object v7

    return-object v7

    :catch_1
    move-exception v4

    :try_start_5
    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyfinder/index/api/exception/IndexResultException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catch_2
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v8

    move-object v10, v8

    move-object v8, v7

    move-object v7, v10

    :goto_3
    if-eqz v1, :cond_4

    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_4
    :goto_4
    if-eqz v8, :cond_6

    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    :catch_3
    move-exception v3

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SQLiteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move-exception v8

    goto :goto_1

    :catch_5
    move-exception v9

    if-nez v8, :cond_5

    move-object v8, v9

    goto :goto_4

    :cond_5
    if-eq v8, v9, :cond_4

    :try_start_9
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_4

    :catch_6
    move-exception v2

    const-string/jumbo v7, "DeviceSearchIndexModuleSearchable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "CursorIndexOutOfBoundsException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    :try_start_a
    throw v7
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_6

    :catchall_1
    move-exception v7

    goto :goto_3
.end method

.method public getSearchReultCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13

    const/4 v12, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/samsung/android/settings/search/model/SecSettingSearch;->getDataRelatedKeywords(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v6, 0x0

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v6

    :cond_0
    const/4 v1, 0x2

    const/4 v0, 0x2

    mul-int/lit8 v11, v6, 0x2

    add-int/lit8 v2, v11, 0x4

    new-array v5, v2, [Landroid/database/Cursor;

    const/4 v3, 0x0

    const/4 v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v12

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v3

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchTileByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v4

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v10, p1}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenuByKeyword(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v4, v2, :cond_1

    if-ge v8, v6, :cond_1

    add-int/lit8 v3, v4, 0x1

    add-int/lit8 v7, v8, 0x1

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/samsung/android/settings/search/model/SecIndexModel;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    aput-object v11, v5, v4

    move v8, v7

    move v4, v3

    goto :goto_0

    :cond_1
    aget-object v11, v5, v12

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v11

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mRealCount:I

    new-instance v11, Landroid/database/MergeCursor;

    invoke-direct {v11, v5}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v11
.end method

.method public makeAppLaunchIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public makeInAppSearchIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/samsung/android/settings/search/devicesearch/DeviceSearchIndexModule$DeviceSearchIndexModuleSearchable;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method
