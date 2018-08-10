.class public Lcom/android/settings/search2/DatabaseIndexingManager;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;,
        Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;,
        Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;
    }
.end annotation


# static fields
.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mBaseAuthority:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field final mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search2/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    invoke-direct {v0}, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mBaseAuthority:Ljava/lang/String;

    return-void
.end method

.method private addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v2, "DatabaseIndexingManager"

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

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v2, 0x7

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v2, 0x9

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v2, 0xb

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0xc

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v2, 0xd

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    new-instance v11, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    iput-object v15, v11, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    iput-object v8, v11, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->packageName:Ljava/lang/String;

    iput v13, v11, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    iput-object v7, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    move-object/from16 v0, v21

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v0, v20

    iput-object v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    iput-object v14, v11, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move/from16 v0, v23

    iput v0, v11, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-nez v10, :cond_0

    const-string/jumbo v2, "DatabaseIndexingManager"

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

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-lez v9, :cond_1

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-instance v12, Landroid/provider/SearchIndexableResource;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    iput v15, v12, Landroid/provider/SearchIndexableResource;->xmlResId:I

    iput-object v8, v12, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v0, v12, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    iput v11, v12, Landroid/provider/SearchIndexableResource;->iconResId:I

    iput-object v7, v12, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    iput-object v14, v12, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    iput-object v13, v12, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexableData(Landroid/provider/SearchIndexableData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
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
    .locals 10
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

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p2

    move-object v2, p3

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v1, "DatabaseIndexingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot add index data for Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/search2/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-object v1

    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DatabaseIndexingManager"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "DatabaseIndexingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Empty non-indexable key from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    :try_start_1
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-object v9
.end method

.method private getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {p2}, Lcom/android/settings/search2/DatabaseIndexingManager;->buildUriForNonIndexableKeys(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/search2/DatabaseIndexingManager;->getNonIndexablesKeys(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "DatabaseIndexingManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not create context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/search2/DatabaseIndexingManager;->EMPTY_LIST:Ljava/util/List;

    return-object v3
.end method

.method private getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DatabaseIndexingManager"

    const-string/jumbo v2, "Cannot open writable database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private indexFromProvider(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/Indexable$SearchIndexProvider;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p4

    iget-object v11, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p4

    iget v15, v0, Landroid/provider/SearchIndexableResource;->rank:I

    if-nez p3, :cond_0

    const-string/jumbo v4, "DatabaseIndexingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find provider: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v18

    const/4 v13, 0x0

    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_2

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/settings/search/SearchIndexableRaw;

    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, v16

    iget-object v4, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v12, v4, 0x1

    new-instance v6, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v6}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v4

    move-object/from16 v0, v16

    iget v5, v0, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    invoke-virtual {v4, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v8, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v4, v5}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v20

    const/4 v13, 0x0

    :goto_2
    move/from16 v0, v20

    if-ge v13, v0, :cond_5

    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/provider/SearchIndexableResource;

    iget-object v4, v14, Landroid/provider/SearchIndexableResource;->locale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    iget-object v4, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v11

    :goto_4
    iput-object v4, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v14, v3}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    goto :goto_3

    :cond_4
    iget-object v4, v14, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    goto :goto_4

    :cond_5
    return-void
.end method

.method private indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SearchIndexableRaw;)V
    .locals 7

    iget-object v0, p3, Lcom/android/settings/search/SearchIndexableRaw;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v2}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-boolean v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->enabled:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget-object v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v0

    iget v1, p3, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    iget-object v3, p3, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    iget-object v6, p3, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-nez p3, :cond_0

    const-string/jumbo v0, "DatabaseIndexingManager"

    const-string/jumbo v1, "Cannot index a null resource!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget v0, p3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    if-lez v0, :cond_3

    iget-object v0, p3, Landroid/provider/SearchIndexableResource;->packageName:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    invoke-virtual {p0, p1, p2, p3, v5}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "DatabaseIndexingManager"

    const-string/jumbo v1, "Cannot index an empty Search Provider name!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getIndexableClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_5

    const-string/jumbo v0, "DatabaseIndexingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SearchIndexableResource \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' should implement the "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/settings/search/Indexable;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " interface!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-static {v6}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v0, p3, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    invoke-interface {v3, v0}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexFromProvider(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/Indexable$SearchIndexProvider;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V

    goto :goto_0
.end method

