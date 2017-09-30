.class public Lcom/thoughtworks/xstream/io/path/Path;
.super Ljava/lang/Object;


# static fields
.field private static final DOT:Lcom/thoughtworks/xstream/io/path/Path;


# instance fields
.field private final chunks:[Ljava/lang/String;

.field private transient pathAsString:Ljava/lang/String;

.field private transient pathExplicit:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "."

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    sput-object v0, Lcom/thoughtworks/xstream/io/path/Path;->DOT:Lcom/thoughtworks/xstream/io/path/Path;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    :goto_0
    const/16 v2, 0x2f

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-direct {p0, p1, v0, v2}, Lcom/thoughtworks/xstream/io/path/Path;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, p1, v0, v2}, Lcom/thoughtworks/xstream/io/path/Path;->normalize(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    return-void
.end method

.method private depthOfPathDivergence([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4

    array-length v0, p1

    array-length v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private normalize(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    sub-int v0, p3, p2

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p3, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    add-int/lit8 v0, p3, -0x3

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public apply(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;
    .locals 5

    const/4 v1, 0x0

    new-instance v2, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v0, 0x10

    invoke-direct {v2, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ".."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    :goto_3
    array-length v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/thoughtworks/xstream/io/path/Path;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/thoughtworks/xstream/io/path/Path;

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v0, v0

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public explicit()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    if-lez v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_1

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_1

    const-string v2, "[1]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathExplicit:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const v1, 0x20675fcb

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1d

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isAncestor(Lcom/thoughtworks/xstream/io/path/Path;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public relativeTo(Lcom/thoughtworks/xstream/io/path/Path;)Lcom/thoughtworks/xstream/io/path/Path;
    .locals 6

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    iget-object v1, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/path/Path;->depthOfPathDivergence([Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v0, v0

    iget-object v2, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    const-string v5, ".."

    aput-object v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p1, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/io/path/Path;->DOT:Lcom/thoughtworks/xstream/io/path/Path;

    :goto_2
    return-object v0

    :cond_2
    new-instance v0, Lcom/thoughtworks/xstream/io/path/Path;

    invoke-direct {v0, v4}, Lcom/thoughtworks/xstream/io/path/Path;-><init>([Ljava/lang/String;)V

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-lez v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/path/Path;->chunks:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/path/Path;->pathAsString:Ljava/lang/String;

    return-object v0
.end method
