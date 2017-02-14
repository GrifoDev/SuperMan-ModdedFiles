.class public final Lmf/org/apache/xerces/stax/DefaultNamespaceContext;
.super Ljava/lang/Object;
.source "DefaultNamespaceContext.java"

# interfaces
.implements Lmf/javax/xml/namespace/NamespaceContext;


# static fields
.field private static final DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    invoke-direct {v0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lmf/org/apache/xerces/stax/DefaultNamespaceContext;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext;->DEFAULT_NAMESPACE_CONTEXT_INSTANCE:Lmf/org/apache/xerces/stax/DefaultNamespaceContext;

    return-object v0
.end method


# virtual methods
.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "xmlns"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Prefix cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    return-object v0

    :cond_2
    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Namespace URI cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "xml"

    return-object v0

    :cond_2
    const-string/jumbo v0, "xmlns"

    return-object v0
.end method

.method public getPrefixes(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Namespace URI cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$1;-><init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V

    return-object v0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/stax/DefaultNamespaceContext$2;-><init>(Lmf/org/apache/xerces/stax/DefaultNamespaceContext;)V

    return-object v0
.end method