.method private rebuildDatabase()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/search2/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/search/IndexDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v3, "docid"

    invoke-virtual {p2}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->getDocId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "locale"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_rank"

    iget v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "data_title"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_title_normalized"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_summary_on"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_summary_on_normalized"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOn:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_summary_off"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedSummaryOff:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_summary_off_normalized"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->normalizedSummaryOff:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_entries"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->entries:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "data_keywords"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->spaceDelimitedKeywords:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "class_name"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "screen_title"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "intent_action"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentAction:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "intent_target_package"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentTargetPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "intent_target_class"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->intentTargetClass:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "icon"

    iget v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "enabled"

    iget-boolean v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->enabled:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v3, "data_key_reference"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "user_id"

    iget v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->userId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "payload_type"

    iget v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->payloadType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "payload"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->payload:[B

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string/jumbo v3, "prefs_index"

    invoke-virtual {p1, v3, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v3, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    const-string/jumbo v3, "docid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "parent_class"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->className:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "parent_title"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->screenTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "child_class"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->childClassName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "child_title"

    iget-object v4, p2, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;->updatedTitle:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "site_map"

    invoke-virtual {p1, v3, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_1
    return-void
.end method

.method private updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p3}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p4}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p5}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p6}, Lcom/android/settings/search2/DatabaseIndexingUtils;->normalizeKeywords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v6}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedSummaryOn(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUpdatedSummaryOff(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedSummaryOn(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setNormalizedSummaryOff(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setSpaceDelimitedKeywords(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-virtual {p2}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->build()Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;

    move-result-object v7

    invoke-direct {p0, p1, v7}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRow(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow;)V

    return-void
.end method


# virtual methods
.method addDataToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 14
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/provider/SearchIndexableData;

    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {p0, p1, v0, v4, v1}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v7, "DatabaseIndexingManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Cannot index: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v4, :cond_0

    iget-object v4, v4, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    :cond_0
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " for locale: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v7, "DatabaseIndexingManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Indexing locale \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' took "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sub-long v12, v8, v2

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " millis"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public addIndexableData(Landroid/provider/SearchIndexableData;)V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    iget-object v0, v0, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v7, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mBaseAuthority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    :goto_0
    invoke-static {p2}, Lcom/android/settings/search2/DatabaseIndexingManager;->buildUriForXmlResources(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, v3, v4}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexablesForXmlResourceUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/settings/search2/DatabaseIndexingManager;->buildUriForRawData(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p0, v0, p1, v2, v4}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexablesForRawDataUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v4, "DatabaseIndexingManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not create context for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public addNonIndexableKeys(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    iget-object v0, v0, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/search2/DatabaseIndexingManager;->getNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/search2/DatabaseIndexingManager;->addNonIndexableKeys(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public indexDatabase(Lcom/android/settings/search/IndexingCallback;)V
    .locals 2

    new-instance v0, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;-><init>(Lcom/android/settings/search2/DatabaseIndexingManager;Lcom/android/settings/search/IndexingCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$IndexingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method indexFromResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/List;)V
    .locals 44
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableResource;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    move-object/from16 v24, v0

    const/16 v39, 0x0

    :try_start_0
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p3

    iget v3, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v39

    :cond_0
    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    const/4 v2, 0x1

    move/from16 v0, v43

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v43

    if-ne v0, v2, :cond_0

    :cond_1
    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v37

    const-string/jumbo v2, "PreferenceScreen"

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " at "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v27

    :try_start_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error parsing PreferenceScreen"

    move-object/from16 v0, v27

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    if-eqz v39, :cond_2

    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    throw v2

    :cond_3
    :try_start_2
    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v38

    invoke-static/range {v39 .. v39}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/provider/SearchIndexableResource;->rank:I

    move/from16 v41, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    move-object/from16 v33, v0

    const/16 v25, 0x0

    if-eqz v30, :cond_4

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPreferenceControllerUriMap(Ljava/lang/String;Landroid/content/Context;)Ljava/util/Map;

    move-result-object v25

    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v28, v2, 0x1

    new-instance v17, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    const/16 v35, 0x1

    :cond_5
    :goto_0
    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v43

    const/4 v2, 0x1

    move/from16 v0, v43

    if-eq v0, v2, :cond_b

    const/4 v2, 0x3

    move/from16 v0, v43

    if-ne v0, v2, :cond_6

    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    move/from16 v0, v38

    if-le v2, v0, :cond_b

    :cond_6
    const/4 v2, 0x3

    move/from16 v0, v43

    if-eq v0, v2, :cond_5

    const/4 v2, 0x4

    move/from16 v0, v43

    if-eq v0, v2, :cond_5

    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, p4

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v28, v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataKeywords(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataIcon(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v31

    if-eqz v35, :cond_7

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v35, 0x0

    :cond_7
    new-instance v4, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    invoke-direct {v4}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setLocale(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v42

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setScreenTitle(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIconResId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move/from16 v0, v41

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setRank(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetPackage(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setIntentTargetClass(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEnabled(Z)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v36

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setUserId(I)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    const-string/jumbo v2, "CheckBoxPreference"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v6

    const/16 v29, 0x0

    const-string/jumbo v2, "ListPreference"

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataEntries(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v29

    :cond_8
    move-object/from16 v0, v25

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingUtils;->getPayloadFromUriMap(Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/search2/ResultPayload;

    move-result-object v40

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataChildFragment(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setEntries(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setChildClassName(Ljava/lang/String;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    move-result-object v2

    move-object/from16 v0, v40

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;->setPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v26

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error parsing PreferenceScreen"

    move-object/from16 v0, v26

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataSummaryOn(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataSummaryOff(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/settings/search2/XmlParserUtils;->getDataSummary(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v13

    :cond_a
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v4

    move-object v12, v5

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v35, :cond_c

    const/16 v20, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    invoke-direct/range {v15 .. v21}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateOneRowWithFilteredData(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/settings/search2/DatabaseIndexingManager$DatabaseRow$Builder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_c
    if-eqz v39, :cond_d

    invoke-interface/range {v39 .. v39}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_d
    return-void
.end method

.method public indexOneSearchIndexableData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Landroid/provider/SearchIndexableData;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    instance-of v0, p3, Landroid/provider/SearchIndexableResource;

    if-eqz v0, :cond_1

    check-cast p3, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexOneResource(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableResource;Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p3, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/search2/DatabaseIndexingManager;->indexOneRaw(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/settings/search/SearchIndexableRaw;)V

    goto :goto_0
.end method

.method isFullIndex(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v2, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    iget-object v2, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/settings/search/IndexDatabaseHelper;->isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    iget-object v2, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/settings/search/IndexDatabaseHelper;->isBuildIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v1, :cond_0

    xor-int/lit8 v2, v0, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isIndexingComplete()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mIsIndexingComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method performIndexing()V
    .locals 11
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.content.action.SEARCH_INDEXABLES_PROVIDER"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, v7, v1}, Lcom/android/settings/search2/DatabaseIndexingManager;->isFullIndex(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/settings/search2/DatabaseIndexingManager;->rebuildDatabase()V

    :cond_0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v9, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v9}, Lcom/android/settings/search2/DatabaseIndexingUtils;->isWellKnownProvider(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v0, v9, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v9, v2, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v8, v9, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p0, v8, v0}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexablesFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    invoke-virtual {p0, v8, v0}, Lcom/android/settings/search2/DatabaseIndexingManager;->addNonIndexablesKeysFromRemoteProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v5, v7}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateDatabase(ZLjava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-static {v9, v1}, Lcom/android/settings/search/IndexDatabaseHelper;->setBuildIndexed(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V
    .locals 20
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v19, "enabled = 1"

    const-string/jumbo v18, "enabled = 0"

    const-string/jumbo v3, "prefs_index"

    sget-object v4, Lcom/android/settings/search2/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "enabled = 1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    :cond_1
    const/16 v2, 0xa

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    if-eqz v15, :cond_0

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "docid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "prefs_index"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v13, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    const-string/jumbo v3, "prefs_index"

    sget-object v4, Lcom/android/settings/search2/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v5, "enabled = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "enabled"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v16

    :cond_4
    const/16 v2, 0xa

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Set;

    if-eqz v15, :cond_3

    invoke-interface {v15, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "docid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "prefs_index"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v11, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method updateDatabase(ZLjava/lang/String;)V
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v5, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    invoke-virtual {v4}, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->copy()Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mDataToProcess:Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;

    invoke-virtual {v4}, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    iget-object v1, v0, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->dataToUpdate:Ljava/util/List;

    iget-object v3, v0, Lcom/android/settings/search2/DatabaseIndexingManager$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    invoke-direct {p0}, Lcom/android/settings/search2/DatabaseIndexingManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "DatabaseIndexingManager"

    const-string/jumbo v5, "Cannot indexDatabase Index as I cannot get a writable database"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p0, v2, p2, v1, v3}, Lcom/android/settings/search2/DatabaseIndexingManager;->addDataToDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateDataInDatabase(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/Map;)V

    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public updateFromClassNameResource(Ljava/lang/String;Z)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "class name cannot be null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Lcom/android/settings/search/SearchIndexableResources;->getResourceByName(Ljava/lang/String;)Landroid/provider/SearchIndexableResource;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v1, "DatabaseIndexingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find SearchIndexableResources for class name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager;->mContext:Landroid/content/Context;

    iput-object v1, v0, Landroid/provider/SearchIndexableResource;->context:Landroid/content/Context;

    iput-boolean p2, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    new-instance v1, Lcom/android/settings/search2/DatabaseIndexingManager$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/search2/DatabaseIndexingManager$1;-><init>(Lcom/android/settings/search2/DatabaseIndexingManager;Landroid/provider/SearchIndexableResource;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
