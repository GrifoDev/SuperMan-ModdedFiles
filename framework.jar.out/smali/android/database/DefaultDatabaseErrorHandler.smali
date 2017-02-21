.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private mDeleteDatabaseIfCorrupted:Z

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".corrupt"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, ".back"

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    const-string/jumbo v0, ".unknown"

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    iput-boolean v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method

.method private backCorruption(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "DefaultDatabaseErrorHandler"

    const-string/jumbo v3, "!@ Corruption in memory DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "DefaultDatabaseErrorHandler"

    const-string/jumbo v3, "!@ DB Corruption has happened before this"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "DefaultDatabaseErrorHandler"

    const-string/jumbo v3, "!@ File delete failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DefaultDatabaseErrorHandler"

    const-string/jumbo v3, "!@ openDatabase - Exception during copying and renaming"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v9

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Corruption reported by sqlite ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ") on database: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_num:[I

    move-object/from16 v19, v0

    aget v19, v19, v10

    move/from16 v0, v19

    if-ne v0, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ dbObj has been closed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "This application uses own corruption handler."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/16 v19, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v19

    if-eqz v19, :cond_4

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Integrity Check failed for corrupted DB file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getIntegrityErrorInfo()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    const-string/jumbo v19, " index "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    const-string/jumbo v19, " is never used"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v19, "freelist leaf count too big on page"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    if-gtz v17, :cond_6

    if-ltz v18, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    if-lez v16, :cond_9

    add-int/lit8 v19, v16, 0x7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, " "

    const-string/jumbo v21, ""

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "REINDEX "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ";"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v19

    if-eqz v19, :cond_9

    return-void

    :cond_8
    const-string/jumbo v19, "VACUUM;"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v12, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    if-eqz v19, :cond_7

    return-void

    :cond_9
    if-nez v12, :cond_a

    if-eqz v4, :cond_b

    :cond_a
    if-nez v12, :cond_5

    :goto_2
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    move/from16 v19, v0

    if-nez v19, :cond_d

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "This application uses own corruption handler."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    :try_start_1
    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Dropping db/fs cache in corruption handling."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v19

    if-eqz v19, :cond_c

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ End transaction before dropping db/fs cache"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_c
    :goto_3
    :try_start_3
    const-string/jumbo v19, "PRAGMA drop_db_fs_cache;"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v12, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v19

    if-eqz v19, :cond_a

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ End transaction failed, go on ..."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v7

    goto :goto_2

    :cond_d
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v3

    :goto_4
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_5
    if-eqz v3, :cond_f

    :try_start_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    const-string/jumbo v20, "DefaultDatabaseErrorHandler"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "!@ Back up corrupted DB File : "

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    goto :goto_6

    :catch_2
    move-exception v5

    :cond_e
    :goto_7
    return-void

    :catch_3
    move-exception v5

    goto :goto_4

    :catch_4
    move-exception v5

    goto :goto_5

    :cond_f
    const-string/jumbo v19, "DefaultDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Failed to get attachedDbs"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_7
.end method

.method public setDeleteDatabaseIfCorrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method
