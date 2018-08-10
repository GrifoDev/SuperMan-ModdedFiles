.class public Lcom/android/settings/search2/SavedQueryLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "SavedQueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/AsyncLoader",
        "<",
        "Ljava/util/List",
        "<+",
        "Lcom/android/settings/search2/SearchResult;",
        ">;>;"
    }
.end annotation


# static fields
.field static final MAX_PROPOSED_SUGGESTIONS:I = 0x5
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation
.end field


# instance fields
.field private final mDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SavedQueryLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private convertCursorToResult(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/settings/search2/SavedQueryPayload;

    const-string/jumbo v2, "query"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/search2/SavedQueryPayload;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/android/settings/search2/SearchResult$Builder;

    invoke-direct {v2}, Lcom/android/settings/search2/SearchResult$Builder;-><init>()V

    iget-object v3, v0, Lcom/android/settings/search2/SavedQueryPayload;->query:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/search2/SearchResult$Builder;->addTitle(Ljava/lang/CharSequence;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/search2/SearchResult$Builder;->addPayload(Lcom/android/settings/search2/ResultPayload;)Lcom/android/settings/search2/SearchResult$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/search2/SearchResult$Builder;->build()Lcom/android/settings/search2/SearchResult;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/search2/SavedQueryLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryLoader;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "saved_queries"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "query"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v7, "rowId DESC"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/settings/search2/SavedQueryLoader;->convertCursorToResult(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/SavedQueryLoader;->onDiscardResult(Ljava/util/List;)V

    return-void
.end method

.method protected onDiscardResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
