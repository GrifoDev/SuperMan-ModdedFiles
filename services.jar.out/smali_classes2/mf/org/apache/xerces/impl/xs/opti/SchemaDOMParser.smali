.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "SchemaDOMParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;
    }
.end annotation


# static fields
.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field public static final GENERATE_SYNTHETIC_ANNOTATION:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"


# instance fields
.field config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

.field private fAnnotationDepth:I

.field private fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

.field private fDepth:I

.field private fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

.field fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private fGenerateSyntheticAnnotation:Z

.field private fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field private fInnerAnnotationDepth:I

.field protected fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

.field schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    new-instance v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V

    invoke-interface {p1, p0}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V

    return-void
.end method

.method private hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_4

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_4
    return v1
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_1
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    invoke-direct {v6, v1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v3, "s4s-elt-character"

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v6, v4, v7

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->comment(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x3a

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-nez v0, :cond_3

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-eq v0, v7, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-eq v1, v7, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-ne v0, v7, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->removeAllAttributes()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2, v0, p2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v2, v1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string/jumbo v3, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v2, v1, v6}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    return-void

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    goto :goto_2

    :cond_5
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    goto/16 :goto_0

    :cond_7
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v1, p1, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    goto/16 :goto_1
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationCDATA()V

    goto :goto_0
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v6, 0x3a

    const/4 v2, -0x1

    const/4 v5, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    if-gt v0, v2, :cond_1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    return-void

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    goto :goto_1

    :cond_2
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_1

    :cond_3
    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endElement()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v2, v0, v3, v4}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fEmptyAttr:Lmf/org/apache/xerces/xni/XMLAttributes;

    invoke-virtual {v2, v1, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const-string/jumbo v3, "SYNTHETIC_ANNOTATION"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->charactersRaw(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    goto :goto_2

    :cond_6
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    goto :goto_3
.end method

.method public getDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->characters(Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0
.end method

.method public parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->reset()V

    return-void
.end method

.method public resetNodePool()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaParsingConfig;->resetNodePool()V

    return-void
.end method

.method public setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setEntityResolver(Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationCDATA()V

    goto :goto_0
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, -0x1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->config:Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v1, "http://apache.org/xml/features/generate-synthetic-annotations"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->clear()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->setDocumentURI(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    return-void

    :cond_0
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_3

    :cond_1
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_6

    :cond_2
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-void

    :cond_3
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-nez v0, :cond_4

    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fCurrentAnnotationElement:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-void

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->size()I

    move-result v0

    if-gtz v0, :cond_5

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->pop()Z

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fGenerateSyntheticAnnotation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fSawAnnotation:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fHasNonSchemaAttributes:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->hasNonSchemaAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser$BooleanStack;->push(Z)V

    goto :goto_0

    :cond_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->fInnerAnnotationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMParser;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    goto :goto_0
.end method
