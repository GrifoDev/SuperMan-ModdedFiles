.class public Landroid/content/DefaultDataHandler;
.super Ljava/lang/Object;
.source "DefaultDataHandler.java"

# interfaces
.implements Landroid/content/ContentInsertHandler;


# static fields
.field private static final ARG:Ljava/lang/String; = "arg"

.field private static final COL:Ljava/lang/String; = "col"

.field private static final DEL:Ljava/lang/String; = "del"

.field private static final POSTFIX:Ljava/lang/String; = "postfix"

.field private static final ROW:Ljava/lang/String; = "row"

.field private static final SELECT:Ljava/lang/String; = "select"

.field private static final URI_STR:Ljava/lang/String; = "uri"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mUris:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    return-void
.end method

.method private insertRow()Landroid/net/Uri;
    .locals 4

    iget-object v2, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method private parseRow(Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v3, "uri"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v3, Lorg/xml/sax/SAXException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "uri"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " parsing failure"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-lez v3, :cond_3

    const-string/jumbo v3, "postfix"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    iget-object v3, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    goto :goto_0

    :cond_3
    new-instance v3, Lorg/xml/sax/SAXException;

    const-string/jumbo v4, "attribute parsing failure"

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string/jumbo v0, "row"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "uri mismatch"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    :cond_1
    iget-object v0, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {p2, v0, p0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public insert(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iput-object p1, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p0}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "row"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-eqz v7, :cond_2

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lorg/xml/sax/SAXException;

    const-string/jumbo v8, "uri is empty"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-direct {p0}, Landroid/content/DefaultDataHandler;->insertRow()Landroid/net/Uri;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v8, Lorg/xml/sax/SAXException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "insert to uri "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, " failure"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    :goto_0
    return-void

    :cond_2
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v8, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mUris:Ljava/util/Stack;

    invoke-virtual {v7}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-direct {p0, p4}, Landroid/content/DefaultDataHandler;->parseRow(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v7, "col"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v7, 0x2

    if-eq v0, v7, :cond_5

    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "illegal attributes number "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    invoke-interface {p4, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    if-nez v7, :cond_6

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    iput-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    :cond_6
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    new-instance v7, Lorg/xml/sax/SAXException;

    const-string/jumbo v8, "illegal attributes value"

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    const-string/jumbo v7, "del"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "uri"

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_9

    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "attribute "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "uri"

    invoke-interface {p4, v9}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " parsing failure"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v7

    add-int/lit8 v0, v7, -0x2

    if-lez v0, :cond_b

    new-array v4, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_a

    add-int/lit8 v7, v1, 0x2

    invoke-interface {p4, v7}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-interface {p4, v10}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Landroid/content/DefaultDataHandler;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v5, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    new-instance v7, Lorg/xml/sax/SAXException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unknown element: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
