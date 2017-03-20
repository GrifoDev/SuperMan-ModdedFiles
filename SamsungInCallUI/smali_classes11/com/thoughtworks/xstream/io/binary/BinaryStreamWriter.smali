.class public Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;
.super Ljava/lang/Object;
.source "BinaryStreamWriter.java"

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
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;-><init>(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$1;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    .line 31
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    .line 34
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 0
    .param p0, "x0"    # Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;
    .param p1, "x1"    # Lcom/thoughtworks/xstream/io/binary/Token;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    return-void
.end method

.method private write(Lcom/thoughtworks/xstream/io/binary/Token;)V
    .locals 3
    .param p1, "token"    # Lcom/thoughtworks/xstream/io/binary/Token;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->tokenFormatter:Lcom/thoughtworks/xstream/io/binary/Token$Formatter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Formatter;->write(Ljava/io/DataOutput;Lcom/thoughtworks/xstream/io/binary/Token;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->getId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p2}, Lcom/thoughtworks/xstream/io/binary/Token$Attribute;-><init>(JLjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 47
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endNode()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/binary/Token$EndNode;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 55
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$Value;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/binary/Token$Value;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 51
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->idRegistry:Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;

    invoke-virtual {v1, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter$IdRegistry;->getId(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/thoughtworks/xstream/io/binary/Token$StartNode;-><init>(J)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->write(Lcom/thoughtworks/xstream/io/binary/Token;)V

    .line 39
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/binary/BinaryStreamWriter;->startNode(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public underlyingWriter()Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 0

    .prologue
    .line 74
    return-object p0
.end method
