.class public final Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;
.super Ljava/io/Reader;


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
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/io/PushbackInputStream;

    instance-of v0, p1, Ljava/io/PushbackInputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/io/PushbackInputStream;

    :goto_0
    aput-object p1, v1, v6

    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "version"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    new-instance v3, Ljava/io/InputStreamReader;

    aget-object v1, v1, v6

    const-string v0, "encoding"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    return-void

    :cond_0
    new-instance v0, Ljava/io/PushbackInputStream;

    const/16 v2, 0x40

    invoke-direct {v0, p1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v0

    goto :goto_0
.end method

.method private getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;
    .locals 12

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "encoding"

    const-string v1, "utf-8"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version"

    const-string v1, "1.0"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x40

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    move v11, v0

    move v0, v3

    move v3, v11

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_12

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/io/PushbackInputStream;->read()I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_12

    invoke-virtual {v6, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    int-to-char v3, v4

    packed-switch v0, :pswitch_data_0

    :cond_0
    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    :goto_1
    move v11, v0

    move v0, v3

    move v3, v2

    move v2, v1

    move v1, v11

    goto :goto_0

    :pswitch_0
    const/16 v9, 0xef

    if-ne v3, v9, :cond_1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_3

    :cond_1
    const/16 v9, 0xbb

    if-ne v3, v9, :cond_2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    :cond_2
    const/16 v9, 0xbf

    if-ne v3, v9, :cond_4

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    :cond_3
    const/16 v9, 0xbf

    if-ne v3, v9, :cond_0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/4 v0, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_5

    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    :pswitch_1
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_0

    const/16 v9, 0x3c

    if-ne v3, v9, :cond_6

    const/4 v0, 0x2

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto :goto_1

    :cond_6
    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto :goto_1

    :pswitch_2
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v3, "?xml"

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto :goto_1

    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "?xml"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x3

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_8
    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_3
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-nez v9, :cond_b

    const/16 v9, 0x3d

    if-ne v3, v9, :cond_9

    const/4 v0, 0x4

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_9
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_a
    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :pswitch_4
    if-nez v2, :cond_e

    const/16 v9, 0x22

    if-eq v3, v9, :cond_c

    const/16 v9, 0x27

    if-ne v3, v9, :cond_d

    :cond_c
    move v2, v4

    move v11, v3

    move v3, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_1

    :cond_d
    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x5c

    if-ne v3, v9, :cond_f

    if-nez v1, :cond_f

    const/4 v1, 0x1

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_f
    if-ne v3, v2, :cond_10

    if-nez v1, :cond_10

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    move v3, v2

    move v2, v4

    move v11, v0

    move v0, v1

    move v1, v11

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x0

    const/16 v9, 0xa

    if-eq v3, v9, :cond_11

    invoke-virtual {v8, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v3, v0

    move v0, v1

    move v1, v2

    move v2, v4

    goto/16 :goto_1

    :cond_11
    const/4 v3, -0x1

    move v11, v1

    move v1, v2

    move v2, v3

    move v3, v0

    move v0, v11

    goto/16 :goto_1

    :cond_12
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v0, v2

    move v1, v0

    :goto_2
    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_13

    aget-byte v1, v2, v0

    const/4 v3, 0x0

    :try_start_0
    aget-object v3, p1, v3

    invoke-virtual {v3, v1}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move v1, v0

    goto :goto_2

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    new-instance v3, Ljava/io/PushbackInputStream;

    const/4 v4, 0x0

    aget-object v4, p1, v4

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v3, v4, v0}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    aput-object v3, p1, v1

    goto :goto_3

    :cond_13
    return-object v5

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

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v0

    return v0
.end method

.method public ready()Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->ready()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 3

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
