.class public Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;
.super Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.source "TR9401CatalogReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;-><init>()V

    return-void
.end method


# virtual methods
.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->caseSensitive:Z

    if-nez v0, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string/jumbo v3, "DELEGATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    :goto_2
    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v6

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    if-nez v1, :cond_6

    :goto_3
    move v3, v4

    :goto_4
    if-ge v3, v6, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_1
    return-void

    :cond_2
    if-nez v1, :cond_3

    :goto_5
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TR9401CatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_3
    invoke-virtual {p1, v1}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_b

    :goto_6
    return-void

    :cond_4
    move-object v0, v5

    goto :goto_1

    :cond_5
    :try_start_3
    const-string/jumbo v0, "DELEGATE_PUBLIC"
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :cond_6
    :try_start_4
    invoke-virtual {p1, v1}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    move-object v1, v2

    goto :goto_3

    :cond_7
    new-instance v3, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v3, v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v3}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_8

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_a

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v3

    if-ne v3, v10, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v3

    iget-object v3, v3, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v5, 0x1

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-eqz v1, :cond_9

    :goto_7
    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v1, 0x1

    const-string/jumbo v3, "Invalid catalog entry"

    invoke-virtual {v0, v1, v3, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v2

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_6
.end method
