.class public Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;
.super Lcom/cmdm/control/database/IDBStrategy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cmdm/control/database/IDBStrategy",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final columns:[Ljava/lang/String;

.field private final tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/cmdm/control/database/IDBStrategy;-><init>(Landroid/content/Context;)V

    const-string v0, "search_history"

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->tableName:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "keyword"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "searchtime"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->columns:[Ljava/lang/String;

    const-string v0, "search_history"

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->tableName:Ljava/lang/String;

    iget-object v0, p0, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->columns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/cmdm/control/database/IDBStrategy;->columns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic getEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->getEntity(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getEntity(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/cmdm/control/bean/SearchHistory;

    invoke-direct {v1}, Lcom/cmdm/control/bean/SearchHistory;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "keyword"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/SearchHistory;->keyword:Ljava/lang/String;

    const-string v2, "searchtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/cmdm/control/bean/SearchHistory;->time:J

    :cond_0
    iget-object v2, v1, Lcom/cmdm/control/bean/SearchHistory;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic getSafeEntity(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->getSafeEntity(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSafeEntity(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 4

    new-instance v1, Lcom/cmdm/control/bean/SearchHistory;

    invoke-direct {v1}, Lcom/cmdm/control/bean/SearchHistory;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "keyword"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/cmdm/control/bean/SearchHistory;->keyword:Ljava/lang/String;

    const-string v2, "searchtime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/cmdm/control/bean/SearchHistory;->time:J

    :cond_0
    iget-object v2, v1, Lcom/cmdm/control/bean/SearchHistory;->keyword:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic insert(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->insert(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected insert(Ljava/lang/String;)Z
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "keyword=?"

    new-array v8, v5, [Ljava/lang/String;

    aput-object p1, v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->getEntityByFilter(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "searchtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "keyword=?"

    new-array v8, v5, [Ljava/lang/String;

    aput-object p1, v8, v6

    invoke-virtual {p0, v4, v7, v8}, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "keyword"

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "searchtime"

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/cmdm/control/database/Impl/SearchHistoryStrategy;->db:Lcom/cmdm/control/database/DBHelper;

    const-string v8, "search_history"

    invoke-virtual {v7, v0, v8}, Lcom/cmdm/control/database/DBHelper;->insert(Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gtz v7, :cond_0

    :cond_3
    move v5, v6

    goto :goto_0
.end method
