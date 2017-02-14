.class public Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter$Key;
    }
.end annotation


# static fields
.field static final REQUEST_CANCEL:Ljava/lang/String; = "request_cancel"

.field static final REQUEST_SYNC:Ljava/lang/String; = "request_sync"

.field static final SCLOUD_SYNC_URI:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "SCloud-SyncAdapter"


# instance fields
.field private isCanceled:Z

.field private isInProgress:Z

.field private mSyncMeta:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.scloud.sync.vendor"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    iput-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    iput-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    const-string v0, "SCloud-SyncAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SyncAdapter initialized : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_meta"

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 22

    const-string v15, "SCloud-SyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onPerformSync - started, S-Cloud Sync Library ver : 3.0, pkg : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x1

    :try_start_0
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v16, "SCloud-SyncAdapter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onPerformSync bundle - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/scloud/oem/lib/LOG;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_1
    const-string v15, "SCloud-SyncAdapter"

    const-string v16, "error on sync.. "

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/samsung/android/scloud/oem/lib/LOG;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x1

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v15, "SCloud-SyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onPerformSync - finished. proc : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", cancel : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", hasError : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v15

    invoke-virtual {v15}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "last_sync_time_"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-interface {v0, v15, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v17, "SCloud-SyncAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onPerformSync - started. item : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", lastSyncTime : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v17, "name"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "account_name"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "sync_result"

    move-object/from16 v0, p5

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v15, "last_sync_time"

    invoke-virtual {v6, v15, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v17, "data_version"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getDataVersion(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, v17

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v15, "content_uri"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getSupportSyncUri()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "contents_id"

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getContentsId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    sget-object v17, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    const-string v18, "request_sync"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v15, v0, v1, v2, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9

    const-string v15, "last_sync_time"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v15, "sync_result"

    invoke-virtual {v9, v15}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/SyncResult;

    const-wide/16 v18, 0x0

    cmp-long v15, v12, v18

    if-lez v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->mSyncMeta:Landroid/content/SharedPreferences;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "last_sync_time_"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-interface {v0, v15, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v15

    invoke-interface {v15}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->databaseError:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->databaseError:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->databaseError:Z

    move-object/from16 v0, p5

    iget-wide v0, v0, Landroid/content/SyncResult;->delayUntil:J

    move-wide/from16 v18, v0

    iget-wide v0, v14, Landroid/content/SyncResult;->delayUntil:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p5

    iput-wide v0, v2, Landroid/content/SyncResult;->delayUntil:J

    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->fullSyncRequested:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->fullSyncRequested:Z

    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->moreRecordsToGet:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->moreRecordsToGet:Z

    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->partialSyncUnavailable:Z

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numAuthExceptions:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numAuthExceptions:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numConflictDetectedExceptions:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numDeletes:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numDeletes:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numEntries:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numEntries:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numEntries:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numInserts:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numInserts:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numInserts:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numIoExceptions:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numIoExceptions:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numParseExceptions:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numParseExceptions:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numSkippedEntries:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numSkippedEntries:J

    move-object/from16 v0, p5

    iget-object v15, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v0, v15, Landroid/content/SyncStats;->numUpdates:J

    move-wide/from16 v18, v0

    iget-object v0, v14, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Landroid/content/SyncStats;->numUpdates:J

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    iput-wide v0, v15, Landroid/content/SyncStats;->numUpdates:J

    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->tooManyDeletions:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->tooManyDeletions:Z

    move-object/from16 v0, p5

    iget-boolean v15, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    iget-boolean v0, v14, Landroid/content/SyncResult;->tooManyRetries:Z

    move/from16 v17, v0

    and-int v15, v15, v17

    move-object/from16 v0, p5

    iput-boolean v15, v0, Landroid/content/SyncResult;->tooManyRetries:Z

    const-string v17, "SCloud-SyncAdapter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onPerformSync - finished. item : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v18, ", nextLastSyncTime : "

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v17

    invoke-static {v0, v15}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v15

    if-eqz v15, :cond_5

    const-string v15, "SCloud-SyncAdapter"

    const-string v16, "sync result has error. skip other sync item."

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    :goto_2
    const-string v15, "SCloud-SyncAdapter"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "onPerformSync - finished. proc : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", cancel : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", hasError : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v15, :cond_0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    goto/16 :goto_1

    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    if-eqz v15, :cond_2

    const-string v15, "SCloud-SyncAdapter"

    const-string v16, "sync canceled. skip other sync item."

    invoke-static/range {v15 .. v16}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v15

    const-string v16, "SCloud-SyncAdapter"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "onPerformSync - finished. proc : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", cancel : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", hasError : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p5 .. p5}, Landroid/content/SyncResult;->hasError()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    :cond_6
    throw v15
.end method

.method public onSyncCanceled()V
    .locals 8

    invoke-super {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    const-string v3, "SCloud-SyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSyncCanceled - started. proc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cancel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getClientMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    const-string v5, "SCloud-SyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSyncCanceled - started. item : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v5, "name"

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "content_uri"

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/scloud/oem/lib/sync/SyncClientHelper;->getSupportSyncUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->SCLOUD_SYNC_URI:Landroid/net/Uri;

    const-string v6, "request_cancel"

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const-string v5, "SCloud-SyncAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSyncCanceled - finished. item : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "SCloud-SyncAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSyncCanceled - finished. proc : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isInProgress:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cancel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/scloud/oem/lib/sync/SyncAdapter;->isCanceled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/scloud/oem/lib/LOG;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
