.class public Lmf/org/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;
.source "DOMNormalizer.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAllWhitespace:Z

.field protected final fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field private final fAttrQName:Lmf/org/apache/xerces/xni/QName;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private final fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lmf/org/apache/xerces/xni/QName;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lmf/org/apache/xerces/dom/DOMNormalizer;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    const/16 v1, 0x10

    new-array v1, v1, [C

    invoke-direct {v0, v1, v2, v2}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method public static final isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 8

    instance-of v0, p4, Lmf/org/apache/xerces/dom/AttrImpl;

    if-nez v0, :cond_2

    :cond_0
    invoke-interface {p4}, Lmf/org/w3c/dom/Attr;->getChildNodes()Lmf/org/w3c/dom/NodeList;

    move-result-object v7

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    invoke-interface {v7}, Lmf/org/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-ge v6, v0, :cond_3

    invoke-interface {v7, v6}, Lmf/org/w3c/dom/NodeList;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_4

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0, p6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move-object v0, p4

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2, p5, p6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p4}, Lmf/org/w3c/dom/Attr;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_6

    :cond_5
    :goto_2
    if-nez v0, :cond_1

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "UndeclaredEntRefInAttrValue"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p4}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "UndeclaredEntRefInAttrValue"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-interface {v2}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string/jumbo v2, "*"

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lmf/org/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Entity;

    goto :goto_2
.end method

.method public static final isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 9

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    if-nez p4, :cond_3

    const/4 v6, 0x0

    move v0, v6

    :cond_2
    :goto_0
    if-ge v0, v8, :cond_1b

    add-int/lit8 v6, v0, 0x1

    aget-char v1, v7, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x5d

    if-eq v1, v0, :cond_14

    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move v0, v6

    :cond_4
    :goto_1
    if-ge v0, v8, :cond_1b

    add-int/lit8 v6, v0, 0x1

    aget-char v1, v7, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-nez v0, :cond_5

    const/16 v0, 0x5d

    if-eq v1, v0, :cond_9

    move v0, v6

    goto :goto_1

    :cond_5
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_2
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "InvalidCharInCDSect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto :goto_1

    :cond_7
    if-ge v6, v8, :cond_6

    add-int/lit8 v0, v6, 0x1

    aget-char v2, v7, v6

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_8

    move v6, v0

    goto :goto_2

    :cond_8
    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v2

    if-nez v2, :cond_4

    move v6, v0

    goto :goto_2

    :cond_9
    if-lt v6, v8, :cond_b

    :cond_a
    move v0, v6

    goto :goto_1

    :cond_b
    aget-char v0, v7, v6

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_a

    move v0, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v8, :cond_e

    :cond_c
    if-lt v0, v8, :cond_f

    :cond_d
    move v0, v6

    goto :goto_1

    :cond_e
    aget-char v1, v7, v0

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_c

    goto :goto_3

    :cond_f
    aget-char v0, v7, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_d

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto/16 :goto_1

    :cond_10
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    :goto_4
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "InvalidCharInCDSect"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v0, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_12
    if-ge v6, v8, :cond_11

    add-int/lit8 v0, v6, 0x1

    aget-char v2, v7, v6

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_13

    move v6, v0

    goto :goto_4

    :cond_13
    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v2

    if-nez v2, :cond_2

    move v6, v0

    goto :goto_4

    :cond_14
    if-lt v6, v8, :cond_16

    :cond_15
    move v0, v6

    goto/16 :goto_0

    :cond_16
    aget-char v0, v7, v6

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_15

    move v0, v6

    :goto_5
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v8, :cond_19

    :cond_17
    if-lt v0, v8, :cond_1a

    :cond_18
    move v0, v6

    goto/16 :goto_0

    :cond_19
    aget-char v1, v7, v0

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_17

    goto :goto_5

    :cond_1a
    aget-char v0, v7, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_18

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "CDEndInContent"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_1b
    return-void
.end method

