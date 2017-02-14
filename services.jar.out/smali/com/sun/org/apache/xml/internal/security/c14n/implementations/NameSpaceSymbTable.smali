.class public Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field static final XMLNS:Ljava/lang/String; = "xmlns"


# instance fields
.field cloned:Z

.field level:Ljava/util/List;

.field nameSpaces:I

.field symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    iput-boolean v3, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const-string/jumbo v2, "xmlns"

    invoke-virtual {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v1, p2, p3, v2}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    return v3

    :cond_2
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    :cond_3
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    goto :goto_0
.end method

.method public addMappingAndRender(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v1, p2, p3, v4}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    iput-object p2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_2
    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    iput-object p2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-boolean v4, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_4
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    return-object v3
.end method

.method public addMappingAndRenderXNodeSet(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;Z)Lorg/w3c/dom/Node;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v1, p2, p3, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;Z)V

    iget v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    iput v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iput-boolean v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-nez v0, :cond_7

    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_2
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-nez p4, :cond_4

    :goto_1
    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_3
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    iput-boolean v3, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_4
    iget v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    sub-int v2, v1, v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_6

    :cond_5
    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    return-object v4

    :cond_6
    const-string/jumbo v2, "xmlns"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_7
    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iput-object v2, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, v1, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    goto :goto_0
.end method

.method public getMapping(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->needsClone()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->put(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    iput v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->level:I

    iget-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->uri:Ljava/lang/String;

    iput-object v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->lastrendered:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v2
.end method

.method public getMappingWithoutRendered(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->get(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    return-object v0

    :cond_0
    return-object v2

    :cond_1
    return-object v2
.end method

.method public getUnrenderedNodes(Ljava/util/Collection;)V
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->entrySet()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;

    iget-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->n:Lorg/w3c/dom/Attr;

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbEntry;->rendered:Z

    goto :goto_0
.end method

.method final needsClone()V
    .locals 2

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    goto :goto_0
.end method

.method public outputNodePop()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->pop()V

    return-void
.end method

.method public outputNodePush()V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->nameSpaces:I

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->push()V

    return-void
.end method

.method public pop()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    :goto_0
    return-void

    :cond_1
    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->symb:Lcom/sun/org/apache/xml/internal/security/c14n/implementations/SymbMap;

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public push()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->level:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/NameSpaceSymbTable;->cloned:Z

    return-void
.end method
