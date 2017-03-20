.class public abstract Lcom/cmdm/control/database/ISettingDBStrategy;
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

.field public db:Lcom/cmdm/control/database/SettingDBHelper;

.field public mContext:Landroid/content/Context;

.field protected tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    .line 17
    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    .line 23
    iput-object p1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->mContext:Landroid/content/Context;

    .line 24
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cmdm/control/database/SettingDBHelper;->getInstance(Landroid/content/Context;)Lcom/cmdm/control/database/SettingDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    .line 25
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "whereClause"    # Ljava/lang/String;
    .param p2, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 214
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
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
    .line 113
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    const/4 v8, 0x0

    .line 114
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 116
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 117
    if-eqz v6, :cond_5

    .line 118
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
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

    .line 127
    :goto_1
    if-eqz v6, :cond_0

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    const/4 v6, 0x0

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 133
    :goto_2
    return-object v0

    .line 120
    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 121
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 125
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    const/4 v6, 0x0

    .line 131
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_2

    .line 126
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 127
    if-eqz v6, :cond_3

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 129
    const/4 v6, 0x0

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 132
    throw v0

    .line 124
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
    .line 143
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    const/4 v8, 0x0

    .line 144
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 146
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

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

    .line 147
    const/4 v5, 0x0

    .line 146
    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 148
    if-eqz v6, :cond_5

    .line 149
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
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

    .line 158
    :goto_1
    if-eqz v6, :cond_0

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v6, 0x0

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 164
    :goto_2
    return-object v0

    .line 151
    :cond_1
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 152
    .restart local v8    # "entity":Ljava/lang/Object;, "TT;"
    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v7

    move-object v0, v8

    .line 156
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    .local v7, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    if-eqz v6, :cond_2

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v6, 0x0

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_2

    .line 157
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 158
    if-eqz v6, :cond_3

    .line 159
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 160
    const/4 v6, 0x0

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 163
    throw v0

    .line 155
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
    .line 28
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/cmdm/control/database/ISettingDBStrategy;->getListByFilter(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

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
    .line 33
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v6, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    .line 36
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 40
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    :cond_0
    if-eqz v7, :cond_1

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v7, 0x0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 53
    return-object v6

    .line 41
    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    .line 42
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 46
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 47
    if-eqz v7, :cond_3

    .line 48
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 49
    const/4 v7, 0x0

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 52
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
    .line 83
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v8, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v9, 0x0

    .line 86
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    .line 87
    const/4 v6, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v7, p3

    .line 86
    invoke-virtual/range {v0 .. v7}, Lcom/cmdm/control/database/SettingDBHelper;->query([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    if-eqz v9, :cond_0

    .line 89
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 90
    :goto_0
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    :cond_0
    if-eqz v9, :cond_1

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 99
    const/4 v9, 0x0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 103
    return-object v8

    .line 91
    :cond_2
    :try_start_1
    invoke-virtual {p0, v9}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v10

    .line 92
    .local v10, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 96
    .end local v10    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 97
    if-eqz v9, :cond_3

    .line 98
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 99
    const/4 v9, 0x0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 102
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
    .line 179
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v0, "T_List":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v4, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v4, p1, p2}, Lcom/cmdm/control/database/SettingDBHelper;->queryBySql(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 182
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_0

    .line 183
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    .line 193
    :cond_0
    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v1, 0x0

    .line 197
    :cond_1
    iget-object v4, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 199
    :goto_1
    return-object v0

    .line 185
    :cond_2
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/cmdm/control/database/ISettingDBStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v3

    .line 186
    .local v3, "entity":Ljava/lang/Object;, "TT;"
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 190
    .end local v3    # "entity":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    if-eqz v1, :cond_3

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v1, 0x0

    .line 197
    :cond_3
    iget-object v4, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v4}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    goto :goto_1

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 193
    if-eqz v1, :cond_4

    .line 194
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 195
    const/4 v1, 0x0

    .line 197
    :cond_4
    iget-object v5, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v5}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 198
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
    .line 58
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v6, "T_List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const/4 v7, 0x0

    .line 61
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->columns:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/cmdm/control/database/SettingDBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 63
    if-eqz v7, :cond_0

    .line 64
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    :cond_0
    if-eqz v7, :cond_1

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    const/4 v7, 0x0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v0}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 78
    return-object v6

    .line 66
    :cond_2
    :try_start_1
    invoke-virtual {p0, v7}, Lcom/cmdm/control/database/ISettingDBStrategy;->getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v8

    .line 67
    .local v8, "entity":Ljava/lang/Object;, "TT;"
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    .end local v8    # "entity":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v0

    .line 72
    if-eqz v7, :cond_3

    .line 73
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    const/4 v7, 0x0

    .line 76
    :cond_3
    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    invoke-virtual {v1}, Lcom/cmdm/control/database/SettingDBHelper;->close()V

    .line 77
    throw v0
.end method

.method public insert(Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 2
    .param p1, "cv"    # Landroid/content/ContentValues;
    .param p2, "tableName"    # Ljava/lang/String;

    .prologue
    .line 225
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
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
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "whereClause"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 240
    .local p0, "this":Lcom/cmdm/control/database/ISettingDBStrategy;, "Lcom/cmdm/control/database/ISettingDBStrategy<TT;>;"
    iget-object v0, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->db:Lcom/cmdm/control/database/SettingDBHelper;

    iget-object v1, p0, Lcom/cmdm/control/database/ISettingDBStrategy;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/cmdm/control/database/SettingDBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
