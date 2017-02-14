.class Lcom/android/settings/search/Index$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "Index.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/settings/search/Index$UpdateData;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/Index;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/Index;Lcom/android/settings/search/Index$UpdateIndexTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;-><init>(Lcom/android/settings/search/Index;)V

    return-void
.end method

.method private delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const-string/jumbo v2, "prefs_index"

    invoke-virtual {p1, v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/provider/SearchIndexableData;",
            ">;)Z"
        }
    .end annotation

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_3

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableData;

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v11, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "class_name"

    iget-object v12, v3, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    instance-of v11, v3, Lcom/android/settings/search/SearchIndexableRaw;

    if-eqz v11, :cond_0

    move-object v7, v3

    check-cast v7, Lcom/android/settings/search/SearchIndexableRaw;

    iget-object v11, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "data_title"

    iget-object v12, v7, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v12}, Lcom/android/settings/search/Index$UpdateIndexTask;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string/jumbo v11, "Index"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Deleting data for locale \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' took "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sub-long v14, v8, v4

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " millis"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10
.end method

.method private processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z
    .locals 18
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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)Z"
        }
    .end annotation

    if-nez p5, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v13}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/settings/search/IndexDatabaseHelper;->isLocaleAlreadyIndexed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\' is already indexed"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    return v13

    :cond_0
    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v4, :cond_2

    move-object/from16 v0, p3

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/SearchIndexableData;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-static {v13, v0, v1, v5, v2}, Lcom/android/settings/search/Index;->-wrap4(Lcom/android/settings/search/Index;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/provider/SearchIndexableData;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cannot index: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    if-eqz v5, :cond_1

    iget-object v5, v5, Landroid/provider/SearchIndexableData;->className:Ljava/lang/String;

    :cond_1
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for locale: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string/jumbo v13, "Index"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Indexing locale \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "\' took "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sub-long v16, v10, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " millis"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lcom/android/settings/search/Index$UpdateData;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;->doInBackground([Lcom/android/settings/search/Index$UpdateData;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/android/settings/search/Index$UpdateData;)Ljava/lang/Void;
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    iget-object v3, v0, Lcom/android/settings/search/Index$UpdateData;->dataToUpdate:Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v6, v0, Lcom/android/settings/search/Index$UpdateData;->dataToDelete:Ljava/util/List;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v4, v0, Lcom/android/settings/search/Index$UpdateData;->nonIndexableKeys:Ljava/util/Map;

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v5, v0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-boolean v8, v0, Lcom/android/settings/search/Index$UpdateData;->fullIndex:Z

    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-wrap0(Lcom/android/settings/search/Index;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "Index"

    const-string/jumbo v9, "Cannot update Index as I cannot get a writable database"

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v10

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v1, v2, v6}, Lcom/android/settings/search/Index$UpdateIndexTask;->processDataToDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;)Z

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/search/Index$UpdateIndexTask;->processDataToUpdate(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;Z)Z

    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-eqz v8, :cond_3

    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get1(Lcom/android/settings/search/Index;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-object v10

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "Index"

    const-string/jumbo v9, "Unable to index search, out of space"

    invoke-static {v0, v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/Index$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get3(Lcom/android/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/android/settings/search/Index$UpdateIndexTask;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get3(Lcom/android/settings/search/Index;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
