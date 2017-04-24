.class public Lcom/android/settings/dashboard/DashboardAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DashboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;,
        Lcom/android/settings/dashboard/DashboardAdapter$IconCache;,
        Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mId:I

.field private final mIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedTilePosition:I

.field private mShowFotaView:Z

.field private final mTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/DashboardAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/DashboardAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowFotaView:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/DashboardAdapter;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->isSearchVisibleInSubSettings(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/DashboardAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter;->showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iput-boolean v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowFotaView:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->setHasStableIds(Z)V

    return-void
.end method

.method private countItem(Ljava/lang/Object;IZI)V
    .locals 2

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/2addr v1, p4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private isChnSim()Z
    .locals 5

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DashboardAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIccid ---- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string/jumbo v2, "8986"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "8985"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private isSearchVisibleInSubSettings(Ljava/lang/String;)Z
    .locals 1

    const-string/jumbo v0, "com.android.settings.applications.ManageApplications"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.settings.notification.BlockNotificationList"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.samsung.android.settings.easymode.EasyModeApp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private loadFavorites(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Landroid/content/Context;)V
    .locals 26

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/favorite/MySettingsProvider;->FAVORITE_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "show_button_background"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_5

    const/16 v17, 0x1

    :goto_0
    if-eqz v17, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f110223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f02050c

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    const/16 v8, 0x14

    new-instance v15, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v15}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    const/16 v19, 0x0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v12, 0x0

    :cond_2
    const-string/jumbo v2, "key"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v2, "categoryid"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v25, 0x0

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v13}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    add-int v25, v25, v2

    const/16 v18, 0x0

    :goto_3
    iget-object v2, v13, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_7

    iget-object v2, v13, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/settingslib/drawer/Tile;

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.tileid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.category"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v3, "com.android.settings.prefKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static {v10}, Lcom/android/settings/Utils;->getCategoryId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v24, :cond_4

    if-eqz v11, :cond_4

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v22, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_3

    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string/jumbo v3, "pref_key"

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    move-object/from16 v0, v23

    invoke-virtual {v15, v0}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    add-int v2, v25, v18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v12, v12, 0x1

    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_0

    :cond_6
    new-instance v21, Landroid/util/TypedValue;

    invoke-direct/range {v21 .. v21}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101030e

    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v3, 0x7f110223

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x9

    if-lt v12, v2, :cond_2

    :cond_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v2, v15, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    new-instance v3, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/settings/dashboard/DashboardAdapter$IndexAscCompare;-><init>(Ljava/util/HashMap;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindFavoriteTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    return-void
.end method

.method private needShowGoogleSettingsDialog(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "dashboard_adapter"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "google_settings_show_dialog"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v4

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->isChnSim()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v4
.end method

.method private onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 2

    iget-object v0, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private onBindFavoriteTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V
    .locals 17

    invoke-virtual/range {p2 .. p2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTilesCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/settingslib/drawer/DashboardCategory;->getTile(I)Lcom/android/settingslib/drawer/Tile;

    move-result-object v11

    iget-object v14, v11, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v15, "com.android.settings.category"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "favorite_tile_icon_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "favorite_tile_title_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "favorite_tile_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v6, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v10, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v15, v11, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v14, v15}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v15, v11, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v14, v15}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v14, v1}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v14, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_1
    invoke-static {v1}, Lcom/android/settings/Utils;->getFavoriteTileBackgroundId(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v14, v11, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    new-instance v15, Lcom/android/settings/dashboard/DashboardAdapter$6;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v11}, Lcom/android/settings/dashboard/DashboardAdapter$6;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;)V

    invoke-virtual {v14, v15}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v15, v11, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v14

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v14, v15}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_2
    const/16 v14, 0x9

    if-ge v3, v14, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "favorite_tile_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const-string/jumbo v15, "id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v13, v15, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v14, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const/4 v14, 0x4

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v14, 0x7

    if-ge v2, v14, :cond_5

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v15, 0x7f110239

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    const/4 v14, 0x4

    if-ge v2, v14, :cond_6

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v15, 0x7f11022f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    return-void

    :cond_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v15, 0x7f110239

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v15, 0x7f11022f

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method private onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x8

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v6, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v5, v6}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCache:Lcom/android/settings/dashboard/DashboardAdapter$IconCache;

    iget-object v7, p2, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v6, v7}, Lcom/android/settings/dashboard/DashboardAdapter$IconCache;->getIcon(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.android.settings.tileid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "font_size"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x6

    if-le v1, v5, :cond_1

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/android/settings/Utils;->getFontScale(Landroid/content/Context;I)F

    move-result v2

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f10030d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v3, v5

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->title:Landroid/widget/TextView;

    mul-float v6, v3, v2

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_2
    iget-object v5, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_0
    const-string/jumbo v5, "maintenance_settings"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getSmartManagerBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_5
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_6
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->divider:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "system_update"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_a

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_a
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_b
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_c
    iget-object v5, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->badge:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private recountItems()V
    .locals 10

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x7d0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->reset()V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mShowFotaView:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v4

    if-lez v4, :cond_1

    if-eqz v3, :cond_4

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->getFavoriteCount(Landroid/content/Context;)I

    move-result v0

    const v4, 0x7f040112

    invoke-direct {p0, v9, v4, v2, v8}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    if-eqz v1, :cond_5

    if-lez v0, :cond_5

    move v4, v5

    :goto_2
    const v7, 0x7f04009b

    invoke-direct {p0, v9, v7, v4, v8}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    move v6, v5

    :cond_2
    const v4, 0x7f04009c

    invoke-direct {p0, v9, v4, v6, v8}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->resetCount()V

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->updateTileList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_2
.end method

.method private reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private resetCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mId:I

    return-void
.end method

.method private setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 2

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticKTTModel()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticOPENModel()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0a97

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0ab6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private setSoftwareUpdateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_SyncML_ConfigGroupOpCode"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "USOpen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0b136d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_1
.end method

.method private showGoogleSettingsDialog(Lcom/android/settingslib/drawer/Tile;)V
    .locals 7

    move-object v2, p1

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardAdapter;->needShowGoogleSettingsDialog(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f04030a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f1106e0

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f110189

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b0f0a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$7;

    invoke-direct {v5, p0, v0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$7;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Landroid/widget/CheckBox;Lcom/android/settingslib/drawer/Tile;)V

    const v6, 0x7f0b042c

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$8;

    invoke-direct {v5, p0}, Lcom/android/settings/dashboard/DashboardAdapter$8;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    const v6, 0x7f0b0423

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/dashboard/DashboardAdapter$9;

    invoke-direct {v5, p0}, Lcom/android/settings/dashboard/DashboardAdapter$9;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4, p1}, Lcom/android/settings/SettingsActivity;->openTile(Lcom/android/settingslib/drawer/Tile;)Z

    goto :goto_0
.end method

.method private updateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;
    .locals 2

    const v1, 0x7f0b12fe

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isEnableIntensity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->hasHaptic(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0477

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public getItem(J)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mIds:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSelectedTilePosition()I
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    return v0
.end method

.method public getTile(Landroid/content/ComponentName;)Lcom/android/settingslib/drawer/Tile;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v3, v3, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    iget-object v3, v2, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    return-object v3
.end method

.method public notifyChanged(Lcom/android/settingslib/drawer/Tile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mTypes:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindCategory(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/DashboardCategory;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mItems:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->onBindTile(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Lcom/android/settingslib/drawer/Tile;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/dashboard/DashboardAdapter$1;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settingslib/drawer/Tile;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSplitViewSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    if-ne p2, v1, :cond_1

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0200dc

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0203df

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f1103c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/DashboardAdapter$2;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f11019b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/dashboard/DashboardAdapter$3;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/dashboard/DashboardAdapter;->loadFavorites(Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;Landroid/content/Context;)V

    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f110223

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$4;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/DashboardAdapter$4;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p1, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;->itemView:Landroid/view/View;

    const v2, 0x7f110244

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/dashboard/DashboardAdapter$5;

    invoke-direct {v2, p0}, Lcom/android/settings/dashboard/DashboardAdapter$5;-><init>(Lcom/android/settings/dashboard/DashboardAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f040099 -> :sswitch_0
        0x7f04009b -> :sswitch_3
        0x7f04009c -> :sswitch_4
        0x7f04009f -> :sswitch_1
        0x7f040112 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;
    .locals 3

    new-instance v0, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/DashboardAdapter$DashboardItemHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mCategories:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardAdapter;->recountItems()V

    return-void
.end method

.method public setSelectedTilePosition(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    iput p1, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    iget v0, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mSelectedTilePosition:I

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/DashboardAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public updateTileList(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;)V"
        }
    .end annotation

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v4

    const/4 v3, 0x0

    :goto_0
    if-eqz p1, :cond_12

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_12

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/drawer/DashboardCategory;

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v4, :cond_6

    :cond_0
    :goto_1
    const/4 v5, 0x0

    :goto_2
    iget-object v9, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_11

    iget-object v9, v0, Lcom/android/settingslib/drawer/DashboardCategory;->tiles:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "com.android.settings.support"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "com.android.settings.tileid"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "system_update"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardAdapter;->setSoftwareUpdateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    :cond_1
    :goto_3
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v7, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/android/settings/Utils;->getOutsideTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v11, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v12, "com.android.settings.category"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->getTileIconColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Icon;->setTint(I)Landroid/graphics/drawable/Icon;

    :cond_4
    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    const-string/jumbo v10, "com.android.settings.action.SETTINGS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    if-eqz v6, :cond_5

    const-string/jumbo v9, "Quick"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_10

    :cond_5
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v9, 0x7f040099

    const/4 v10, 0x1

    const/16 v11, 0x7d0

    invoke-direct {p0, v0, v9, v10, v11}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v9, "notification_settings"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardAdapter;->updateTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    goto :goto_3

    :cond_8
    const-string/jumbo v9, "online_help"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->getOnlineHelpMenuState(Landroid/content/Context;Lcom/android/settings/Utils$OnlineHelpMenuState;)Lcom/android/settings/Utils$OnlineHelpMenuState;

    move-result-object v2

    iget v9, v2, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget v10, v2, Lcom/android/settings/Utils$OnlineHelpMenuState;->titleRes:I

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    :cond_9
    iget v9, v2, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget v10, v2, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget v9, v2, Lcom/android/settings/Utils$OnlineHelpMenuState;->iconRes:I

    iput v9, v7, Lcom/android/settingslib/drawer/Tile;->iconRes:I

    :cond_a
    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0495

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v9, "display_settings"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    if-eqz v4, :cond_1

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b1332

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :cond_c
    const-string/jumbo v9, "com.android.settings.action.EXTRA_SETTINGS"

    iget-object v10, v7, Lcom/android/settingslib/drawer/Tile;->action:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b0488

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f02045d

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    iget-object v9, v7, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string/jumbo v10, "com.android.settings.tileid"

    const-string/jumbo v11, "google_settings"

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_d
    const-string/jumbo v9, "cloud_account_settings"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0b1136

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v9, "t_roaming_settings"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f020251

    invoke-static {v9, v10}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-direct {p0, v7}, Lcom/android/settings/dashboard/DashboardAdapter;->setRoamingTile(Lcom/android/settingslib/drawer/Tile;)Lcom/android/settingslib/drawer/Tile;

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v9, "privacy_and_safety_settings"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/settings/dashboard/DashboardAdapter;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getPrivacyAndSafetyTitle(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    goto/16 :goto_3

    :cond_10
    const/4 v9, 0x1

    const v10, 0x7f04009f

    const/16 v11, 0x7d0

    invoke-direct {p0, v7, v10, v9, v11}, Lcom/android/settings/dashboard/DashboardAdapter;->countItem(Ljava/lang/Object;IZI)V

    goto/16 :goto_5

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_12
    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_4
.end method
