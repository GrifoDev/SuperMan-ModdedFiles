.class Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;
.source "XSDKeyrefTraverser.java"


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractIDConstraintTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    return-void
.end method


# virtual methods
.method traverse(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v7, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v4

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v4, v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    aget-object v1, v4, v1

    check-cast v1, Lmf/org/apache/xerces/xni/QName;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v5, 0x5

    invoke-virtual {v2, p3, v5, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    if-nez v2, :cond_3

    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_6

    new-instance v1, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    iget-object v3, p3, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iget-object v5, p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-direct {v1, v3, v0, v5, v2}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    invoke-virtual {p0, v1, p1, p3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->traverseIdentityConstraint(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_0
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_1
    const-string/jumbo v0, "s4s-att-must-appear"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_2
    const-string/jumbo v0, "s4s-att-must-appear"

    new-array v1, v9, [Ljava/lang/Object;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    aput-object v2, v1, v7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_3
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v5

    if-ne v5, v8, :cond_5

    :cond_4
    check-cast v2, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    const-string/jumbo v2, "src-resolve"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v1, v5, v7

    const-string/jumbo v1, "identity constraint key/unique"

    aput-object v1, v5, v8

    invoke-virtual {p0, v2, v5, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v2, v3

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v4, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-void

    :cond_7
    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getFieldCount()I

    move-result v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getFieldCount()I

    move-result v5

    if-ne v3, v5, :cond_8

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    if-eqz v0, :cond_9

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v0

    if-eqz v0, :cond_a

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_b

    move-object v0, v1

    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v1, "c-props-correct.2"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    invoke-virtual {p0, v1, v3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDKeyrefTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p4, p2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_2

    :cond_a
    invoke-virtual {p4, p2, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addIDConstraintDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;Ljava/lang/String;)V

    goto :goto_3

    :cond_b
    instance-of v2, v0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    if-nez v2, :cond_c

    move-object v0, v1

    goto :goto_4

    :cond_c
    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    goto :goto_4
.end method
