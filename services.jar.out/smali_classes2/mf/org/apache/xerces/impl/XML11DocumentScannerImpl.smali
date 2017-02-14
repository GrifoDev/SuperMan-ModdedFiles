.class public Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;
.source "XML11DocumentScannerImpl.java"


# instance fields
.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method


# virtual methods
.method protected getVersionNotSupportedKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "VersionNotSupported11"

    return-object v0
.end method

.method protected isInvalid(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v0

    return v0
.end method

.method protected isInvalidLiteral(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I
    .locals 3

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v0

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v0, v1

    return v0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method protected isValidNCName(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameChar(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartChar(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v0

    return v0
.end method

.method protected isValidNameStartHighSurrogate(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v0

    return v0
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v0

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v3, 0x20

    aput-char v3, v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V
    .locals 4

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v0

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    add-int/2addr v0, p2

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/16 v3, 0x20

    aput-char v3, v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    const/16 v0, 0x27

    if-ne v2, v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v1

    const/4 v0, 0x0

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;I)V

    if-ne v1, v2, :cond_5

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    if-ne v0, v2, :cond_22

    :goto_2
    iget-object v0, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {p2, v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLString;->equals([CII)Z

    move-result v0

    return v0

    :cond_2
    const/16 v0, 0x22

    if-eq v2, v0, :cond_0

    const-string/jumbo v0, "OpenQuoteExpected"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p5, v1, v3

    const/4 v3, 0x1

    aput-object p3, v1, v3

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isUnchangedByNormalization(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    invoke-virtual {p2, p1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    if-ne v0, v2, :cond_4

    :goto_3
    const/4 v0, 0x1

    return v0

    :cond_4
    const-string/jumbo v0, "CloseQuoteExpected"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    move v0, v1

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    const/16 v1, 0x26

    if-eq v0, v1, :cond_9

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x25

    if-ne v0, v1, :cond_1b

    :cond_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v0

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v1, :cond_1d

    :cond_8
    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2, p1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v1, :cond_21

    :goto_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    if-ne v0, v2, :cond_6

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fScanningAttribute:Z

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    iget v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v0, :cond_b

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v1, :cond_f

    :goto_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v1, :cond_11

    :goto_8
    sget-object v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAmpSymbol:Ljava/lang/String;

    if-eq v0, v1, :cond_12

    sget-object v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fAposSymbol:Ljava/lang/String;

    if-eq v0, v1, :cond_13

    sget-object v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fLtSymbol:Ljava/lang/String;

    if-eq v0, v1, :cond_14

    sget-object v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fGtSymbol:Ljava/lang/String;

    if-eq v0, v1, :cond_15

    sget-object v1, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fQuotSymbol:Ljava/lang/String;

    if-eq v0, v1, :cond_16

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isExternalEntity(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_a
    :goto_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_6

    :cond_c
    iget v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-eq v3, v0, :cond_d

    :goto_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_a

    :cond_e
    const-string/jumbo v1, "NameRequiredInReference"

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    const-string/jumbo v1, "SemicolonRequiredInReference"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x3b

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_8

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_16
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_17
    const-string/jumbo v1, "ReferenceToExternalEntity"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_18
    if-nez p4, :cond_19

    const-string/jumbo v1, "EntityNotDeclared"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_19
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fValidation:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "EntityNotDeclared"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto/16 :goto_9

    :cond_1a
    const-string/jumbo v1, "LessthanInAttValue"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1b
    const/16 v1, 0x5d

    if-eq v0, v1, :cond_7

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1e

    :cond_1c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_1e
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x85

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x2028

    if-eq v0, v1, :cond_1c

    const/4 v1, -0x1

    if-ne v0, v1, :cond_20

    :cond_1f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string/jumbo v1, "InvalidCharInAttValue"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p5, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-static {v0, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_4

    :cond_20
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityDepth:I

    if-ne v3, v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer3:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_4

    :cond_21
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_5

    :cond_22
    const-string/jumbo v0, "CloseQuoteExpected"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p5, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected scanContent()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/16 v5, 0x5d

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanContent(Lmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    const/16 v3, 0xd

    if-ne v0, v3, :cond_3

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    move-object v2, v0

    move v0, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v3, :cond_4

    :cond_1
    :goto_1
    if-eq v0, v5, :cond_5

    :cond_2
    :goto_2
    return v0

    :cond_3
    const/16 v3, 0x85

    if-eq v0, v3, :cond_0

    const/16 v3, 0x2028

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_4
    iget v3, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v3, v2, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, v2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-nez v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_a

    :cond_7
    :goto_4
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fInScanContent:Z

    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "CDEndInContent"

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v0, v0, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v2, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_4
.end method

.method protected scanPubidLiteral(Lmf/org/apache/xerces/xni/XMLString;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v8, 0x0

    const/16 v7, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v4

    const/16 v0, 0x27

    if-ne v4, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    move v0, v1

    move v3, v1

    :cond_1
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v5

    if-ne v5, v7, :cond_4

    :cond_2
    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v3, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v3, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x22

    if-eq v4, v0, :cond_0

    const-string/jumbo v0, "QuoteRequiredInPublicID"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_4
    const/16 v6, 0xa

    if-eq v5, v6, :cond_2

    const/16 v6, 0xd

    if-eq v5, v6, :cond_2

    const/16 v6, 0x85

    if-eq v5, v6, :cond_2

    const/16 v6, 0x2028

    if-eq v5, v6, :cond_2

    if-eq v5, v4, :cond_5

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isPubid(I)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v0, -0x1

    if-eq v5, v0, :cond_8

    const-string/jumbo v0, "InvalidCharInPublicID"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v2

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_5
    if-nez v3, :cond_6

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    return v0

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v2, v1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v3, v2

    goto :goto_0

    :cond_8
    const-string/jumbo v0, "PublicIDUnterminated"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XML11DocumentScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return v2
.end method

.method protected versionSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const-string/jumbo v0, "1.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const-string/jumbo v0, "1.0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method
