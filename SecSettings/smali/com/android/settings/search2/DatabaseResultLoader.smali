.class public Lcom/android/settings/search2/DatabaseResultLoader;
.super Lcom/android/settings/utils/AsyncLoader;
.source "DatabaseResultLoader.java"


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
.field public static final BASE_RANKS:[I

.field public static final MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

.field public static final MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

.field public static final MATCH_COLUMNS_TERTIARY:[Ljava/lang/String;

.field public static final SELECT_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mConverter:Lcom/android/settings/search2/CursorToSearchResultConverter;

.field private final mQueryText:Ljava/lang/String;

.field private final mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "docid"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v5

    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v6

    const-string/jumbo v1, "class_name"

    aput-object v1, v0, v7

    const-string/jumbo v1, "screen_title"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "icon"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "intent_action"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "intent_target_package"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "intent_target_class"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "data_key_reference"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "payload_type"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "payload"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "data_title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data_title_normalized"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "data_summary_on"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data_summary_on_normalized"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data_summary_off"

    aput-object v1, v0, v5

    const-string/jumbo v1, "data_summary_off_normalized"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "data_keywords"

    aput-object v1, v0, v4

    const-string/jumbo v1, "data_entries"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_TERTIARY:[Ljava/lang/String;

    const/4 v0, 0x7

    const/16 v1, 0x9

    filled-new-array {v3, v6, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/dashboard/SiteMapManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/search2/DatabaseResultLoader;->cleanQuery(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/search2/CursorToSearchResultConverter;

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/android/settings/search2/CursorToSearchResultConverter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mConverter:Lcom/android/settings/search2/CursorToSearchResultConverter;

    return-void
.end method

.method private anyWordQuery([Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseResultLoader;->buildTwoWordWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/search2/DatabaseResultLoader;->buildAnyWordSelection(I)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p2}, Lcom/android/settings/search2/DatabaseResultLoader;->query(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private areDuplicateResults(Lcom/android/settings/search2/SearchResult;Lcom/android/settings/search2/SearchResult;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    iget-object v1, p2, Lcom/android/settings/search2/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    iget-object v1, p2, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/settings/search2/SearchResult;->summary:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildAnyWordSelection(I)[Ljava/lang/String;
    .locals 6

    new-array v2, p1, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "% "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_0

    aput-object v1, v2, v0

    add-int/lit8 v4, v0, 0x1

    aput-object v3, v2, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private buildSingleWordSelection(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 2

    new-array v1, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static buildSingleWordWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " like ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ") AND enabled = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static buildTwoWordWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " like ? OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, " like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v0, -0x1

    if-ge v1, v3, :cond_0

    const-string/jumbo v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, ") AND enabled = 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private firstWordQuery([Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseResultLoader;->buildSingleWordWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    invoke-direct {p0, v0, v3}, Lcom/android/settings/search2/DatabaseResultLoader;->buildSingleWordSelection(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/android/settings/search2/DatabaseResultLoader;->query(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private query(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/IndexDatabaseHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/search/IndexDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "prefs_index"

    sget-object v2, Lcom/android/settings/search2/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mConverter:Lcom/android/settings/search2/CursorToSearchResultConverter;

    iget-object v2, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mSiteMapManager:Lcom/android/settings/dashboard/SiteMapManager;

    invoke-virtual {v1, v2, v8, p3}, Lcom/android/settings/search2/CursorToSearchResultConverter;->convertCursor(Lcom/android/settings/dashboard/SiteMapManager;Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private secondaryWordQuery([Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/settings/search2/DatabaseResultLoader;->buildSingleWordWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "% "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, p1

    invoke-direct {p0, v0, v3}, Lcom/android/settings/search2/DatabaseResultLoader;->buildSingleWordSelection(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/android/settings/search2/DatabaseResultLoader;->query(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/search2/DatabaseResultLoader;->loadInBackground()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadInBackground()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/search2/DatabaseResultLoader;->mQueryText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    return-object v6

    :cond_1
    sget-object v5, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/settings/search2/DatabaseResultLoader;->firstWordQuery([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    sget-object v5, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_PRIMARY:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/settings/search2/DatabaseResultLoader;->secondaryWordQuery([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    sget-object v5, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_SECONDARY:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/settings/search2/DatabaseResultLoader;->anyWordQuery([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    sget-object v5, Lcom/android/settings/search2/DatabaseResultLoader;->MATCH_COLUMNS_TERTIARY:[Ljava/lang/String;

    sget-object v6, Lcom/android/settings/search2/DatabaseResultLoader;->BASE_RANKS:[I

    const/4 v7, 0x3

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lcom/android/settings/search2/DatabaseResultLoader;->anyWordQuery([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0, v2}, Lcom/android/settings/search2/DatabaseResultLoader;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method protected onCancelLoad()Z
    .locals 1

    invoke-super {p0}, Lcom/android/settings/utils/AsyncLoader;->onCancelLoad()Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/search2/DatabaseResultLoader;->onDiscardResult(Ljava/util/List;)V

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

.method removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/search2/SearchResult;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/search2/SearchResult;

    add-int/lit8 v1, v0, -0x1

    :goto_1
    if-ltz v1, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search2/SearchResult;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/search2/DatabaseResultLoader;->areDuplicateResults(Lcom/android/settings/search2/SearchResult;Lcom/android/settings/search2/SearchResult;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/android/settings/search2/SearchResult;->viewType:I

    if-eqz v4, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v4, v3, Lcom/android/settings/search2/SearchResult;->viewType:I

    if-eqz v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object p1
.end method
