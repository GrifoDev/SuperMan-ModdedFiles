.class public final Landroid/database/DefaultDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultDatabaseErrorHandler"


# instance fields
.field private mDeleteDatabaseIfCorrupted:Z

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ".corrupt"

    iput-object v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->suffix:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

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

.method private deleteMarkFile(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mark"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mark2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v21

    const/16 v22, 0x20b

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    const/4 v13, 0x1

    :goto_0
    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "!@ Corruption reported by sqlite ("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, ") on database: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v21

    if-nez v21, :cond_2

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ dbObj has been closed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "This application uses own corruption handler."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :try_start_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".mark"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v11, Ljava/io/File;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ".mark2"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_4

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ corruption reported twice before..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "This application uses own corruption handler."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_5

    invoke-virtual {v10, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ corruption reported once before..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Make .mark file to indicate Integrity is Ok"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/4 v3, 0x0

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Integrity Check failed for corrupted DB file"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getIntegrityErrorInfo()Ljava/lang/String;

    move-result-object v8

    if-nez v12, :cond_8

    xor-int/lit8 v21, v3, 0x1

    if-eqz v21, :cond_8

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Dropping cache in corruption handling."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v21

    if-eqz v21, :cond_7

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ End transaction before dropping cache"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_7
    :goto_4
    :try_start_3
    const-string/jumbo v21, "PRAGMA drop_db_fs_cache;"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->reOpen()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    const/4 v3, 0x1

    const/4 v12, 0x1

    :try_start_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v21

    if-eqz v21, :cond_8

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Integrity Check gets OK as result after dropping cache/reopen"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v5

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ End transaction failed, go on ..."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    :catch_1
    move-exception v7

    goto/16 :goto_2

    :catch_2
    move-exception v6

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "Failed to re-open connection."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    if-nez v12, :cond_b

    if-eqz v8, :cond_b

    const-string/jumbo v21, " index "

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v21, " is never used"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v21, "freelist leaf count too big on page"

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v19

    if-gtz v18, :cond_9

    if-ltz v19, :cond_a

    :cond_9
    xor-int/lit8 v21, v20, 0x1

    if-eqz v21, :cond_a

    const-string/jumbo v21, "VACUUM;"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/16 v20, 0x1

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v21

    if-eqz v21, :cond_a

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Integrity Check gets OK as result after Vacuuming"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V

    return-void

    :cond_a
    if-lez v17, :cond_b

    add-int/lit8 v21, v17, 0x7

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, " "

    const-string/jumbo v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "REINDEX "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, ";"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk(Z)Z

    move-result v21

    if-eqz v21, :cond_b

    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Integrity Check gets OK as result after Reindexing"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->deleteMarkFile(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :cond_b
    if-eqz v12, :cond_3

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_4

    move-result-object v2

    :goto_6
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    if-eqz v2, :cond_e

    :try_start_8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    const-string/jumbo v22, "DefaultDatabaseErrorHandler"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "!@ Back up corrupted DB File : "

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    goto :goto_8

    :catch_3
    move-exception v4

    :cond_d
    :goto_9
    return-void

    :catch_4
    move-exception v4

    goto :goto_6

    :catch_5
    move-exception v4

    goto :goto_7

    :cond_e
    const-string/jumbo v21, "DefaultDatabaseErrorHandler"

    const-string/jumbo v22, "!@ Failed to get attachedDbs"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/database/DefaultDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9
.end method

.method public setDeleteDatabaseIfCorrupted(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/database/DefaultDatabaseErrorHandler;->mDeleteDatabaseIfCorrupted:Z

    return-void
.end method
