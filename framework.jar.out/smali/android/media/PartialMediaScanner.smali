.class public Landroid/media/PartialMediaScanner;
.super Landroid/media/MediaScanner;
.source "PartialMediaScanner.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PartialMediaScanner"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "external"

    invoke-direct {p0, p1, v0}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private postscan([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/media/PartialMediaScanner;->processPlayLists()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Landroid/media/PartialMediaScanner;->mTotalDeadThumbnailTime:J

    iget-object v2, p0, Landroid/media/PartialMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v4, p0, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private prescan(Ljava/lang/String;)V
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v24, 0x0

    const/16 v35, 0x0

    const/4 v6, 0x0

    const-string/jumbo v35, "_id>? AND _data>= ? AND _data < ?"

    const/4 v2, 0x3

    new-array v6, v2, [Ljava/lang/String;

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    aput-object v2, v6, v4

    const/4 v2, 0x1

    aput-object p1, v6, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v6, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/PartialMediaScanner;->mIsFileCacheFull:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mFilesUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v22

    const-string/jumbo v2, "deletedata"

    const-string/jumbo v4, "false"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    new-instance v25, Landroid/media/MediaScanner$MediaBulkDeleter;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v4}, Landroid/media/MediaScanner$MediaBulkDeleter;-><init>(Landroid/content/ContentProviderClient;Landroid/net/Uri;)V

    const-wide/high16 v30, -0x8000000000000000L

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SELECT _id, _data, format, date_modified, media_type FROM files INDEXED BY path_index WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " ORDER BY _id limit 3000"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v2, "content://media/external/file/media/raw_sql"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const/16 v28, 0x0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v6, v4

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    const/16 v24, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v24

    if-nez v24, :cond_5

    :cond_2
    if-eqz v24, :cond_3

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mOriginalCount:I

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/PartialMediaScanner;->mImagesUri:Landroid/net/Uri;

    sget-object v16, Landroid/media/PartialMediaScanner;->ID_PROJECTION_COUNT:[Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v24

    if-eqz v24, :cond_4

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mOriginalCount:I

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_6
    :goto_0
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v2, 0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v2, 0x2

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    const/4 v2, 0x3

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-wide/from16 v30, v9

    if-eqz v11, :cond_6

    const-string/jumbo v2, "/"

    invoke-virtual {v11, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_6

    const/16 v27, 0x0

    :try_start_2
    sget v2, Landroid/system/OsConstants;->F_OK:I

    invoke-static {v11, v2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v27

    :goto_1
    if-nez v27, :cond_8

    :try_start_3
    invoke-static/range {v29 .. v29}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x4

    move-object/from16 v0, v24

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/4 v2, 0x4

    move/from16 v0, v32

    if-eq v0, v2, :cond_6

    packed-switch v32, :pswitch_data_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/PartialMediaScanner;->mDeleteEtcNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mDeleteEtcNum:I

    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/PartialMediaScanner;->mPrescanBulkDeleted:J

    const-wide/16 v14, 0x1

    add-long/2addr v4, v14

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/PartialMediaScanner;->mPrescanBulkDeleted:J

    move-object/from16 v0, v25

    invoke-virtual {v0, v9, v10}, Landroid/media/MediaScanner$MediaBulkDeleter;->delete(J)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v11, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "/.nomedia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v33

    :try_start_4
    sget v2, Landroid/system/OsConstants;->F_OK:I

    move-object/from16 v0, v33

    invoke-static {v0, v2}, Landroid/system/Os;->access(Ljava/lang/String;I)Z
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v27

    :goto_3
    if-eqz v27, :cond_6

    :try_start_5
    new-instance v23, Landroid/os/Bundle;

    invoke-direct/range {v23 .. v23}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "volume"

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/PartialMediaScanner;->mVolumeName:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    const-string/jumbo v4, "unhide"

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v2, v4, v0, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v24, :cond_7

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/media/MediaScanner$MediaBulkDeleter;->flush()V

    throw v2

    :pswitch_0
    :try_start_6
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/PartialMediaScanner;->mDeleteImageNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mDeleteImageNum:I

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/PartialMediaScanner;->mDeleteVideoNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mDeleteVideoNum:I

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/PartialMediaScanner;->mDeleteAudioNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/PartialMediaScanner;->mDeleteAudioNum:I

    goto :goto_2

    :cond_8
    const v2, 0x9c40

    move/from16 v0, v28

    if-ge v0, v2, :cond_9

    new-instance v8, Landroid/media/MediaScanner$FileEntry;

    invoke-direct/range {v8 .. v13}, Landroid/media/MediaScanner$FileEntry;-><init>(JLjava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/PartialMediaScanner;->mFileCache:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/media/PartialMediaScanner;->mIsFileCacheFull:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v26

    goto :goto_3

    :catch_1
    move-exception v26

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public scanDirectories([Ljava/lang/String;)V
    .locals 28

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/PartialMediaScanner;->mPlayLists:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    new-instance v5, Landroid/media/MediaInserter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/PartialMediaScanner;->mMediaProvider:Landroid/content/ContentProviderClient;

    move-object/from16 v21, v0

    const/16 v24, 0x64

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v5, v0, v1, v2}, Landroid/media/MediaInserter;-><init>(Landroid/content/ContentProviderClient;IZ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    :goto_1
    move/from16 v0, v21

    if-ge v5, v0, :cond_1

    aget-object v4, p1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/media/PartialMediaScanner;->prescan(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v14

    add-long v8, v8, v24

    const-string/jumbo v24, "PartialMediaScanner"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "processDirectory :  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {v4}, Landroid/media/PartialMediaScanner;->encodeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/media/PartialMediaScanner;->getStorageId(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/media/PartialMediaScanner;->mStorageId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/PartialMediaScanner;->mClient:Landroid/media/MediaScanner$MyMediaScannerClient;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v4, v1}, Landroid/media/PartialMediaScanner;->processDirectory(Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v18

    :try_start_1
    const-string/jumbo v5, "PartialMediaScanner"

    const-string/jumbo v21, "SQLException in MediaScanner.scan()"

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    :goto_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    return-void

    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v5}, Landroid/media/MediaInserter;->flushAll()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-virtual {v5}, Landroid/media/MediaInserter;->requestToExitAndWait()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/PartialMediaScanner;->mWaitingTimeForAllThreadForBulkInsert:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/PartialMediaScanner;->mTotalBulkInserterTime:J

    move-wide/from16 v24, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v16

    add-long v24, v24, v26

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/PartialMediaScanner;->mTotalBulkInserterTime:J

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/media/PartialMediaScanner;->mMediaInserter:Landroid/media/MediaInserter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {p0 .. p1}, Landroid/media/PartialMediaScanner;->postscan([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Landroid/media/PartialMediaScanner;->printScanResultLogs(JJJJ)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    goto :goto_2

    :catch_1
    move-exception v19

    :try_start_3
    const-string/jumbo v5, "PartialMediaScanner"

    const-string/jumbo v21, "RemoteException in MediaScanner.scan()"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    goto :goto_2

    :catch_2
    move-exception v20

    :try_start_4
    const-string/jumbo v5, "PartialMediaScanner"

    const-string/jumbo v21, "UnsupportedOperationException in MediaScanner.scan()"

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-static {v5, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual/range {p0 .. p0}, Landroid/media/PartialMediaScanner;->releaseResources()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/PartialMediaScanner;->mFileParsingStat:Ljava/util/HashMap;

    throw v5
.end method
