.class public Lmf/org/apache/xml/resolver/readers/TextCatalogReader;
.super Ljava/lang/Object;
.source "TextCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/CatalogReader;


# instance fields
.field protected caseSensitive:Z

.field protected catfile:Ljava/io/InputStream;

.field protected stack:[I

.field protected tokenStack:Ljava/util/Stack;

.field protected top:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCaseSensitive()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return v0
.end method

.method protected nextChar()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aget v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method protected nextToken()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xml/resolver/CatalogException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/16 v3, 0x20

    const/16 v7, 0x2d

    const/4 v6, 0x0

    const-string/jumbo v0, ""

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    :cond_1
    if-gt v1, v3, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-gez v1, :cond_1

    return-object v4

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->tokenStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_6

    if-eq v1, v7, :cond_7

    :cond_4
    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v5, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v2, v4, v5

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v1, v2, v4

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_b

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    if-eq v2, v1, :cond_d

    new-array v3, v8, [C

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v3, v6

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    return-object v4

    :cond_7
    if-ne v2, v7, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    move v2, v3

    :goto_1
    if-eq v2, v7, :cond_9

    :cond_8
    if-lez v1, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v2

    move v9, v2

    move v2, v1

    move v1, v9

    goto :goto_1

    :cond_9
    if-ne v1, v7, :cond_8

    :cond_a
    if-gez v1, :cond_0

    new-instance v0, Lmf/org/apache/xml/resolver/CatalogException;

    const/16 v1, 0x8

    const-string/jumbo v2, "Unterminated comment in catalog file; EOF treated as end-of-comment."

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/resolver/CatalogException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_b
    const/16 v2, 0x27

    if-eq v1, v2, :cond_5

    move-object v2, v0

    move v0, v1

    :goto_2
    if-le v0, v3, :cond_f

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextChar()I

    move-result v1

    if-eq v0, v7, :cond_e

    :cond_c
    new-array v4, v8, [C

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, v4, v6

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    goto :goto_2

    :cond_d
    return-object v0

    :cond_e
    if-ne v1, v7, :cond_c

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v0, v3, v4

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->stack:[I

    iget v3, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->top:I

    aput v1, v0, v3

    return-object v2

    :cond_f
    return-object v2
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v3, 0x0

    iput-object p2, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    move-object v2, v3

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    if-nez v0, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    :try_start_1
    invoke-static {v0}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryType(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xml/resolver/CatalogEntry;->getEntryArgCount(I)I

    move-result v6

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    if-nez v2, :cond_5

    :goto_2
    move v4, v5

    :goto_3
    if-ge v4, v6, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->nextToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    return-void

    :cond_2
    if-nez v2, :cond_3

    :goto_4
    :try_start_2
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->catfile:Ljava/io/InputStream;

    return-void

    :cond_3
    invoke-virtual {p1, v2}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_a

    :goto_5
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    :try_start_3
    invoke-virtual {p1, v2}, Lmf/org/apache/xml/resolver/Catalog;->unknownEntry(Ljava/util/Vector;)V

    move-object v2, v3

    goto :goto_2

    :cond_6
    new-instance v4, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v4, v0, v7}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(Ljava/lang/String;Ljava/util/Vector;)V

    invoke-virtual {p1, v4}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-ne v1, v10, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v4, 0x1

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x1

    const-string/jumbo v4, "Invalid catalog entry"

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v2, v3

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v9, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    goto :goto_5
.end method

.method public readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->readCatalog(Lmf/org/apache/xml/resolver/Catalog;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "file:///"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v1

    iget-object v1, v1, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v2, 0x1

    const-string/jumbo v3, "Failed to load catalog, file not found"

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCaseSensitive(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xml/resolver/readers/TextCatalogReader;->caseSensitive:Z

    return-void
.end method
