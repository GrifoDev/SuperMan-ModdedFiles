.class public final Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;
.super Ljava/io/Reader;
.source "XmlHeaderAwareReader.java"


# static fields
.field private static final KEY_ENCODING:Ljava/lang/String; = "encoding"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final STATE_ATTR_NAME:I = 0x3

.field private static final STATE_ATTR_VALUE:I = 0x4

.field private static final STATE_AWAIT_XML_HEADER:I = 0x2

.field private static final STATE_BOM:I = 0x0

.field private static final STATE_START:I = 0x1

.field private static final XML_TOKEN:Ljava/lang/String; = "?xml"


# instance fields
.field private final reader:Ljava/io/InputStreamReader;

.field private final version:D


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v2, 0x1

    new-array v1, v2, [Ljava/io/PushbackInputStream;

    instance-of v2, p1, Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/io/PushbackInputStream;

    :goto_0
    aput-object p1, v1, v4

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;

    move-result-object v0

    const-string v2, "version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    new-instance v3, Ljava/io/InputStreamReader;

    aget-object v4, v1, v4

    const-string v2, "encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    return-void

    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    const/16 v3, 0x40

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v2

    goto :goto_0
.end method

.method private getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v13, "encoding"

    const-string v14, "utf-8"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "version"

    const-string v14, "1.0"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x40

    invoke-direct {v8, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v12, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v13, -0x1

    if-eq v5, v13, :cond_12

    const/4 v13, 0x0

    aget-object v13, p1, v13

    invoke-virtual {v13}, Ljava/io/PushbackInputStream;->read()I

    move-result v5

    const/4 v13, -0x1

    if-eq v5, v13, :cond_12

    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-char v1, v5

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v13, 0xef

    if-ne v1, v13, :cond_1

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_3

    :cond_1
    const/16 v13, 0xbb

    if-ne v1, v13, :cond_2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_3

    :cond_2
    const/16 v13, 0xbf

    if-ne v1, v13, :cond_4

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_4

    :cond_3
    const/16 v13, 0xbf

    if-ne v1, v13, :cond_0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v10, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    const/4 v5, -0x1

    goto :goto_0

    :cond_5
    const/4 v10, 0x1

    :pswitch_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_0

    const/16 v13, 0x3c

    if-ne v1, v13, :cond_6

    const/4 v10, 0x2

    goto :goto_0

    :cond_6
    const/4 v5, -0x1

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_7

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v13, "?xml"

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "?xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v10, 0x3

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v5, -0x1

    goto/16 :goto_0

    :pswitch_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_b

    const/16 v13, 0x3d

    if-ne v1, v13, :cond_9

    const/4 v10, 0x4

    goto/16 :goto_0

    :cond_9
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_a
    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_0

    const/4 v5, -0x1

    goto/16 :goto_0

    :pswitch_4
    if-nez v12, :cond_e

    const/16 v13, 0x22

    if-eq v1, v13, :cond_c

    const/16 v13, 0x27

    if-ne v1, v13, :cond_d

    :cond_c
    move v12, v1

    goto/16 :goto_0

    :cond_d
    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_e
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_f

    if-nez v2, :cond_f

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_f
    if-ne v1, v12, :cond_10

    if-nez v2, :cond_10

    const/4 v12, 0x0

    const/4 v10, 0x3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    const/16 v13, 0xa

    if-eq v1, v13, :cond_11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_11
    const/4 v5, -0x1

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    array-length v5, v9

    move v6, v5

    :goto_1
    add-int/lit8 v5, v6, -0x1

    if-lez v6, :cond_13

    aget-byte v0, v9, v5

    const/4 v13, 0x0

    :try_start_0
    aget-object v13, p1, v13

    invoke-virtual {v13, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v6, v5

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v13, 0x0

    new-instance v14, Ljava/io/PushbackInputStream;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v14, v15, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    aput-object v14, p1, v13

    goto :goto_2

    :cond_13
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    iget-wide v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
