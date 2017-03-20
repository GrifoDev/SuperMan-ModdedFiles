.class public Lcom/thoughtworks/xstream/io/StatefulWriter;
.super Lcom/thoughtworks/xstream/io/WriterWrapper;
.source "StatefulWriter.java"


# static fields
.field public static STATE_CLOSED:I

.field public static STATE_NODE_END:I

.field public static STATE_NODE_START:I

.field public static STATE_OPEN:I

.field public static STATE_VALUE:I


# instance fields
.field private transient attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private transient balance:I

.field private transient state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    .line 49
    const/4 v0, 0x2

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    .line 55
    const/4 v0, 0x3

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    .line 61
    const/4 v0, 0x4

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 63
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    .line 75
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 76
    return-void
.end method

.method private checkClosed()V
    .locals 3

    .prologue
    .line 152
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    if-ne v0, v1, :cond_0

    .line 153
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Writing on a closed stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 155
    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 174
    return-object p0
.end method

.method private startNodeCommon()V
    .locals 3

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    .line 90
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    if-ne v0, v1, :cond_0

    .line 92
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Opening node after writing text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 94
    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    .line 95
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    .line 96
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    .line 101
    iget v1, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v2, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    if-eq v1, v2, :cond_0

    .line 102
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' without an opened node"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 107
    .local v0, "currentAttributes":Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 108
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing attribute \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' twice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public close()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    if-eq v0, v1, :cond_0

    .line 147
    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    .line 148
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->close()V

    .line 149
    return-void
.end method

.method public endNode()V
    .locals 3

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    .line 129
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unbalanced node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    .line 133
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    .line 134
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->endNode()V

    .line 135
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    .line 139
    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->flush()V

    .line 140
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    .line 118
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Writing text without an opened node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 123
    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    .line 124
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->setValue(Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNodeCommon()V

    .line 80
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNodeCommon()V

    .line 85
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    .line 86
    return-void
.end method

.method public state()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    return v0
.end method