.method public static final isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 9

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    if-nez p4, :cond_4

    const/4 v6, 0x0

    move v0, v6

    :cond_2
    :goto_0
    if-ge v0, v8, :cond_11

    add-int/lit8 v6, v0, 0x1

    aget-char v1, v7, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_10

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    move v0, v6

    :cond_5
    :goto_1
    if-ge v0, v8, :cond_11

    add-int/lit8 v6, v0, 0x1

    aget-char v1, v7, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x2d

    if-eq v1, v0, :cond_b

    :cond_6
    move v0, v6

    goto :goto_1

    :cond_7
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_2
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v6, -0x1

    aget-char v4, v7, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto :goto_1

    :cond_9
    if-ge v6, v8, :cond_8

    add-int/lit8 v0, v6, 0x1

    aget-char v2, v7, v6

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_a

    move v6, v0

    goto :goto_2

    :cond_a
    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v6, v0

    goto :goto_2

    :cond_b
    if-ge v6, v8, :cond_6

    aget-char v0, v7, v6

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_6

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto :goto_1

    :cond_c
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_3
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "InvalidCharInComment"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v6, -0x1

    aget-char v4, v7, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_e
    if-ge v6, v8, :cond_d

    add-int/lit8 v0, v6, 0x1

    aget-char v2, v7, v6

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_f

    move v6, v0

    goto :goto_3

    :cond_f
    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v6, v0

    goto :goto_3

    :cond_10
    if-ge v6, v8, :cond_3

    aget-char v0, v7, v6

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_3

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v1, "DashDashInComment"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v0, v6

    goto/16 :goto_0

    :cond_11
    return-void
.end method

