.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$1;,
        Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;
    }
.end annotation


# instance fields
.field private final idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

.field private final out:Ljava/io/DataOutputStream;

.field private final tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method private write(Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->write(Ljava/io/DataOutput;Lcom/thoughtworks/xstream/io/binary/Token;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->getId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p2}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method public close()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endNode()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Value;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Value;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->getId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    return-object p0
.end method
