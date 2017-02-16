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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    .line 19
    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/cmdm/control/database/IDBStrategy;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/cmdm/control/database/DBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    .line 27
    return-void
.end method


# virtual methods
.method public beginTransaction()V
    .locals 1

    .prologue
    .line 287
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    .line 288
    return-void
.end method

.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 241
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/cmdm/control/database/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public endTransaction()V
    .locals 1

    .prologue
    .line 295
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 296
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
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    const/4 v8, 0x0

    .line 141
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 143
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 144
    if-eqz v6, :cond_5

    .line 145
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
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

    .line 154
    :goto_1
    if-eqz v6, :cond_0

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    const/4 v6, 0x0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 160
    :goto_2
    return-object v0

    .line 147
    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 148
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 152
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    if-eqz v6, :cond_2

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    const/4 v6, 0x0

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_2

    .line 153
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 154
    if-eqz v6, :cond_3

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 156
    const/4 v6, 0x0

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 159
    throw v0

    .line 151
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v7

    move-object v0, v8

    goto :goto_3

    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1

    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method public getEntityById(I)Ljava/lang/Object;
    .locals 11
    .param p1, "ID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    const/4 v8, 0x0

    .line 171
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 173
    .local v6, "cursor":Landroid/database/Cursor;
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

    .line 174
    const/4 v5, 0x0

    .line 173
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 175
    if-eqz v6, :cond_5

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
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

    .line 185
    :goto_1
    if-eqz v6, :cond_0

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v6, 0x0

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 191
    :goto_2
    return-object v0

    .line 178
    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 179
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 183
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 185
    if-eqz v6, :cond_2

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v6, 0x0

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_2

    .line 184
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 185
    if-eqz v6, :cond_3

    .line 186
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 187
    const/4 v6, 0x0

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 190
    throw v0

    .line 182
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catch_1
    move-exception v7

    move-object v0, v8

    goto :goto_3

    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catch_2
    move-exception v7

    move-object v0, v8

    goto :goto_3

    :cond_4
    move-object v0, v8

    goto :goto_1

    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :cond_5
    move-object v0, v8

    goto :goto_1
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
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

    .prologue
    .line 30
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/database/IDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
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

    .prologue
    .line 35
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v6, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    .line 38
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 40
    if-eqz v7, :cond_0

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 42
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    :cond_0
    if-eqz v7, :cond_1

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 51
    const/4 v7, 0x0

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 55
    return-object v6

    .line 43
    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    .line 44
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 49
    if-eqz v7, :cond_3

    .line 50
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 51
    const/4 v7, 0x0

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 54
    throw v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
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

    .prologue
    .line 85
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v8, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v9, 0x0

    .line 88
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 89
    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    .line 88
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/database/DBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 90
    if-eqz v9, :cond_0

    .line 91
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 92
    :goto_0
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    :cond_0
    if-eqz v9, :cond_1

    .line 100
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v9, 0x0

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 105
    return-object v8

    .line 93
    :cond_2
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v10

    .line 94
    .local v10, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 98
    .end local v10    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 99
    if-eqz v9, :cond_3

    .line 100
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 101
    const/4 v9, 0x0

    .line 103
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 104
    throw v0
.end method

.method public getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
    .param p4, "groupBy"    # Ljava/lang/String;
    .param p5, "limit"    # Ljava/lang/String;
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

    .prologue
    .line 110
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v9, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v10, 0x0

    .line 113
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    .line 114
    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p4

    move-object v7, p3

    move-object/from16 v8, p5

    .line 113
    invoke-virtual/range {v0 .. v8}, Lcom/cmdm/control/database/DBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 115
    if-eqz v10, :cond_0

    .line 116
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 117
    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_0
    if-eqz v10, :cond_1

    .line 125
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v10, 0x0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 130
    return-object v9

    .line 118
    :cond_2
    :try_start_1
    invoke-virtual {p0, v10}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v11

    .line 119
    .local v11, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    .end local v11    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 124
    if-eqz v10, :cond_3

    .line 125
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 126
    const/4 v10, 0x0

    .line 128
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 129
    throw v0
.end method

.method public getListByQuery(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
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

    .prologue
    .line 206
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v0, "T_List":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4, p1, p2}, Lcom/cmdm/control/database/DBHelper;->queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 209
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 210
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    :cond_0
    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v1, 0x0

    .line 224
    :cond_1
    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 226
    :goto_1
    return-object v0

    .line 212
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/IDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    .line 213
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 217
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    if-eqz v1, :cond_3

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v1, 0x0

    .line 224
    :cond_3
    iget-object v4, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/DBHelper;->close()V

    goto :goto_1

    .line 219
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 220
    if-eqz v1, :cond_4

    .line 221
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 222
    const/4 v1, 0x0

    .line 224
    :cond_4
    iget-object v5, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v5}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 225
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
    .param p1, "select"    # Ljava/lang/String;
    .param p2, "selectStrings"    # [Ljava/lang/String;
    .param p3, "orderBy"    # Ljava/lang/String;
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

    .prologue
    .line 60
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v6, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    .line 63
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 65
    if-eqz v7, :cond_0

    .line 66
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 67
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    :cond_0
    if-eqz v7, :cond_1

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v7, 0x0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 80
    return-object v6

    .line 68
    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/IDBStrategy;->getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    .line 69
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 74
    if-eqz v7, :cond_3

    .line 75
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 76
    const/4 v7, 0x0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/DBHelper;->close()V

    .line 79
    throw v0
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 252
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
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

    .prologue
    .line 258
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    .local p1, "datas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->beginTransaction()V

    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, "success":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V

    .line 264
    iget-object v2, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v2}, Lcom/cmdm/control/database/DBHelper;->endTransaction()V

    .line 265
    return v1

    .line 260
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Object;

    .line 261
    .local v0, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v0}, Lcom/cmdm/control/database/IDBStrategy;->insert(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public setTransactionSuccessful()V
    .locals 1

    .prologue
    .line 291
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/DBHelper;->setTransactionSuccessful()V

    .line 292
    return-void
.end method

.method protected update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 278
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/DBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected updateShrotnum(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 283
    .local p0, "this":Lcom/cmdm/control/database/IDBStrategy;, "Lcom/cmdm/control/database/IDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/DBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
