.class public Lmf/org/apache/xml/serialize/DOMSerializerImpl;
.super Ljava/lang/Object;
.source "DOMSerializerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/ls/LSSerializer;
.implements Lmf/org/w3c/dom/DOMConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;
    }
.end annotation


# static fields
.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISCARDDEFAULT:S = 0x40s

.field protected static final DOM_ELEMENT_CONTENT_WHITESPACE:S = 0x400s

.field protected static final ENTITIES:S = 0x4s

.field protected static final INFOSET:S = 0x80s

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NSDECL:S = 0x200s

.field protected static final PRETTY_PRINT:S = 0x800s

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final WELLFORMED:S = 0x2s

.field protected static final XMLDECL:S = 0x100s


# instance fields
.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field private fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field private final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field private fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

.field protected features:S

.field private serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

.field private xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x100

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    new-instance v0, Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {v0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    return-void
.end method

.method private _getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_2
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$2()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private _getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_2
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$3()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private _getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    :cond_0
    :goto_1
    return-object v2

    :cond_1
    check-cast p1, Lmf/org/w3c/dom/Document;

    goto :goto_0

    :cond_2
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$0()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lmf/org/apache/xml/serialize/DOMSerializerImpl$DocumentMethods;->access$1()Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/VirtualMachineError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-object v1, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    iget-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-object v1, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    iget-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    iput-object v0, p2, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method private initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    int-to-short v0, v0

    iput-short v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v4, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setIndenting(Z)V

    iget-object v4, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setOmitComments(Z)V

    iget-object v4, p1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setOmitXMLDeclaration(Z)V

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_6

    :cond_0
    :goto_5
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_7

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    :goto_6
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "isXMLVersionChanged()"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    if-nez v4, :cond_8

    :goto_7
    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_9

    invoke-direct {p0, p2, v2, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->verify(Lmf/org/w3c/dom/Node;ZZ)V

    goto :goto_5

    :cond_7
    move-object v0, p2

    check-cast v0, Lmf/org/w3c/dom/Document;

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_7

    :cond_9
    move-object v0, p2

    :cond_a
    :goto_8
    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v2, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->verify(Lmf/org/w3c/dom/Node;ZZ)V

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    move-object v7, v4

    move-object v4, v0

    move-object v0, v7

    :cond_b
    :goto_9
    if-nez v0, :cond_a

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_b

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    if-eq p2, v4, :cond_c

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_9

    :cond_c
    move-object v0, v3

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7
.end method

.method private verify(Lmf/org/w3c/dom/Node;ZZ)V
    .locals 11

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p1, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v1, 0x0

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    return-void

    :pswitch_1
    if-nez p2, :cond_3

    :cond_1
    :goto_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    const/4 v0, 0x0

    move v10, v0

    :goto_3
    invoke-interface {v3}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-ge v10, v0, :cond_0

    invoke-interface {v3, v10}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v4, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    move v6, p3

    invoke-static/range {v0 .. v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    if-nez p2, :cond_6

    :cond_2
    :goto_4
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_3

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_5
    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "wf-invalid-character-in-node-name"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Element"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v3

    goto :goto_2

    :cond_6
    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "wf-invalid-character-in-node-name"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "Attr"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v6, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v9, "wf-invalid-character-in-node-name"

    const/4 v8, 0x3

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    check-cast p1, Lmf/org/w3c/dom/Comment;

    invoke-interface {p1}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_3
    if-eqz p2, :cond_0

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object v6, p1

    check-cast v6, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v6}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_8

    :cond_7
    :goto_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v6}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    if-nez p3, :cond_9

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    :goto_7
    if-nez v0, :cond_7

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "wf-invalid-character-in-node-name"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Element"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    const/4 v4, 0x3

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    instance-of v2, p2, Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const-string/jumbo v2, "error-handler"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_0
    instance-of v2, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_b

    :goto_0
    return v1

    :cond_1
    return v0

    :cond_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string/jumbo v3, "namespaces"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    return v0

    :cond_4
    const-string/jumbo v3, "split-cdata-sections"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "discard-default-content"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "xml-declaration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "well-formed"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "infoset"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "entities"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "cdata-sections"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "comments"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "format-pretty-print"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "namespace-declarations"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "canonical-form"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    if-nez v2, :cond_8

    :goto_1
    return v0

    :cond_6
    const-string/jumbo v3, "validate-if-schema"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "validate"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "check-character-normalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "datatype-normalization"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "normalize-characters"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    return v2

    :cond_8
    move v0, v1

    goto :goto_1

    :cond_9
    const-string/jumbo v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_a
    if-nez p2, :cond_0

    :cond_b
    return v0
.end method

.method public getDomConfig()Lmf/org/w3c/dom/DOMConfiguration;
    .locals 0

    return-object p0
.end method

.method public getFilter()Lmf/org/w3c/dom/ls/LSSerializerFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    return-object v0
.end method

.method public getNewLine()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/OutputFormat;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_6

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    :cond_6
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_7
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v0

    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_9
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_a

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v0

    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_b
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_c

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v0

    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_d
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_6
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_f
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_10

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_7
    return-object v0

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_11
    const-string/jumbo v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    const-string/jumbo v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_12
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_13
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_14

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_8
    return-object v0

    :cond_14
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_15
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_16

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_9
    return-object v0

    :cond_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_17
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_19

    :cond_18
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_19
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_18

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_18

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_18

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_18

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_18

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_1a
    const-string/jumbo v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    :cond_1b
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    return-object v0

    :cond_1d
    const-string/jumbo v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1
.end method

.method public getParameterNames()Lmf/org/w3c/dom/DOMStringList;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "namespaces"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "split-cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "discard-default-content"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "xml-declaration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "canonical-form"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate-if-schema"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "validate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "check-character-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "datatype-normalization"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "format-pretty-print"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "normalize-characters"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "well-formed"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "infoset"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "namespace-declarations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "element-content-whitespace"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "entities"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "cdata-sections"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "comments"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "ignore-unknown-character-denormalizations"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "error-handler"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmf/org/apache/xerces/dom/DOMStringListImpl;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fRecognizedParameters:Lmf/org/w3c/dom/DOMStringList;

    goto/16 :goto_0
.end method

.method public setFilter(Lmf/org/w3c/dom/ls/LSSerializerFilter;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-object p1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    return-void
.end method

.method public setNewLine(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v0, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->setLineSeparator(Ljava/lang/String;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/16 v4, 0x9

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const-string/jumbo v0, "error-handler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "resource-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_0
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string/jumbo v0, "infoset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "xml-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "split-cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string/jumbo v0, "discard-default-content"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "well-formed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string/jumbo v0, "entities"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string/jumbo v0, "cdata-sections"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "comments"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "format-pretty-print"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string/jumbo v0, "canonical-form"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_2
    if-nez v1, :cond_19

    :cond_3
    :goto_0
    return-void

    :cond_4
    if-eqz v1, :cond_3

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x5

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x9

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, -0x101

    :goto_1
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_6
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x100

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x2

    :goto_2
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    goto :goto_0

    :cond_8
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    if-nez v1, :cond_a

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x11

    :goto_3
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_a
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x10

    goto :goto_3

    :cond_b
    if-nez v1, :cond_c

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x41

    :goto_4
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto :goto_0

    :cond_c
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x40

    goto :goto_4

    :cond_d
    if-nez v1, :cond_e

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x3

    :goto_5
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_e
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_f
    if-nez v1, :cond_10

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x5

    :goto_6
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_10
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x4

    goto :goto_6

    :cond_11
    if-nez v1, :cond_12

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x9

    :goto_7
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_12
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x8

    goto :goto_7

    :cond_13
    if-nez v1, :cond_14

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit8 v0, v0, -0x21

    :goto_8
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_14
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit8 v0, v0, 0x20

    goto :goto_8

    :cond_15
    if-nez v1, :cond_16

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, -0x801

    :goto_9
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    goto/16 :goto_0

    :cond_16
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x800

    goto :goto_9

    :cond_17
    const-string/jumbo v0, "validate-if-schema"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "validate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "check-character-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "datatype-normalization"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "normalize-characters"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "namespace-declarations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "element-content-whitespace"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_18
    if-nez v1, :cond_3

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_19
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_SUPPORTED"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1a
    if-nez v1, :cond_1b

    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    and-int/lit16 v0, v0, -0x201

    :goto_a
    int-to-short v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    goto/16 :goto_0

    :cond_1b
    iget-short v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->features:S

    or-int/lit16 v0, v0, 0x200

    goto :goto_a

    :cond_1c
    const-string/jumbo v0, "ignore-unknown-character-denormalizations"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1d
    if-nez p2, :cond_1f

    :cond_1e
    check-cast p2, Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object p2, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    goto/16 :goto_0

    :cond_1f
    instance-of v0, p2, Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v0, :cond_1e

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "TYPE_MISMATCH_ERR"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x11

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_20
    const-string/jumbo v0, "schema-location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "schema-type"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    :goto_b
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "FEATURE_NOT_FOUND"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_21
    if-nez p2, :cond_0

    goto :goto_b
.end method

.method public write(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/ls/LSOutput;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    move-object v1, v0

    :goto_0
    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSOutput;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, v1, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSOutput;->getByteStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSOutput;->getCharacterStream()Ljava/io/Writer;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/w3c/dom/ls/LSOutput;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_6

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_a

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_b

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v5, :cond_c

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v4

    :cond_2
    return v4

    :cond_3
    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-eqz v0, :cond_4

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    move-object v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v0}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    goto :goto_3

    :cond_5
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UTF-8"

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    :try_start_1
    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_d

    :goto_4
    new-instance v0, Lmf/org/w3c/dom/ls/LSException;

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "unsupported-encoding"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x52

    invoke-direct {v0, v3, v2}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    throw v0

    :cond_7
    if-eqz v3, :cond_8

    :try_start_3
    invoke-static {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_8
    :try_start_5
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "no-output-specified"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_9

    :goto_5
    new-instance v2, Lmf/org/w3c/dom/ls/LSException;

    const/16 v3, 0x52

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v2
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catch_2
    move-exception v0

    :try_start_6
    sget-object v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-eq v0, v2, :cond_e

    const/16 v2, 0x52

    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_9
    :try_start_7
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v3, "no-output-specified"

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v3, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    :catch_3
    move-exception v0

    :try_start_8
    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_f

    :goto_6
    const/16 v2, 0x52

    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_a
    :try_start_9
    check-cast p1, Lmf/org/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_7
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v5

    :cond_b
    :try_start_a
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V

    goto :goto_7

    :cond_c
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_7

    :cond_d
    :try_start_b
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    const-string/jumbo v3, "unsupported-encoding"

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v0, 0x3

    iput-short v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v0, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :cond_e
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v4

    :cond_f
    :try_start_c
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v3, 0x2

    iput-short v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v3, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_6
.end method

.method public writeToString(Lmf/org/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;,
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    move-object v1, v0

    :goto_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-direct {p0, v1, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v3, "UTF-16"

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v2, v5, :cond_5

    const-string/jumbo v0, "http://apache.org/xml/serializer"

    const-string/jumbo v2, "unable-to-serialize-node"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_6

    :goto_1
    new-instance v2, Lmf/org/w3c/dom/ls/LSException;

    const/16 v3, 0x52

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    throw v0

    :cond_1
    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-eqz v0, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    move-object v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v0}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    goto :goto_2

    :cond_3
    :try_start_2
    check-cast p1, Lmf/org/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_2
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_3
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    :try_end_3
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-eq v0, v2, :cond_7

    const/16 v2, 0x52

    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_5
    :try_start_5
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_5
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_6
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "STRING_TOO_LONG"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_6
    :try_start_7
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    const-string/jumbo v3, "unable-to-serialize-node"

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v3, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z
    :try_end_7
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return-object v4
.end method

.method public writeToURI(Lmf/org/w3c/dom/Node;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/ls/LSException;
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlVersion(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    move-object v1, v0

    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getInputEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_1
    :goto_1
    :try_start_0
    invoke-direct {p0, v1, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->prepareForSerialization(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/w3c/dom/Node;)V

    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/OutputFormat;->setEncoding(Ljava/lang/String;)V

    invoke-static {p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_6

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_7

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S
    :try_end_0
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eq v0, v4, :cond_8

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v3

    :cond_2
    return v3

    :cond_3
    const-string/jumbo v1, "1.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    if-eqz v0, :cond_4

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->serializer:Lmf/org/apache/xml/serialize/XMLSerializer;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->copySettings(Lmf/org/apache/xml/serialize/XMLSerializer;Lmf/org/apache/xml/serialize/XMLSerializer;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    move-object v1, v0

    goto :goto_0

    :cond_4
    new-instance v0, Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {v0}, Lmf/org/apache/xml/serialize/XML11Serializer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->xml11Serializer:Lmf/org/apache/xml/serialize/XML11Serializer;

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->initSerializer(Lmf/org/apache/xml/serialize/XMLSerializer;)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/DOMSerializerImpl;->_getXmlEncoding(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "UTF-8"

    goto :goto_1

    :cond_6
    :try_start_1
    check-cast p1, Lmf/org/w3c/dom/Document;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Document;)V
    :try_end_1
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v4

    :cond_7
    :try_start_2
    check-cast p1, Lmf/org/w3c/dom/DocumentFragment;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    :try_end_2
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    throw v0

    :cond_8
    :try_start_4
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->serialize(Lmf/org/w3c/dom/Element;)V
    :try_end_4
    .catch Lmf/org/w3c/dom/ls/LSException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_5
    sget-object v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-eq v0, v2, :cond_9

    const/16 v2, 0x52

    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->clearDocumentState()V

    return v3

    :catch_2
    move-exception v0

    :try_start_6
    iget-object v2, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-nez v2, :cond_a

    :goto_4
    const/16 v2, 0x52

    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/DOMUtil;->createLSException(SLjava/lang/Throwable;)Lmf/org/w3c/dom/ls/LSException;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/w3c/dom/ls/LSException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/ls/LSException;

    throw v0

    :cond_a
    new-instance v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    const/4 v3, 0x2

    iput-short v3, v2, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v3, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method
