.class public abstract Lcom/cmdm/control/database/ISettingDBStrategy;
.super Ljava/lang/Object;


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

.field public db:Lcom/cmdm/control/database/SettingDBHelper;

.field public mContext:Landroid/content/Context;

.field protected tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    iput-object p1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/database/SettingDBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/SettingDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/cmdm/control/database/SettingDBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    :goto_2
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v6

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto :goto_1
.end method

.method public getEntityById(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    const-string v3, "ID = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    :goto_2
    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v6, v2

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    move-object v0, v6

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_4
    move-object v0, v6

    goto :goto_1

    :cond_5
    move-object v0, v6

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

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
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

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    return-object v7

    :cond_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
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

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/database/SettingDBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    return-object v9

    :cond_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_1
.end method

.method public getListByQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 3
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

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/SettingDBHelper;->queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    :goto_1
    return-object v1

    :cond_2
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0
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
    .locals 8
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

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    return-object v7

    :cond_2
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_1
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0, p1, p2}, Lcom/cmdm/control/database/SettingDBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

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

.method protected update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/SettingDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
