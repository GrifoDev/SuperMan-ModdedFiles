.class Lcom/android/server/enterprise/storage/EdmStorageHelper$1;
.super Ljava/lang/Object;
.source "EdmStorageHelper.java"

# interfaces
.implements Lcom/android/server/enterprise/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/storage/EdmStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/storage/EdmStorageHelper;

.field final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/storage/EdmStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->this$0:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    iput-object p2, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .locals 10

    iget-object v4, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap5(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap3(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap4(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap1(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v5, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageHelper;->-wrap2(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/storage/Column;

    iget-object v5, p0, Lcom/android/server/enterprise/storage/EdmStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v6, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v0}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string/jumbo v5, "EdmStorageHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Table "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " creation/update EX:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string/jumbo v5, "EdmStorageHelper"

    const-string/jumbo v6, "onTableFound Altered Table %s with Columns %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
