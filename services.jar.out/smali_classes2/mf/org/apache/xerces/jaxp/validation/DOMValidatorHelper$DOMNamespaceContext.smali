.class final Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
.super Ljava/lang/Object;
.source "DOMValidatorHelper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DOMNamespaceContext"
.end annotation


# instance fields
.field protected fDOMContextBuilt:Z

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field final synthetic this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iput v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    return-void
.end method

.method private declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    aput-object p2, v0, v1

    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    goto :goto_0
.end method

.method private fillNamespaceContext()V
    .locals 10

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$1(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    :goto_0
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_3

    :cond_2
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v7

    move v4, v5

    :goto_1
    if-ge v4, v7, :cond_2

    invoke-interface {v6, v4}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    invoke-interface {v0}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v9, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v9, v9, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-static {v8, v9, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$2(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;Lmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Node;)V

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v0, v8, :cond_5

    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v8, :cond_6

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v2

    :goto_4
    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    iget-object v0, v0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v2

    :goto_5
    invoke-direct {p0, v8, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->declarePrefix0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$3(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/SymbolTable;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private getURI0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result v0

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    if-eqz v1, :cond_2

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;->containsPrefix(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->getURI0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fillNamespaceContext()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    goto :goto_1
.end method

.method public popContext()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    return-void
.end method

.method public pushContext()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->this$0:Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-static {v0}, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;->access$0(Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lmf/org/apache/xerces/util/NamespaceSupport;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fDOMContextBuilt:Z

    iput v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->fNamespaceSize:I

    return-void
.end method