.method public static final isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 9

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    if-nez p4, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    :goto_0
    if-ge v1, v8, :cond_d

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v7, v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v1

    if-nez v1, :cond_9

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :cond_4
    :goto_1
    if-ge v1, v8, :cond_d

    add-int/lit8 v0, v1, 0x1

    aget-char v1, v7, v1

    invoke-static {v1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v0, -0x1

    aget-char v2, v7, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    move v6, v0

    :goto_2
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "InvalidXMLCharInDOM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v6, -0x1

    aget-char v4, v7, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v1, v6

    goto :goto_1

    :cond_7
    if-ge v0, v8, :cond_6

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v7, v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_8

    move v6, v1

    goto :goto_2

    :cond_8
    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v1

    goto :goto_2

    :cond_9
    add-int/lit8 v1, v0, -0x1

    aget-char v2, v7, v1

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    move v6, v0

    :goto_3
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "InvalidXMLCharInDOM"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v6, -0x1

    aget-char v4, v7, v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "wf-invalid-character"

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move v1, v6

    goto/16 :goto_0

    :cond_b
    if-ge v0, v8, :cond_a

    add-int/lit8 v1, v0, 0x1

    aget-char v0, v7, v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v3

    if-nez v3, :cond_c

    move v6, v1

    goto :goto_3

    :cond_c
    invoke-static {v2, v0}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v0

    if-nez v0, :cond_2

    move v6, v1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private processDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lmf/org/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_6

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v3

    if-nez p2, :cond_4

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-interface {v1}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v6

    move-object v4, p2

    :goto_1
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/RevalidationHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDTDLoader(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    const/4 v7, 0x1

    invoke-virtual {v0, v1, v7}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lmf/org/apache/xerces/xni/parser/XMLErrorHandler;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v1, Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lmf/org/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_8

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    move-object v6, v0

    move-object v4, p2

    move-object v3, v0

    goto :goto_1

    :catch_0
    move-exception v1

    if-eqz v0, :cond_3

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    if-nez v1, :cond_7

    :goto_4
    throw v0

    :cond_7
    sget-object v2, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v2, p1, v1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_4

    :cond_8
    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lmf/org/apache/xerces/impl/dtd/XMLDTDLoader;)V

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3
.end method

.method public static final reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-eq p4, v0, :cond_2

    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    iput-object p3, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    int-to-short v0, p4

    iput-short v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iput-object p2, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p5, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    iput-object v0, p1, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    invoke-interface {p0, p1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v0
.end method


# virtual methods
.method protected final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V
    .locals 3

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq p1, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {p3, v0, v1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p2, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    instance-of v0, v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-nez v0, :cond_8

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ELEMENT_PSVI"

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-nez v2, :cond_3

    :goto_1
    instance-of v2, v1, Lmf/org/apache/xerces/dom/ElementNSImpl;

    if-nez v2, :cond_4

    :goto_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ElementImpl;->getTextContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    :cond_2
    :goto_3
    return-void

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v2, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    goto :goto_1

    :cond_4
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v3, v2

    :goto_4
    move-object v2, v1

    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v2

    move-object v3, v2

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_2

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V
    .locals 2

    invoke-interface {p2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1, v0, p2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method protected final namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 17

    if-nez p2, :cond_3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_d

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_12

    :cond_1
    :goto_0
    if-nez p2, :cond_13

    :cond_2
    return-void

    :cond_3
    const/4 v2, 0x0

    move v8, v2

    :goto_1
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v2

    if-ge v8, v2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Attr;

    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1

    :cond_5
    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v4, :cond_a

    :cond_6
    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_7
    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v2}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_8

    const/4 v2, 0x0

    :cond_8
    invoke-interface {v3, v4, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_9
    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    :cond_a
    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v2, v3, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "CantBindXMLNS"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v7, "CantBindXMLNS"

    const/4 v6, 0x2

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v4, v2, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v3, :cond_f

    :cond_e
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v2, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3, v2, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v2, :cond_11

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NullLocalElementName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v7, "NullLocalElementName"

    const/4 v6, 0x2

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NullLocalElementName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v7, "NullLocalElementName"

    const/4 v6, 0x3

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v14, v2

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v14, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/Attr;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object v6, v2, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->normalize()V

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v15

    if-eqz v7, :cond_16

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v2, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v2, :cond_17

    :cond_14
    :goto_8
    if-nez v15, :cond_19

    move-object v2, v6

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    :cond_15
    :goto_9
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_6

    :cond_16
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_7

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v8

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v8}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v2, :cond_18

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v3

    invoke-static {v2, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v2

    :goto_a
    if-nez v2, :cond_14

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "wf-invalid-character-in-node-name"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v8, "Attr"

    aput-object v8, v4, v5

    const/4 v5, 0x1

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v13, "wf-invalid-character-in-node-name"

    const/4 v12, 0x2

    invoke-static/range {v8 .. v13}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_8

    :cond_18
    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_a

    :cond_19
    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1e

    :cond_1a
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v3, v2

    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    if-nez v15, :cond_1f

    :goto_c
    move-object v2, v6

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v15}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v5, :cond_20

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_21

    :cond_1c
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v3, v2, :cond_22

    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NS"

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v2, 0x2

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NS"

    invoke-direct {v8, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v3

    move-object v3, v2

    move/from16 v2, v16

    goto :goto_d

    :cond_1e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_b

    :cond_1f
    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto/16 :goto_c

    :cond_20
    if-ne v2, v4, :cond_1b

    goto/16 :goto_9

    :cond_21
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v2, v5, :cond_1c

    move-object v3, v2

    :goto_e
    invoke-interface {v6, v3}, Lmf/org/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1d

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/dom/ElementImpl;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5, v3, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v2, v3, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_e

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v2, :cond_25

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NullLocalAttrName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v7, "NullLocalAttrName"

    const/4 v6, 0x2

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9

    :cond_25
    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "NullLocalAttrName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v7, "NullLocalAttrName"

    const/4 v6, 0x3

    invoke-static/range {v2 .. v7}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9
.end method

.method final normalizeAttributeValue(Ljava/lang/String;Lmf/org/w3c/dom/Attr;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x20

    const/16 v9, 0xa

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-interface {p2}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    if-lt v1, v3, :cond_2

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iput v0, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v1, v0

    :goto_1
    if-ge v0, v3, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v10, v1, v5

    move v1, v2

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p1

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    new-array v4, v3, [C

    iput-object v4, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    goto :goto_0

    :cond_3
    if-eq v4, v9, :cond_0

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v7, v6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    int-to-char v4, v4

    aput-char v4, v5, v7

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v10, v1, v5

    add-int/lit8 v1, v0, 0x1

    if-lt v1, v3, :cond_6

    :cond_5
    move v1, v2

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v9, :cond_5

    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    :goto_3
    return-object p1

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected normalizeDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/DOMConfigurationImpl;)V
    .locals 9

    const/4 v8, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Lmf/org/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-object v1, v3

    move-object v4, v3

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v2, "error-handler"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/DOMErrorHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v0, :cond_7

    :goto_1
    :try_start_0
    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    if-eq v4, v0, :cond_9

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :cond_1
    :goto_3
    move-object v1, v0

    if-eqz v1, :cond_b

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    const-string/jumbo v4, "http://www.w3.org/TR/REC-xml"

    if-nez v0, :cond_6

    move-object v0, v3

    :goto_4
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    sget-object v6, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v6, v4, v5}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iput-boolean v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v1, v0

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    invoke-virtual {v0, v6, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLComponent;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/parser/XMLComponent;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    goto :goto_0

    :cond_4
    sget-object v4, Lmf/org/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/RevalidationHandler;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v0, v6, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v6, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v0, v6, v2}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_5

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v1, v3

    goto :goto_5

    :cond_5
    move v0, v2

    goto :goto_6

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v0, p0}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v7, v7, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v2, v6, v7, v8, v8}, Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, v6, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0, v2, v6, v7, v3}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "no"

    :goto_7
    invoke-interface {v2, v6, v7, v0, v3}, Lmf/org/apache/xerces/impl/RevalidationHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "yes"

    goto :goto_7

    :cond_9
    if-nez v1, :cond_a

    move-object v0, v3

    :goto_8
    :try_start_1
    invoke-direct {p0, v5, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->processDTD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v1, :cond_d

    :goto_9
    sget-object v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-eq v0, v1, :cond_e

    throw v0

    :cond_a
    const/4 v0, 0x0

    :try_start_2
    aget-object v0, v1, v0

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v0, :cond_c

    :goto_a
    return-void

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v0, v4, v5, v1}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_a

    :cond_d
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {v1, v3}, Lmf/org/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v1, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v1, v4, v5, v2}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/RevalidationHandler;)V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    goto :goto_9

    :cond_e
    return-void
