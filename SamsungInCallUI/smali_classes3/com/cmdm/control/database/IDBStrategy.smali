.class public abstract Lcom/cmdm/control/database/IDBStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected columns:[Ljava/lang/String;

.field public db:Lcom/cmdm/control/database/DBHelper;

.field public mContext:Landroid/content/Context;

.field protected tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/database/IDBStrategy;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/cmdm/control/database/DBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/cmdm/control/database/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    return-void
.end method

.method protected abstract getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v0, v8

    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catch_1
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :catch_2
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method public getEntityById(I)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    const-string v3, "ID = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v8

    :goto_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v0, v8

    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0

    :catch_1
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :catch_2
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1

    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    return-object v6

    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/database/DBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    return-object v8

    :cond_2
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/database/DBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    return-object v9

    :cond_2
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    const/4 v10, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
.end method

.method public getListByQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4, p1, p2}, Lcom/cmdm/control/database/DBHelper;->queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_1
    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/DBHelper;->close()V

    :goto_1
    return-object v0

    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_3
    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_1

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x0

    :cond_4
    iget-object v5, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v5}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v4
.end method

.method protected abstract getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public getSafeListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    return-object v6

    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/IDBStrategy;->getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v7, 0x0

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    throw v0
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected abstract insert(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method

.method protected insert(Ljava/util/ArrayList;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)Z"
        }
    .end annotation

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    return v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/cmdm/control/database/IDBStrategy;->insert(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V

    return-void
.end method

.method protected update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/DBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/DBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
