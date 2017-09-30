.class public Lcom/thoughtworks/xstream/io/path/PathTracker;
.super Ljava/lang/Object;


# instance fields
.field private capacity:I

.field private currentPath:Lcom/thoughtworks/xstream/io/path/Path;

.field private indexMapStack:[Ljava/util/Map;

.field private pathStack:[Ljava/lang/String;

.field private pointer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    return-void
.end method

.method private resizeStacks(I)V
    .locals 5

    const/4 v4, 0x0

    new-array v0, p1, [Ljava/lang/String;

    new-array v1, p1, [Ljava/util/Map;

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    invoke-static {v3, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iput p1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    return-void
.end method


# virtual methods
.method public depth()I
    .locals 1

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    return v0
.end method

.method public getPath()Lcom/thoughtworks/xstream/io/path/Path;
    .locals 4

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, ""

    aput-object v2, v1, v0

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    neg-int v0, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-gtz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr v3, v0

    aput-object v2, v1, v3

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    return-object v0
.end method

.method public peekElement()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->peekElement(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekElement(I)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    neg-int v0, v0

    if-lt p1, v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public popElement()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object v2, v0, v1

    iput-object v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    return-void
.end method

.method public pushElement(Ljava/lang/String;)V
    .locals 3

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->capacity:I

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/path/PathTracker;->resizeStacks(I)V

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pathStack:[Ljava/lang/String;

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iget v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aget-object v0, v0, v1

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->indexMapStack:[Ljava/util/Map;

    iget v2, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    aput-object v0, v1, v2

    move-object v1, v0

    :goto_0
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/Integer;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->pointer:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/PathTracker;->currentPath:Lcom/thoughtworks/xstream/io/path/Path;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
