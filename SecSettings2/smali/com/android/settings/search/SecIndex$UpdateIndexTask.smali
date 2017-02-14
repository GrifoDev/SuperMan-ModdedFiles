.class Lcom/android/settings/search/SecIndex$UpdateIndexTask;
.super Landroid/os/AsyncTask;
.source "SecIndex.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/SecIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateIndexTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/SecIndex;


# direct methods
.method private constructor <init>(Lcom/android/settings/search/SecIndex;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/search/SecIndex;Lcom/android/settings/search/SecIndex$UpdateIndexTask;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/SecIndex$UpdateIndexTask;-><init>(Lcom/android/settings/search/SecIndex;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13

    const/4 v12, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v5}, Lcom/android/settings/search/SecIndex;->-wrap0(Lcom/android/settings/search/SecIndex;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v5, "Index"

    const-string/jumbo v8, "Cannot update Index as I cannot get a writable database"

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v12

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v5}, Lcom/android/settings/search/SecIndex;->-get3(Lcom/android/settings/search/SecIndex;)Lcom/android/settings/search/SecMenutree;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/search/SecMenutree;->clear()V

    iget-object v5, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v5}, Lcom/android/settings/search/SecIndex;->-get3(Lcom/android/settings/search/SecIndex;)Lcom/android/settings/search/SecMenutree;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v8}, Lcom/android/settings/search/SecIndex;->-get2(Lcom/android/settings/search/SecIndex;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v9}, Lcom/android/settings/search/SecIndex;->-get1(Lcom/android/settings/search/SecIndex;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/android/settings/search/SecMenutree;->initMainMenues(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string/jumbo v5, "prefs_index"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v5, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v5, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v5}, Lcom/android/settings/search/SecIndex;->-get3(Lcom/android/settings/search/SecIndex;)Lcom/android/settings/search/SecMenutree;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v8}, Lcom/android/settings/search/SecIndex;->-get2(Lcom/android/settings/search/SecIndex;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8, v2, v4}, Lcom/android/settings/search/SecMenutree;->saveSearchItems(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    iget-object v5, p0, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->this$0:Lcom/android/settings/search/SecIndex;

    invoke-static {v5}, Lcom/android/settings/search/SecIndex;->-get2(Lcom/android/settings/search/SecIndex;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/settings/search/IndexDatabaseHelper;->setLocaleIndexed(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v5, "Index"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Indexing locale \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\' took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-long v10, v6, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " millis"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v12

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "Index"

    const-string/jumbo v8, "Unable to index search, out of space"

    invoke-static {v5, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/search/SecIndex$UpdateIndexTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
