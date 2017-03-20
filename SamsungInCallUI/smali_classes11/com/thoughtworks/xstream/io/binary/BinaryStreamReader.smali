.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;
.super Ljava/lang/Object;
.source "BinaryStreamReader.java"

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;,
        Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;
    }
.end annotation


# instance fields
.field private final depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

.field private final idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

.field private final in:Ljava/io/DataInputStream;

.field private pushback:Lcom/thoughtworks/xstream/io/binary/Token;

.field private final tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    .line 41
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    .line 44
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    .line 45
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->moveDown()V

    .line 46
    return-void
.end method

.method private readToken()Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 7

    .prologue
    .line 151
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v3, :cond_0

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3, v4}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->read(Ljava/io/DataInput;)Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v2

    .line 154
    .local v2, "token":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 167
    .end local v2    # "token":Lcom/thoughtworks/xstream/io/binary/Token;
    :goto_0
    return-object v2

    .line 156
    .restart local v2    # "token":Lcom/thoughtworks/xstream/io/binary/Token;
    :pswitch_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->put(JLjava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 161
    .end local v2    # "token":Lcom/thoughtworks/xstream/io/binary/Token;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    .line 166
    .local v1, "result":Lcom/thoughtworks/xstream/io/binary/Token;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    move-object v2, v1

    .line 167
    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 0
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .prologue
    .line 201
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    return v0
.end method

.method public moveDown()V
    .locals 6

    .prologue
    .line 81
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->push()V

    .line 82
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    .line 83
    .local v0, "firstToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 88
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Expected StartNode"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :pswitch_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setName(Ljava/lang/String;)V

    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 92
    .local v1, "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 108
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :pswitch_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 106
    :goto_1
    return-void

    .line 104
    :pswitch_4
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 105
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    goto :goto_1

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 92
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public moveUp()V
    .locals 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->pop()V

    .line 116
    const/4 v0, 0x0

    .line 119
    .local v0, "depth":I
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 120
    .local v1, "nextToken":Lcom/thoughtworks/xstream/io/binary/Token;
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 129
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    .line 130
    goto :goto_0

    .line 122
    :pswitch_1
    if-nez v0, :cond_0

    .line 136
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 145
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 127
    goto :goto_0

    .line 139
    :pswitch_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    .line 147
    :goto_1
    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 148
    return-void

    .line 142
    :pswitch_3
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 137
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 2
    .param p1, "token"    # Lcom/thoughtworks/xstream/io/binary/Token;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v0, :cond_0

    .line 173
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    .line 178
    return-void

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot push more than one token back"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 0

    .prologue
    .line 196
    return-object p0
.end method
