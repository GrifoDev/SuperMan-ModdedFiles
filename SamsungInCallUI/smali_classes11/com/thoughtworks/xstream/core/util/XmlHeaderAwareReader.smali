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
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 58
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/io/PushbackInputStream;

    instance-of v2, p1, Ljava/io/PushbackInputStream;

    if-eqz v2, :cond_0

    check-cast p1, Ljava/io/PushbackInputStream;

    .end local p1    # "in":Ljava/io/InputStream;
    :goto_0
    aput-object p1, v1, v4

    .line 61
    .local v1, "pin":[Ljava/io/PushbackInputStream;
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;

    move-result-object v0

    .line 62
    .local v0, "header":Ljava/util/Map;
    const-string v2, "version"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    .line 63
    new-instance v3, Ljava/io/InputStreamReader;

    aget-object v4, v1, v4

    const-string v2, "encoding"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    .line 64
    return-void

    .line 58
    .end local v0    # "header":Ljava/util/Map;
    .end local v1    # "pin":[Ljava/io/PushbackInputStream;
    .restart local p1    # "in":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Ljava/io/PushbackInputStream;

    const/16 v3, 0x40

    invoke-direct {v2, p1, v3}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v2

    goto :goto_0
.end method

.method private getHeader([Ljava/io/PushbackInputStream;)Ljava/util/Map;
    .locals 16
    .param p1, "in"    # [Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "header":Ljava/util/Map;
    const-string v13, "encoding"

    const-string v14, "utf-8"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v13, "version"

    const-string v14, "1.0"

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const/4 v10, 0x0

    .line 72
    .local v10, "state":I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v13, 0x40

    invoke-direct {v8, v13}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 73
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    .line 74
    .local v5, "i":I
    const/4 v1, 0x0

    .line 75
    .local v1, "ch":C
    const/4 v12, 0x0

    .line 76
    .local v12, "valueEnd":C
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v7, "name":Ljava/lang/StringBuffer;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 78
    .local v11, "value":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 79
    .local v2, "escape":Z
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

    .line 80
    invoke-virtual {v8, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 81
    int-to-char v1, v5

    .line 82
    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 84
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

    .line 87
    :cond_3
    const/16 v13, 0xbf

    if-ne v1, v13, :cond_0

    .line 88
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 89
    const/4 v10, 0x1

    goto :goto_0

    .line 92
    :cond_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 93
    const/4 v5, -0x1

    .line 94
    goto :goto_0

    .line 96
    :cond_5
    const/4 v10, 0x1

    .line 100
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_0

    .line 101
    const/16 v13, 0x3c

    if-ne v1, v13, :cond_6

    .line 102
    const/4 v10, 0x2

    goto :goto_0

    .line 104
    :cond_6
    const/4 v5, -0x1

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_7

    .line 110
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    const-string v13, "?xml"

    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 112
    const/4 v5, -0x1

    goto :goto_0

    .line 115
    :cond_7
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "?xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 116
    const/4 v10, 0x3

    .line 117
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 119
    :cond_8
    const/4 v5, -0x1

    .line 122
    goto/16 :goto_0

    .line 124
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_b

    .line 125
    const/16 v13, 0x3d

    if-ne v1, v13, :cond_9

    .line 126
    const/4 v10, 0x4

    goto/16 :goto_0

    .line 128
    :cond_9
    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    .line 129
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 130
    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 132
    :cond_a
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 135
    :cond_b
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 136
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 140
    :pswitch_4
    if-nez v12, :cond_e

    .line 141
    const/16 v13, 0x22

    if-eq v1, v13, :cond_c

    const/16 v13, 0x27

    if-ne v1, v13, :cond_d

    .line 142
    :cond_c
    move v12, v1

    goto/16 :goto_0

    .line 144
    :cond_d
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 147
    :cond_e
    const/16 v13, 0x5c

    if-ne v1, v13, :cond_f

    if-nez v2, :cond_f

    .line 148
    const/4 v2, 0x1

    .line 149
    goto/16 :goto_0

    .line 151
    :cond_f
    if-ne v1, v12, :cond_10

    if-nez v2, :cond_10

    .line 152
    const/4 v12, 0x0

    .line 153
    const/4 v10, 0x3

    .line 154
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 156
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    .line 158
    :cond_10
    const/4 v2, 0x0

    .line 159
    const/16 v13, 0xa

    if-eq v1, v13, :cond_11

    .line 160
    invoke-virtual {v11, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 162
    :cond_11
    const/4 v5, -0x1

    goto/16 :goto_0

    .line 170
    :cond_12
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 171
    .local v9, "pushbackData":[B
    array-length v5, v9

    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_1
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-lez v6, :cond_13

    .line 172
    aget-byte v0, v9, v5

    .line 174
    .local v0, "b":B
    const/4 v13, 0x0

    :try_start_0
    aget-object v13, p1, v13

    invoke-virtual {v13, v0}, Ljava/io/PushbackInputStream;->unread(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v6, v5

    .line 178
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_1

    .line 175
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :catch_0
    move-exception v3

    .line 176
    .local v3, "ex":Ljava/io/IOException;
    const/4 v13, 0x0

    new-instance v14, Ljava/io/PushbackInputStream;

    const/4 v15, 0x0

    aget-object v15, p1, v15

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v14, v15, v5}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    aput-object v14, p1, v13

    goto :goto_2

    .line 179
    .end local v0    # "b":B
    .end local v3    # "ex":Ljava/io/IOException;
    :cond_13
    return-object v4

    .line 82
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

    .prologue
    .line 263
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 264
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 270
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()D
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->version:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->mark(I)V

    .line 203
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 209
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

    .prologue
    .line 216
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    return v0
.end method

.method public read([C)I
    .locals 1
    .param p1, "cbuf"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1}, Ljava/io/InputStreamReader;->read([C)I

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
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

    .prologue
    .line 242
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

    .prologue
    .line 249
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->reset()V

    .line 250
    return-void
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStreamReader;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/XmlHeaderAwareReader;->reader:Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
