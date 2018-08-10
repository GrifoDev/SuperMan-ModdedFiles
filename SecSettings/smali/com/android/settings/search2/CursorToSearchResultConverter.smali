.class Lcom/android/settings/search2/CursorToSearchResultConverter;
.super Ljava/lang/Object;
.source "CursorToSearchResultConverter.java"


# static fields
.field private static final prioritySettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final whiteList:[Ljava/lang/String;


# instance fields
.field private final LONG_TITLE_LENGTH:I

.field private final TAG:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQueryText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "main_toggle_wifi"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "main_toggle_bluetooth"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_airplane"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "tether_settings"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "battery_saver"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "toggle_nfc"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "restrict_background"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "data_usage_enable"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "button_roaming_key"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/search2/CursorToSearchResultConverter;->whiteList:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/android/settings/search2/CursorToSearchResultConverter;->whiteList:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/search2/CursorToSearchResultConverter;->prioritySettings:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "CursorConverter"

    iput-object v0, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->TAG:Ljava/lang/String;

    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->LONG_TITLE_LENGTH:I

    iput-object p1, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mKeys:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mQueryText:Ljava/lang/String;

    return-void
.end method

.method private buildSingleSearchResultFromCursor(Lcom/android/settings/dashboard/SiteMapManager;Ljava/util/Map;Landroid/database/Cursor;I)Lcom/android/settings/search2/SearchResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/dashboard/SiteMapManager;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;",
            "Landroid/database/Cursor;",
            "I)",
            "Lcom/android/settings/search2/SearchResult;"
        }
    .end annotation

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mKeys:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mKeys:Ljava/util/Set;

    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v3, 0xb

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v3, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v15}, Lcom/android/settings/search2/CursorToSearchResultConverter;->getUnmarshalledPayload([BI)Lcom/android/settings/search2/ResultPayload;

    move-result-object v14

    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search2/CursorToSearchResultConverter;->getBreadcrumbs(Lcom/android/settings/dashboard/SiteMapManager;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v9

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p4

    invoke-direct {v0, v1, v9, v2, v6}, Lcom/android/settings/search2/CursorToSearchResultConverter;->getRank(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)I

    move-result v16

    new-instance v10, Lcom/android/settings/search2/SearchResult$Builder;

    invoke-direct {v10}, Lcom/android/settings/search2/SearchResult$Builder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/android/settings/search2/SearchResult$Builder;->addTitle(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/android/settings/search2/SearchResult$Builder;->addSummary(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/settings/search2/SearchResult$Builder;->addBreadcrumbs(Ljava/util/List;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/settings/search2/SearchResult$Builder;->addRank(I)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8, v7, v12}, Lcom/android/settings/search2/CursorToSearchResultConverter;->getIconForPackage(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/search2/SearchResult$Builder;->addIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/settings/search2/SearchResult$Builder;->addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/SearchResult$Builder;

    invoke-virtual {v10}, Lcom/android/settings/search2/SearchResult$Builder;->build()Lcom/android/settings/search2/SearchResult;

    move-result-object v3

    return-object v3

    :cond_1
    if-nez v15, :cond_2

    move-object/from16 v3, p0

    move-object/from16 v4, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/search2/CursorToSearchResultConverter;->getIntentPayload(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/search2/IntentPayload;

    move-result-object v14

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "CursorConverter"

    const-string/jumbo v4, "Error creating payload - bad marshalling data or mismatched types"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private getBreadcrumbs(Lcom/android/settings/dashboard/SiteMapManager;Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/dashboard/SiteMapManager;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/settings/dashboard/SiteMapManager;->buildBreadCrumb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getIconForPackage(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    if-nez v4, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v4, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v5, "CursorConverter"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot create Context for package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8

    :cond_3
    iget-object v4, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    goto :goto_2

    :catch_1
    move-exception v3

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getIntentPayload(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/search2/IntentPayload;
    .locals 13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, ":settings:fragment_args_key"

    move-object/from16 v0, p3

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/search2/CursorToSearchResultConverter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x22

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

    const/16 v1, 0x9

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

.method private getRank(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/search2/CursorToSearchResultConverter;->prioritySettings:Ljava/util/Set;

    invoke-interface {v0, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ge p3, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    add-int/lit8 v0, p3, 0x2

    return v0

    :cond_1
    return p3
.end method

.method private getUnmarshalledPayload([BI)Lcom/android/settings/search2/ResultPayload;
    .locals 4

    packed-switch p2, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    return-object v1

    :pswitch_0
    :try_start_0
    sget-object v1, Lcom/android/settings/search2/InlineSwitchPayload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v1}, Lcom/android/settings/search2/ResultPayloadUtils;->unmarshall([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search2/ResultPayload;
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "CursorConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error creating parcelable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public convertCursor(Lcom/android/settings/dashboard/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/dashboard/SiteMapManager;",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_0

    return-object v3

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/search2/CursorToSearchResultConverter;->buildSingleSearchResultFromCursor(Lcom/android/settings/dashboard/SiteMapManager;Ljava/util/Map;Landroid/database/Cursor;I)Lcom/android/settings/search2/SearchResult;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v2
.end method
