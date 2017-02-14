.class Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDAbstractIDConstraintTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    :goto_0
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v6, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_0
    :goto_1
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/identity/Selector;

    invoke-direct {v2, v0, p1}, Lmf/org/apache/xerces/impl/xs/identity/Selector;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Selector$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->setSelector(Lmf/org/apache/xerces/impl/xs/identity/Selector;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v6, v0

    :goto_2
    if-eqz v6, :cond_11

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v6, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_1
    :goto_3
    if-nez v0, :cond_e

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_f

    :goto_4
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_1
    new-instance v0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v5, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/identity/Field;

    invoke-direct {v2, v0, p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;-><init>(Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addField(Lmf/org/apache/xerces/impl/xs/identity/Field;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v1, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object v6, v0

    goto :goto_2

    :cond_2
    const-string/jumbo v0, "s4s-elt-must-match.2"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "identity constraint"

    aput-object v2, v1, v4

    const-string/jumbo v2, "(annotation?, selector, field+)"

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v4

    :cond_3
    invoke-virtual {p0, v6, p4, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v6, v0

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "s4s-elt-must-match.2"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "identity constraint"

    aput-object v2, v1, v4

    const-string/jumbo v2, "(annotation?, selector, field+)"

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v4

    :cond_5
    move-object v0, p0

    move-object v1, p2

    move-object v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v0, "s4s-elt-must-match.1"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "identity constraint"

    aput-object v2, v1, v4

    const-string/jumbo v2, "(annotation?, selector, field+)"

    aput-object v2, v1, v7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v4

    :cond_7
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string/jumbo v1, "s4s-elt-must-match.1"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string/jumbo v5, "(annotation?)"

    aput-object v5, v2, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    :goto_5
    if-eqz v0, :cond_0

    const-string/jumbo v1, "s4s-elt-must-match.1"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string/jumbo v5, "(annotation?)"

    aput-object v5, v2, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, v0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_5

    :cond_9
    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "s4s-att-must-appear"

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v4

    :cond_b
    const-string/jumbo v0, "s4s-elt-must-match.2"

    new-array v1, v8, [Ljava/lang/Object;

    const-string/jumbo v2, "identity constraint"

    aput-object v2, v1, v4

    const-string/jumbo v2, "(annotation?, selector, field+)"

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return v4

    :cond_c
    const-string/jumbo v0, "s4s-elt-must-match.1"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "identity constraint"

    aput-object v2, v1, v4

    const-string/jumbo v2, "(annotation?, selector, field+)"

    aput-object v2, v1, v7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_2

    :cond_d
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0, v3, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto/16 :goto_3

    :cond_e
    const-string/jumbo v1, "s4s-elt-must-match.1"

    new-array v2, v9, [Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string/jumbo v5, "(annotation?)"

    aput-object v5, v2, v7

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    invoke-virtual {p0, v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_f
    move-object v0, p0

    move-object v1, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->addAnnotation(Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;)V

    goto/16 :goto_4

    :cond_10
    const-string/jumbo v0, "s4s-att-must-appear"

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xpath/XPathException;->getKey()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-virtual {p0, v0, v2, v6}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return v4

    :cond_11
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v0

    if-gtz v0, :cond_12

    return v4

    :cond_12
    return v7
.end method
