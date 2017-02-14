.class Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;
.super Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;
.source "XSDSimpleTypeTraverser.java"


# instance fields
.field private fIsBuiltIn:Z


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser;-><init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return-void
.end method

.method private final checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne p2, v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    goto :goto_0
.end method

.method private errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "string"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sparse-switch p3, :sswitch_data_0

    return-object v5

    :sswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :sswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    const/4 v1, 0x1

    new-array v6, v1, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v4, v6, v3

    move-object v1, p1

    move-object v2, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_1
    .end sparse-switch
.end method

.method private findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    const/16 v6, 0x10

    const/4 v5, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p3, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, p5, v1, p3, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->getGlobalDecl(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;ILmf/org/apache/xerces/xni/QName;Lmf/org/w3c/dom/Element;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    if-ne v1, v6, :cond_3

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eq v0, v1, :cond_4

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getFinal()S

    move-result v1

    and-int/2addr v1, p4

    if-nez v1, :cond_6

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0

    :cond_1
    return-object v3

    :cond_2
    return-object v3

    :cond_3
    const-string/jumbo v0, "cos-st-restricts.1.1"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_4
    if-ne p4, v2, :cond_0

    iget-object v0, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->checkBuiltIn(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "cos-st-restricts.1.1"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-object v3

    :cond_5
    return-object v3

    :cond_6
    if-eq p4, v2, :cond_7

    if-eq p4, v6, :cond_8

    const/16 v0, 0x8

    if-eq p4, v0, :cond_9

    :goto_0
    return-object v3

    :cond_7
    const-string/jumbo v0, "st-props-correct.3"

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p2, v1, v4

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "cos-st-restricts.2.3.1.1"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "cos-st-restricts.3.3.1.1"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    aput-object p2, v1, v5

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_0
.end method

.method private genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, "#AnonType_"

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getDocument(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Document;

    move-result-object v2

    invoke-static {v2}, Lmf/org/apache/xerces/util/DOMUtil;->getRoot(Lmf/org/w3c/dom/Document;)Lmf/org/w3c/dom/Element;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0}, Lmf/org/apache/xerces/util/DOMUtil;->getParent(Lmf/org/w3c/dom/Element;)Lmf/org/w3c/dom/Element;

    move-result-object v0

    goto :goto_0
.end method

.method private getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 25

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    aget-object v3, p3, v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/util/XInt;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v3

    move/from16 v18, v3

    :goto_0
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v9

    const/4 v3, 0x0

    if-nez v9, :cond_2

    :cond_0
    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v4, v9

    move-object v9, v3

    :goto_1
    if-eqz v4, :cond_5

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "s4s-elt-must-match.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "(annotation?, (restriction | list | union))"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v7, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    return-object v3

    :cond_1
    move-object/from16 v0, p4

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fFinalDefault:S

    move/from16 v18, v3

    goto :goto_0

    :cond_2
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v9, v1, v4, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    if-nez v4, :cond_3

    :goto_2
    invoke-static {v9}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v4

    move-object v9, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v4

    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object v4, v9

    move-object v9, v3

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v3, "s4s-elt-must-match.2"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "(annotation?, (restriction | list | union))"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v3, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    return-object v3

    :cond_6
    const/4 v11, 0x2

    const/4 v6, 0x1

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    :goto_3
    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    if-nez v3, :cond_13

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    const/4 v5, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v5, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v6

    if-nez v21, :cond_14

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    :goto_5
    aget-object v10, v6, v3

    check-cast v10, Lmf/org/apache/xerces/xni/QName;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    aget-object v3, v6, v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/util/Vector;

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getFirstChildElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v12

    if-nez v12, :cond_15

    :cond_7
    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getSyntheticAnnotation(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_18

    move-object v3, v12

    move-object v5, v9

    :goto_6
    const/4 v7, 0x0

    if-eqz v21, :cond_1a

    :cond_8
    if-nez v10, :cond_1b

    :cond_9
    :goto_7
    const/4 v9, 0x0

    if-nez v19, :cond_1c

    :cond_a
    if-nez v3, :cond_20

    :cond_b
    if-eqz v21, :cond_2d

    :cond_c
    if-eqz v10, :cond_2e

    :goto_8
    if-nez v19, :cond_30

    :goto_9
    move-object v11, v7

    move-object/from16 v22, v3

    :goto_a
    if-eqz v21, :cond_33

    :cond_d
    if-eqz v11, :cond_34

    :goto_b
    if-nez v19, :cond_36

    :goto_c
    if-nez v20, :cond_39

    :cond_e
    const/4 v3, 0x0

    if-nez v21, :cond_3a

    if-nez v20, :cond_3c

    if-nez v19, :cond_3e

    :goto_d
    if-nez v21, :cond_40

    :cond_f
    move-object/from16 v4, v22

    :goto_e
    if-nez v4, :cond_42

    :cond_10
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v4, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v3

    :cond_11
    const/16 v11, 0x10

    const/4 v5, 0x1

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_3

    :cond_12
    const/16 v11, 0x8

    const/4 v3, 0x1

    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v21, v6

    goto :goto_3

    :cond_13
    const-string/jumbo v5, "s4s-elt-must-match.1"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "(annotation?, (restriction | list | union))"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_4

    :cond_14
    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    goto/16 :goto_5

    :cond_15
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v12, v6, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseAnnotationDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    if-nez v5, :cond_16

    move-object v3, v9

    :goto_10
    invoke-static {v12}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v5

    move-object/from16 v24, v5

    move-object v5, v3

    move-object/from16 v3, v24

    goto/16 :goto_6

    :cond_16
    if-eqz v9, :cond_17

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v9, v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    aput-object v5, v3, v7

    goto :goto_10

    :cond_17
    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    goto :goto_10

    :cond_18
    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSyntheticAnnotation(Lmf/org/w3c/dom/Element;Ljava/lang/String;[Ljava/lang/Object;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    move-result-object v5

    if-eqz v9, :cond_19

    const/4 v3, 0x2

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-object v8, v9, v8

    aput-object v8, v3, v7

    const/4 v7, 0x1

    aput-object v5, v3, v7

    move-object v5, v3

    move-object v3, v12

    goto/16 :goto_6

    :cond_19
    const/4 v3, 0x1

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v7, 0x0

    aput-object v5, v3, v7

    move-object v5, v3

    move-object v3, v12

    goto/16 :goto_6

    :cond_1a
    if-nez v20, :cond_8

    goto/16 :goto_7

    :cond_1b
    move-object/from16 v7, p0

    move-object v8, v4

    move-object/from16 v9, p1

    move-object/from16 v12, p4

    invoke-direct/range {v7 .. v12}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v7

    if-nez v7, :cond_9

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    if-eqz v8, :cond_9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fIsBuiltIn:Z

    const/4 v3, 0x0

    return-object v3

    :cond_1c
    if-eqz v17, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v8

    if-lez v8, :cond_a

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v23

    new-instance v9, Ljava/util/ArrayList;

    move/from16 v0, v23

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    move/from16 v22, v8

    :goto_11
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_a

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmf/org/apache/xerces/xni/QName;

    const/16 v15, 0x8

    move-object/from16 v11, p0

    move-object v12, v4

    move-object/from16 v13, p1

    move-object/from16 v16, p4

    invoke-direct/range {v11 .. v16}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->findDTValidator(Lmf/org/w3c/dom/Element;Ljava/lang/String;Lmf/org/apache/xerces/xni/QName;SLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v8

    if-nez v8, :cond_1e

    :cond_1d
    :goto_12
    add-int/lit8 v8, v22, 0x1

    move/from16 v22, v8

    goto :goto_11

    :cond_1e
    invoke-interface {v8}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v11

    const/4 v12, 0x3

    if-eq v11, v12, :cond_1f

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_1f
    invoke-interface {v8}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v11

    const/4 v8, 0x0

    :goto_13
    invoke-interface {v11}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v12

    if-ge v8, v12, :cond_1d

    invoke-interface {v11, v8}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_13

    :cond_20
    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v8

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    if-eqz v21, :cond_22

    :cond_21
    if-nez v10, :cond_23

    :goto_14
    if-eqz v7, :cond_25

    :goto_15
    invoke-static {v3}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    move-object v11, v7

    move-object/from16 v22, v3

    goto/16 :goto_a

    :cond_22
    if-nez v20, :cond_21

    if-nez v19, :cond_26

    move-object v11, v7

    move-object/from16 v22, v3

    goto/16 :goto_a

    :cond_23
    if-nez v20, :cond_24

    const-string/jumbo v8, "src-simple-type.2.a"

    :goto_16
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_14

    :cond_24
    const-string/jumbo v8, "src-simple-type.3.a"

    goto :goto_16

    :cond_25
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v7

    goto :goto_15

    :cond_26
    if-eqz v9, :cond_29

    move-object v8, v3

    move-object v3, v9

    :cond_27
    :goto_17
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v8, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v9

    if-nez v9, :cond_2a

    :cond_28
    :goto_18
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getNextSiblingElement(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Element;

    move-result-object v8

    if-nez v8, :cond_2c

    move-object v9, v3

    move-object v11, v7

    move-object/from16 v22, v8

    goto/16 :goto_a

    :cond_29
    new-instance v8, Ljava/util/ArrayList;

    const/4 v9, 0x2

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v24, v8

    move-object v8, v3

    move-object/from16 v3, v24

    goto :goto_17

    :cond_2a
    invoke-interface {v9}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v10

    const/4 v11, 0x3

    if-eq v10, v11, :cond_2b

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2b
    invoke-interface {v9}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v10

    const/4 v9, 0x0

    :goto_19
    invoke-interface {v10}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v11

    if-ge v9, v11, :cond_28

    invoke-interface {v10, v9}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    :cond_2c
    invoke-static {v8}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_27

    move-object v9, v3

    move-object v11, v7

    move-object/from16 v22, v8

    goto/16 :goto_a

    :cond_2d
    if-nez v20, :cond_c

    goto/16 :goto_8

    :cond_2e
    if-nez v20, :cond_2f

    const-string/jumbo v8, "src-simple-type.2.b"

    :goto_1a
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v11, v7

    move-object/from16 v22, v3

    goto/16 :goto_a

    :cond_2f
    const-string/jumbo v8, "src-simple-type.3.b"

    goto :goto_1a

    :cond_30
    if-nez v17, :cond_32

    :cond_31
    const-string/jumbo v8, "src-union-memberTypes-or-simpleTypes"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v11, v7

    move-object/from16 v22, v3

    goto/16 :goto_a

    :cond_32
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v8

    if-eqz v8, :cond_31

    goto/16 :goto_9

    :cond_33
    if-nez v20, :cond_d

    goto/16 :goto_b

    :cond_34
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    if-nez v21, :cond_35

    const/16 v3, 0x10

    :goto_1b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    return-object v3

    :cond_35
    const/4 v3, 0x2

    goto :goto_1b

    :cond_36
    if-nez v9, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v4, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    return-object v3

    :cond_38
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_37

    goto/16 :goto_c

    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "cos-st-restricts.2.1"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v7, 0x1

    invoke-interface {v11}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    move-object/from16 v0, p4

    invoke-virtual {v3, v6, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    move-object/from16 v0, p4

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->errorType(Ljava/lang/String;Ljava/lang/String;S)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    return-object v3

    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v18

    int-to-short v10, v0

    if-eqz v5, :cond_3b

    new-instance v12, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v3, v5

    invoke-direct {v12, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1c
    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    goto/16 :goto_d

    :cond_3b
    const/4 v12, 0x0

    goto :goto_1c

    :cond_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v18

    int-to-short v10, v0

    if-eqz v5, :cond_3d

    new-instance v12, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v3, v5

    invoke-direct {v12, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1d
    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    goto/16 :goto_d

    :cond_3d
    const/4 v12, 0x0

    goto :goto_1d

    :cond_3e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v12, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v18

    int-to-short v15, v0

    if-eqz v5, :cond_3f

    new-instance v17, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v3, v5

    move-object/from16 v0, v17

    invoke-direct {v0, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1e
    move-object/from16 v13, p1

    invoke-virtual/range {v12 .. v17}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeUnion(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    goto/16 :goto_d

    :cond_3f
    const/16 v17, 0x0

    goto :goto_1e

    :cond_40
    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v11, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseFacets(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;

    move-result-object v7

    iget-object v13, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->nodeAfterFacets:Lmf/org/w3c/dom/Element;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->facetdata:Lmf/org/apache/xerces/impl/dv/XSFacets;

    iget-short v9, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fPresentFacets:S

    iget-short v7, v7, Lmf/org/apache/xerces/impl/xs/traversers/XSDAbstractTraverser$FacetInfo;->fFixedFacets:S

    move-object/from16 v0, p0

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fValidationState:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-interface {v3, v8, v9, v7, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v13

    goto/16 :goto_e

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;->getArgs()[Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v3, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fDVFactory:Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-object/from16 v0, p4

    iget-object v9, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    move/from16 v0, v18

    int-to-short v10, v0

    if-eqz v5, :cond_41

    new-instance v12, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v3, v5

    invoke-direct {v12, v5, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_1f
    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v12}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeRestriction(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v3

    move-object v4, v13

    goto/16 :goto_e

    :cond_41
    const/4 v12, 0x0

    goto :goto_1f

    :cond_42
    if-nez v21, :cond_43

    if-nez v20, :cond_44

    if-eqz v19, :cond_10

    const-string/jumbo v5, "s4s-elt-must-match.1"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "(annotation?, (simpleType*))"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_f

    :cond_43
    const-string/jumbo v5, "s4s-elt-must-match.1"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "(annotation?, (simpleType?, (minExclusive | minInclusive | maxExclusive | maxInclusive | totalDigits | fractionDigits | length | minLength | maxLength | enumeration | whiteSpace | pattern)*))"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_f

    :cond_44
    const-string/jumbo v5, "s4s-elt-must-match.1"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "(annotation?, (simpleType?))"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v4}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_f
.end method

.method private isListDatatype(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-eq v0, v5, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_0
    return v2

    :cond_1
    return v4

    :cond_2
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    if-eq v0, v5, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return v4
.end method

.method private traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 6

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method traverseGlobal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v6, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    aget-object v0, v3, v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0, p1, v3, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->traverseSimpleTypeDecl(Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v4, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    if-eqz v0, :cond_2

    :goto_1
    if-nez v1, :cond_3

    :cond_0
    :goto_2
    return-object v1

    :cond_1
    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const-string/jumbo v4, "(no name)"

    aput-object v4, v3, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "s4s-att-must-appear"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    aput-object v3, v1, v5

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aput-object v3, v1, v6

    invoke-virtual {p0, v0, v1, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    move-object v1, v2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->schemaDocument2SystemId(Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iget-boolean v2, v2, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->fTolerateDuplicates:Z

    if-eqz v2, :cond_0

    if-nez v0, :cond_6

    move-object v0, v1

    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    move-object v1, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V

    goto :goto_3

    :cond_5
    invoke-virtual {p3, v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    instance-of v2, v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-nez v2, :cond_7

    move-object v0, v1

    goto :goto_5

    :cond_7
    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_5
.end method

.method traverseLocal(Lmf/org/w3c/dom/Element;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, p1, v1, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->genAnonTypeName(Lmf/org/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->getSimpleType(Ljava/lang/String;Lmf/org/w3c/dom/Element;[Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    instance-of v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDSimpleTypeTraverser;->fAttrChecker:Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;

    invoke-virtual {v0, v3, p2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V

    return-object v1

    :cond_0
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    goto :goto_0
.end method
