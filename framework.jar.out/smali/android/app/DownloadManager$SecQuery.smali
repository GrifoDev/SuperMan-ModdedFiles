.class public Landroid/app/DownloadManager$SecQuery;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SecQuery"
.end annotation


# static fields
.field public static final ORDER_ASCENDING:I = 0x1

.field public static final ORDER_DESCENDING:I = 0x2


# instance fields
.field private mFilterString:Ljava/lang/String;

.field private mIds:[J

.field private mOnlyIncludeVisibleInDownloadsUi:Z

.field private mOrderByColumn:Ljava/lang/String;

.field private mOrderDirection:I

.field private mStatusFlags:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/DownloadManager$SecQuery;->mOnlyIncludeVisibleInDownloadsUi:Z

    return-void
.end method

.method private joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private statusClause(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public orderBy(Ljava/lang/String;I)Landroid/app/DownloadManager$SecQuery;
    .locals 3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "last_modified_timestamp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "lastmod"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    :goto_0
    iput p2, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    return-object p0

    :cond_1
    const-string/jumbo v0, "total_size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "total_bytes"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "title COLLATE NOCASE"

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot order by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method runQuery(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 10

    move-object v8, p3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    if-nez v0, :cond_2

    const/4 v9, 0x0

    :goto_0
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-nez v0, :cond_3

    :goto_1
    new-array v4, v9, [Ljava/lang/String;

    if-lez v9, :cond_1

    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v0}, Landroid/app/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    invoke-static {v0, v4}, Landroid/app/DownloadManager;->getWhereArgsForIds([J[Ljava/lang/String;)[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "title LIKE ?"

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    :cond_1
    const-string/jumbo v0, " AND "

    invoke-direct {p0, v0, v7}, Landroid/app/DownloadManager$SecQuery;->joinStrings(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    iget v0, p0, Landroid/app/DownloadManager$SecQuery;->mOrderDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const-string/jumbo v6, "ASC"

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/app/DownloadManager$SecQuery;->mOrderByColumn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    move-object v1, p3

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    array-length v9, v0

    goto :goto_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "DESC"

    goto :goto_2
.end method

.method public varargs setFilterById([J)Landroid/app/DownloadManager$SecQuery;
    .locals 0

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mIds:[J

    return-object p0
.end method

.method public setFilterByStatus(I)Landroid/app/DownloadManager$SecQuery;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/app/DownloadManager$SecQuery;->mStatusFlags:Ljava/lang/Integer;

    return-object p0
.end method

.method public setFilterByString(Ljava/lang/String;)Landroid/app/DownloadManager$SecQuery;
    .locals 0

    iput-object p1, p0, Landroid/app/DownloadManager$SecQuery;->mFilterString:Ljava/lang/String;

    return-object p0
.end method