.end method

.method protected normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 12

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p1, v1, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->pushContext()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v10, p1

    check-cast v10, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v3, 0x0

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_8

    if-nez v3, :cond_b

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v0, :cond_f

    :goto_4
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/ElementImpl;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :cond_3
    :goto_5
    move-object v1, v0

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v0, v1

    goto :goto_5

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v0, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_6
    if-nez v0, :cond_1

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

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_6

    :cond_6
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v10}, Lmf/org/apache/xerces/dom/ElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttributeMap;

    move-object v3, v0

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p0, v10, v3}, Lmf/org/apache/xerces/dom/DOMNormalizer;->namespaceFixUp(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/AttributeMap;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    invoke-virtual {v10, v0}, Lmf/org/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    add-int/lit8 v0, v1, -0x1

    :goto_8
    add-int/lit8 v1, v0, 0x1

    goto :goto_7

    :cond_a
    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    goto :goto_8

    :cond_b
    const/4 v0, 0x0

    move v11, v0

    :goto_9
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v0

    if-ge v11, v0, :cond_2

    invoke-virtual {v3, v11}, Lmf/org/apache/xerces/dom/AttributeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/Attr;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->normalize()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_d

    :cond_c
    :goto_a
    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_9

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Lmf/org/w3c/dom/NamedNodeMap;Lmf/org/w3c/dom/Attr;Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v0, :cond_e

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    :goto_b
    if-nez v0, :cond_c

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

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v9, "wf-invalid-character-in-node-name"

    const/4 v8, 0x2

    invoke-static/range {v4 .. v9}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_a

    :cond_e
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_b

    :cond_f
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, v3, v1, v10}, Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lmf/org/apache/xerces/dom/AttributeMap;Lmf/org/apache/xerces/dom/CoreDocumentImpl;Lmf/org/apache/xerces/dom/ElementImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p0, v10, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lmf/org/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v0, :cond_11

    :goto_c
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->popContext()V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p0, v10, v0}, Lmf/org/apache/xerces/dom/DOMNormalizer;->updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_c

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_13

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_14

    :cond_12
    :goto_d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    sget-object v1, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_13
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v4, 0x0

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lmf/org/apache/xerces/dom/TextImpl;->insertData(ILjava/lang/String;)V

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v1

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_12

    check-cast p1, Lmf/org/w3c/dom/Comment;

    invoke-interface {p1}, Lmf/org/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_d

    :pswitch_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    invoke-static {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_15
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/dom/DOMNormalizer;->expandEntityRef(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)V

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_17

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_e
    if-nez v1, :cond_18

    :cond_16
    return-object v0

    :cond_17
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_e

    :cond_18
    if-eqz v0, :cond_16

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    return-object v1

    :pswitch_4
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_19

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-nez v0, :cond_1c

    :goto_f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_1d

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v1, v2, v3, v0, v4}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isCDataWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_19
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_1b

    :cond_1a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lmf/org/w3c/dom/Node;->replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v0

    :cond_1b
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object v1

    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/RevalidationHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/impl/RevalidationHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_f

    :cond_1d
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v8

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v1, :cond_1e

    :goto_10
    const-string/jumbo v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v7

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v8, v7, v0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lmf/org/w3c/dom/Node;

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v1, "cdata-sections-splitted"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v5, "cdata-sections-splitted"

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    move-object v0, v6

    move-object p1, v7

    goto :goto_10

    :cond_1e
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_10

    :pswitch_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_22

    :cond_1f
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_23

    if-nez v1, :cond_24

    const/4 v0, -0x1

    :goto_11
    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    :cond_20
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2a

    :cond_21
    :goto_12
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;

    iput-object p1, v0, Lmf/org/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    if-nez v0, :cond_2b

    check-cast p1, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :cond_22
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    move-object v0, p1

    check-cast v0, Lmf/org/w3c/dom/Text;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    return-object p1

    :cond_23
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto/16 :goto_0

    :cond_24
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    goto :goto_11

    :cond_25
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_28

    :cond_26
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_29

    :cond_27
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v1, v1, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_20

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    goto/16 :goto_0

    :cond_28
    const/4 v1, 0x6

    if-ne v0, v1, :cond_26

    goto/16 :goto_0

    :cond_29
    const/16 v1, 0x8

    if-ne v0, v1, :cond_27

    goto/16 :goto_0

    :cond_2a
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_21

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_12

    :cond_2b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    check-cast p1, Lmf/org/apache/xerces/dom/TextImpl;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v0, :cond_2d

    :cond_2c
    :goto_13
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lmf/org/apache/xerces/impl/RevalidationHandler;

    check-cast p1, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {p1}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/RevalidationHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v0, v0, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_2c

    move-object v6, p1

    check-cast v6, Lmf/org/w3c/dom/ProcessingInstruction;

    invoke-interface {v6}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    :goto_14
    if-eqz v0, :cond_2f

    :goto_15
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    invoke-interface {v6}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_13

    :cond_2e
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    :cond_2f
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

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const-string/jumbo v5, "wf-invalid-character-in-node-name"

    const/4 v4, 0x2

    invoke-static/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lmf/org/w3c/dom/DOMErrorHandler;Lmf/org/apache/xerces/dom/DOMErrorImpl;Lmf/org/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_15

    nop

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

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/w3c/dom/Element;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v6, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_1
    invoke-interface {p2, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v1

    const-string/jumbo v2, "ATTRIBUTE_PSVI"

    invoke-interface {v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string/jumbo v3, "ATTRIBUTE_DECLARED"

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    move-object v1, v5

    :goto_2
    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :cond_0
    :goto_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v4

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v3

    if-nez v3, :cond_3

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    if-nez v3, :cond_4

    move v2, v7

    :goto_4
    if-nez v2, :cond_5

    :goto_5
    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-nez v2, :cond_6

    :goto_6
    move-object v2, v4

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lmf/org/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v2, v2, Lmf/org/apache/xerces/dom/DOMConfigurationImpl;->features:S

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v2

    invoke-interface {v4, v1}, Lmf/org/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    if-nez v2, :cond_0

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    goto :goto_3

    :cond_3
    move-object v2, v3

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    goto :goto_4

    :cond_4
    move-object v2, v3

    check-cast v2, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    goto :goto_4

    :cond_5
    move-object v2, v0

    check-cast v2, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2, v4, v9}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    goto :goto_5

    :cond_6
    move-object v2, v4

    check-cast v2, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    goto :goto_6

    :cond_7
    invoke-interface {p2, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "ID"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, v2

    goto :goto_2

    :cond_8
    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v1, v4, v9}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    move-object v1, v2

    goto :goto_2

    :cond_9
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final updateQName(Lmf/org/w3c/dom/Node;Lmf/org/apache/xerces/xni/QName;)V
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v3, :cond_2

    move-object v0, v1

    :goto_1
    iput-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_2
    iput-object v1, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
