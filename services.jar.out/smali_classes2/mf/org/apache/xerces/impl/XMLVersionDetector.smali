.class public Lmf/org/apache/xerces/impl/XMLVersionDetector;
.super Ljava/lang/Object;
.source "XMLVersionDetector.java"


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final XML11_VERSION:[C

.field protected static final fVersionSymbol:Ljava/lang/String;

.field protected static final fXMLSymbol:Ljava/lang/String;


# instance fields
.field protected fEncoding:Ljava/lang/String;

.field protected fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fExpectedVersionString:[C

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x31

    const/4 v0, 0x3

    new-array v0, v0, [C

    const/4 v1, 0x0

    aput-char v3, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x2e

    aput-char v2, v0, v1

    const/4 v1, 0x2

    aput-char v3, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    const-string/jumbo v0, "version"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fVersionSymbol:Ljava/lang/String;

    const-string/jumbo v0, "[xml]"

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/16 v0, 0x13

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3c

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x78

    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6d

    aput-char v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x6c

    aput-char v2, v0, v1

    const/4 v1, 0x5

    aput-char v3, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x76

    aput-char v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x65

    aput-char v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x72

    aput-char v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x73

    aput-char v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x69

    aput-char v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x6f

    aput-char v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x6e

    aput-char v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x3d

    aput-char v2, v0, v1

    const/16 v1, 0xe

    aput-char v3, v0, v1

    const/16 v1, 0xf

    aput-char v3, v0, v1

    const/16 v1, 0x10

    aput-char v3, v0, v1

    const/16 v1, 0x11

    aput-char v3, v0, v1

    const/16 v1, 0x12

    aput-char v3, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    return-void
.end method

.method private fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-result-object v1

    iget v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v0, v2

    add-int/2addr v0, p3

    iget-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v2, v2

    if-gt v0, v2, :cond_0

    :goto_0
    iget v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v0, p3, :cond_1

    move v0, p3

    :goto_1
    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-ge v0, v2, :cond_2

    iget-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v3, 0x20

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v2, p3

    iget v3, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v3, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget v4, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v5, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v3, p3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iget v2, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, p3, v2

    add-int/2addr v0, v2

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    :cond_2
    iget-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {p2, v6, v0, v6, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v6, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iput v6, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iput v6, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    iput v7, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    iput v7, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    return-void
.end method


# virtual methods
.method public determineDocVersion(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)S
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    sget-object v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    invoke-virtual {v2, v3, p1, v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v3

    :try_start_0
    const-string/jumbo v2, "<?xml"

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "version"

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipDeclSpaces()Z

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v6, 0xe

    int-to-char v2, v2

    int-to-char v2, v2

    aput-char v2, v5, v6

    move v2, v1

    :goto_0
    sget-object v5, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v5, v5

    if-ge v2, v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v6, v2, 0xf

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v7

    int-to-char v7, v7

    int-to-char v7, v7

    aput-char v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v3, 0x5

    invoke-direct {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V

    return v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/4 v3, 0x6

    invoke-direct {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V

    return v0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v3, 0xd

    invoke-direct {p0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V

    return v0

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v5, 0x12

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    int-to-char v3, v3

    aput-char v3, v2, v5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v5, 0x13

    invoke-direct {p0, v2, v3, v5}, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fixupCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager;[CI)V

    :goto_1
    sget-object v2, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    add-int/lit8 v3, v1, 0xf

    aget-char v2, v2, v3

    sget-object v3, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    aget-char v3, v3, v1

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    sget-object v2, Lmf/org/apache/xerces/impl/XMLVersionDetector;->XML11_VERSION:[C

    array-length v2, v2
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/CharConversionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_2

    if-eq v1, v2, :cond_6

    move v4, v0

    :cond_6
    return v4

    :catch_0
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;->getArguments()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v8

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "CharConversionFailure"

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    return v8

    :catch_2
    move-exception v0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "PrematureEOF"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    return v8
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/16 v0, 0xe

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fExpectedVersionString:[C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startDocumentParsing(Lmf/org/apache/xerces/impl/XMLEntityHandler;S)V
    .locals 4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    sget-object v0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fXMLSymbol:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEncoding:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLVersionDetector;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    goto :goto_0
.end method
