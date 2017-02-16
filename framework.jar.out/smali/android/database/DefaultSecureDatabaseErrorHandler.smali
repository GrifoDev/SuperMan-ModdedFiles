.class public final Landroid/database/DefaultSecureDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "DefaultSecureDatabaseErrorHandler.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultSecureDatabaseErrorHandler"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private isHandling:Z

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0xb

    const/16 v1, 0x1a

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ".corrupt"

    aput-object v1, v0, v3

    const-string/jumbo v1, ".back"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ".unknown"

    iput-object v0, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    .line 56
    iput-boolean v3, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 46
    return-void
.end method

.method private backCorruption(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v2, ":memory:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 60
    :cond_0
    const-string/jumbo v2, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v3, "!@ Corruption in memory DB"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    return-void

    .line 64
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string/jumbo v2, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v3, "!@ DB Corruption has happened before this"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 68
    const-string/jumbo v2, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v3, "!@ File delete failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->renameDatabaseFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .end local v1    # "file":Ljava/io/File;
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e2":Ljava/lang/Exception;
    const-string/jumbo v2, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v3, "!@ openDatabase - Exception during copying and renaming"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 22
    .param p1, "dbObj"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 86
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "Database corruption is already handling."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 90
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 91
    .local v15, "path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getCorruptCode()I

    move-result v9

    .line 92
    .local v9, "err_code":I
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

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

    .line 94
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_num:[I

    move-object/from16 v19, v0

    aget v19, v19, v10

    move/from16 v0, v19

    if-ne v0, v9, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/DefaultSecureDatabaseErrorHandler;->err_msg:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v10

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->suffix:Ljava/lang/String;

    .line 94
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v19

    if-nez v19, :cond_3

    .line 108
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ dbObj has been closed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V

    .line 110
    return-void

    .line 114
    :cond_3
    const/16 v19, 0x1

    :try_start_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 115
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(Z)V

    .line 117
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 118
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Integrity Check for corrupted DB file gets OK as result"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 122
    return-void

    .line 124
    :cond_4
    const/4 v8, 0x0

    .line 125
    .local v8, "errInfo":Ljava/lang/String;
    const/4 v11, 0x0

    .line 126
    .local v11, "indexName":Ljava/lang/String;
    const/16 v16, -0x1

    .line 127
    .local v16, "pos1":I
    const/16 v17, -0x1

    .line 128
    .local v17, "pos2":I
    const/16 v18, -0x1

    .line 129
    .local v18, "pos3":I
    const/4 v2, 0x0

    .line 131
    .local v2, "VacuumTried":Z
    const/4 v4, 0x0

    .line 132
    .local v4, "dropCacheTried":Z
    :try_start_1
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Integrity Check failed for corrupted DB file"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v8    # "errInfo":Ljava/lang/String;
    .end local v11    # "indexName":Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 136
    .local v12, "needContinue":Z
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getIntegrityErrorInfo()Ljava/lang/String;

    move-result-object v8

    .line 137
    .local v8, "errInfo":Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 138
    const-string/jumbo v19, " index "

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 139
    const-string/jumbo v19, " is never used"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 140
    const-string/jumbo v19, "freelist leaf count too big on page"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    .line 141
    if-gtz v17, :cond_6

    if-ltz v18, :cond_7

    :cond_6
    if-eqz v2, :cond_8

    .line 149
    :cond_7
    if-lez v16, :cond_9

    .line 156
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

    .line 157
    .local v11, "indexName":Ljava/lang/String;
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

    .line 158
    const/4 v12, 0x1

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    if-eqz v19, :cond_9

    .line 188
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 160
    return-void

    .line 142
    .end local v11    # "indexName":Ljava/lang/String;
    :cond_8
    :try_start_2
    const-string/jumbo v19, "VACUUM;"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const/4 v2, 0x1

    .line 144
    const/4 v12, 0x1

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v19

    if-eqz v19, :cond_7

    .line 188
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 146
    return-void

    .line 164
    :cond_9
    if-nez v12, :cond_a

    if-eqz v4, :cond_c

    .line 183
    :cond_a
    if-nez v12, :cond_5

    .line 188
    .end local v2    # "VacuumTried":Z
    .end local v4    # "dropCacheTried":Z
    .end local v8    # "errInfo":Ljava/lang/String;
    .end local v12    # "needContinue":Z
    .end local v16    # "pos1":I
    .end local v17    # "pos2":I
    .end local v18    # "pos3":I
    :goto_1
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v19, 0x1

    :try_start_3
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 197
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    .line 202
    .end local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_2
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteClosable;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 207
    :goto_3
    if-eqz v3, :cond_e

    .line 208
    :try_start_6
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "p$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    .line 209
    .local v13, "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v20, "DefaultSecureDatabaseErrorHandler"

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

    .line 210
    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 218
    .end local v13    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v14    # "p$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 221
    :cond_b
    :goto_5
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 84
    return-void

    .line 165
    .restart local v2    # "VacuumTried":Z
    .restart local v4    # "dropCacheTried":Z
    .restart local v8    # "errInfo":Ljava/lang/String;
    .restart local v12    # "needContinue":Z
    .restart local v16    # "pos1":I
    .restart local v17    # "pos2":I
    .restart local v18    # "pos3":I
    :cond_c
    :try_start_7
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Dropping db/fs cache in corruption handling."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v19, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->closeAndDiscardNonPrimaryConnections(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 168
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v19

    if-eqz v19, :cond_d

    .line 169
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ End transaction before dropping db/fs cache"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 176
    :cond_d
    :goto_6
    :try_start_9
    const-string/jumbo v19, "PRAGMA drop_db_fs_cache;"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const/4 v12, 0x1

    .line 178
    const/4 v4, 0x1

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteDatabase;->isDatabaseIntegrityOk()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v19

    if-eqz v19, :cond_a

    .line 188
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 180
    return-void

    .line 172
    :catch_1
    move-exception v6

    .line 173
    .local v6, "e1":Ljava/lang/Exception;
    :try_start_a
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ End transaction failed, go on ..."

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 185
    .end local v2    # "VacuumTried":Z
    .end local v4    # "dropCacheTried":Z
    .end local v6    # "e1":Ljava/lang/Exception;
    .end local v8    # "errInfo":Ljava/lang/String;
    .end local v12    # "needContinue":Z
    .end local v16    # "pos1":I
    .end local v17    # "pos2":I
    .end local v18    # "pos3":I
    :catch_2
    move-exception v7

    .local v7, "e3":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 187
    .end local v7    # "e3":Ljava/lang/Exception;
    :catchall_0
    move-exception v19

    .line 188
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 187
    throw v19

    .line 198
    .restart local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catch_3
    move-exception v5

    .local v5, "e":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_2

    .line 203
    .end local v3    # "attachedDbs":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v5

    .restart local v5    # "e":Landroid/database/sqlite/SQLiteException;
    goto/16 :goto_3

    .line 215
    .end local v5    # "e":Landroid/database/sqlite/SQLiteException;
    :cond_e
    :try_start_b
    const-string/jumbo v19, "DefaultSecureDatabaseErrorHandler"

    const-string/jumbo v20, "!@ Failed to get attachedDbs"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/database/DefaultSecureDatabaseErrorHandler;->backCorruption(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    .line 220
    :catchall_1
    move-exception v19

    .line 221
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/database/DefaultSecureDatabaseErrorHandler;->isHandling:Z

    .line 220
    throw v19
.end method
