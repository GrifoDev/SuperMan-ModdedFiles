.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;
.super Ljava/lang/Object;

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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->moveDown()V

    return-void
.end method

.method private readToken()Lcom/thoughtworks/xstream/io/binary/Token;
    .locals 4

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->read(Ljava/io/DataInput;)Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->put(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getAttributeNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    return v0
.end method

.method public moveDown()V
    .locals 6

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->push()V

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v1, "Expected StartNode"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setName(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v1

    packed-switch v1, :pswitch_data_1

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    :goto_1
    return-void

    :pswitch_4
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public moveUp()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->pop()V

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v2

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->readToken()Lcom/thoughtworks/xstream/io/binary/Token;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/Token;->getType()B

    move-result v2

    packed-switch v2, :pswitch_data_1

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void

    :pswitch_3
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->setHasMoreChildren(Z)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->depthState:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/binary/Token;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader$IdRegistry;->get(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushBack(Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 2

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamReader;->pushback:Lcom/thoughtworks/xstream/io/binary/Token;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Cannot push more than one token back"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public underlyingReader()Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 0

    return-object p0
.end method
