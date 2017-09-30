.class public Lcom/thoughtworks/xstream/io/StatefulWriter;
.super Lcom/thoughtworks/xstream/io/WriterWrapper;


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

    const/4 v0, 0x0

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    const/4 v0, 0x1

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    const/4 v0, 0x2

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    const/4 v0, 0x3

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    const/4 v0, 0x4

    sput v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    return-void
.end method

.method private checkClosed()V
    .locals 3

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Writing on a closed stream"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    return-object p0
.end method

.method private startNodeCommon()V
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Opening node after writing text"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' without an opened node"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' twice"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_OPEN:I

    if-eq v0, v1, :cond_0

    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_CLOSED:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->close()V

    return-void
.end method

.method public endNode()V
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->balance:I

    if-nez v0, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unbalanced node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->attributes:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->popSilently()V

    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_END:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->endNode()V

    return-void
.end method

.method public flush()V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    invoke-super {p0}, Lcom/thoughtworks/xstream/io/WriterWrapper;->flush()V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->checkClosed()V

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    sget v1, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_NODE_START:I

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Writing text without an opened node"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    sget v0, Lcom/thoughtworks/xstream/io/StatefulWriter;->STATE_VALUE:I

    iput v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNodeCommon()V

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;)V

    return-void
.end method

.method public startNode(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/StatefulWriter;->startNodeCommon()V

    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/io/WriterWrapper;->startNode(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method

.method public state()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/io/StatefulWriter;->state:I

    return v0
.end method
