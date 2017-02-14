.class public Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;
.super Lmf/org/apache/xerces/impl/XMLScanner;
.source "XMLDTDScannerImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLDTDScanner;
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/impl/XMLEntityHandler;


# static fields
.field private static final DEBUG_SCANNER_STATE:Z = false

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SCANNER_STATE_END_OF_INPUT:I = 0x0

.field protected static final SCANNER_STATE_MARKUP_DECL:I = 0x2

.field protected static final SCANNER_STATE_TEXT_DECL:I = 0x1


# instance fields
.field private fContentDepth:I

.field private fContentStack:[I

.field protected fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

.field private fEnumeration:[Ljava/lang/String;

.field private fEnumerationCount:I

.field private fExtEntityDepth:I

.field private final fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private fIncludeSectDepth:I

.field private final fLiteral:Lmf/org/apache/xerces/xni/XMLString;

.field private final fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

.field private fMarkUpDepth:I

.field private fPEDepth:I

.field private fPEReport:[Z

.field private fPEStack:[I

.field protected fScannerState:I

.field protected fSeenExternalDTD:Z

.field protected fSeenPEReferences:Z

.field protected fStandalone:Z

.field private fStartDTDCalled:Z

.field private final fString:Lmf/org/apache/xerces/xni/XMLString;

.field private final fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

.field private final fStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/scanner/notify-char-refs"

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v1, v0, v2

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v2

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v1, v0, v3

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 2

    const/4 v1, 0x5

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLScanner;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {p3, v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private final ensureEnumerationSize(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static getScannerStateName(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "??? ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    return-void
.end method

.method private final peekReportEntity()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    aget-boolean v0, v0, v1

    return v0
.end method

.method private final popContentStack()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final popPEStack()I
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aget v0, v0, v1

    return v0
.end method

.method private final pushContentStack(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    aput p1, v0, v1

    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentStack:[I

    goto :goto_0
.end method

.method private final pushPEStack(IZ)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-eq v0, v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput-boolean p2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    aput p1, v0, v1

    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEStack:[I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEReport:[Z

    goto :goto_0
.end method

.method private final scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x7c

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "CDATA"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IDREFS"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IDREF"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ID"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ENTITY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ENTITIES"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NMTOKENS"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NMTOKEN"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "NOTATION"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v3, "ENUMERATION"

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v4, 0x28

    if-ne v0, v4, :cond_14

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_15

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNmtoken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_17

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    :cond_1
    if-eq v0, v8, :cond_0

    :goto_3
    const/16 v4, 0x29

    if-ne v0, v4, :cond_18

    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    move-object v0, v3

    :goto_5
    return-object v0

    :cond_2
    const-string/jumbo v0, "CDATA"

    goto :goto_5

    :cond_3
    const-string/jumbo v0, "IDREFS"

    goto :goto_5

    :cond_4
    const-string/jumbo v0, "IDREF"

    goto :goto_5

    :cond_5
    const-string/jumbo v0, "ID"

    goto :goto_5

    :cond_6
    const-string/jumbo v0, "ENTITY"

    goto :goto_5

    :cond_7
    const-string/jumbo v0, "ENTITIES"

    goto :goto_5

    :cond_8
    const-string/jumbo v0, "NMTOKENS"

    goto :goto_5

    :cond_9
    const-string/jumbo v0, "NMTOKEN"

    goto :goto_5

    :cond_a
    const-string/jumbo v3, "NOTATION"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_d

    move v0, v1

    :goto_6
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v4, 0x28

    if-ne v0, v4, :cond_f

    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_10

    move v0, v1

    :goto_9
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    aput-object v0, v4, v5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    :goto_a
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    :cond_c
    if-eq v0, v8, :cond_b

    :goto_b
    const/16 v4, 0x29

    if-ne v0, v4, :cond_13

    :goto_c
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    move-object v0, v3

    goto/16 :goto_5

    :cond_d
    move v0, v2

    goto :goto_6

    :cond_e
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_NOTATION_IN_NOTATIONTYPE"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_7

    :cond_f
    const-string/jumbo v0, "MSG_OPEN_PAREN_REQUIRED_IN_NOTATIONTYPE"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_11
    const-string/jumbo v0, "MSG_NAME_REQUIRED_IN_NOTATIONTYPE"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v0

    if-eq v0, v8, :cond_c

    goto :goto_b

    :cond_12
    move v0, v2

    goto :goto_a

    :cond_13
    const-string/jumbo v0, "NotationTypeUnterminated"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_14
    const-string/jumbo v0, "AttTypeRequiredInAttDef"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v0, "MSG_NMTOKEN_REQUIRED_IN_ENUMERATION"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipInvalidEnumerationValue()I

    move-result v0

    if-eq v0, v8, :cond_1

    goto/16 :goto_3

    :cond_17
    move v0, v2

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v0, "EnumerationUnterminated"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4
.end method

.method private final scanChildren(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v8, 0x7c

    const/16 v7, 0x2c

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    move v0, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_8

    move v3, v2

    :goto_1
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v4, :cond_a

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v4

    const/16 v3, 0x3f

    if-ne v4, v3, :cond_b

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_c

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_1
    :goto_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_f

    move v3, v2

    :goto_5
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v3

    if-eq v3, v7, :cond_10

    :cond_2
    if-eq v3, v8, :cond_12

    :cond_3
    const/16 v0, 0x29

    if-ne v3, v0, :cond_14

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_15

    :goto_7
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popContentStack()I

    move-result v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")?"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")+"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, ")*"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_4
    :goto_8
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fContentDepth:I

    if-nez v3, :cond_1

    return-void

    :cond_5
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v4, 0x28

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_6

    :goto_9
    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushContentStack(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_a
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, v1

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_9

    :cond_7
    move v0, v1

    goto :goto_a

    :cond_8
    move v3, v1

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v0, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v4, v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_2

    :cond_b
    const/16 v3, 0x2a

    if-eq v4, v3, :cond_0

    const/16 v3, 0x2b

    if-eq v4, v3, :cond_0

    goto/16 :goto_4

    :cond_c
    const/16 v3, 0x3f

    if-eq v4, v3, :cond_d

    const/16 v3, 0x2a

    if-eq v4, v3, :cond_e

    const/4 v3, 0x4

    :goto_b
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v5, v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_3

    :cond_d
    const/4 v3, 0x2

    goto :goto_b

    :cond_e
    const/4 v3, 0x3

    goto :goto_b

    :cond_f
    move v3, v1

    goto/16 :goto_5

    :cond_10
    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_11

    :goto_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v0, v3

    :goto_d
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_19

    move v3, v2

    :goto_e
    invoke-direct {p0, v1, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v2, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_c

    :cond_12
    if-eq v0, v7, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_13

    :goto_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    move v0, v3

    goto :goto_d

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_f

    :cond_14
    const-string/jumbo v0, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_7

    :cond_16
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")?"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    :cond_17
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")+"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    :cond_18
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, ")*"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_8

    :cond_19
    move v3, v1

    goto :goto_e
.end method

.method private final scanConditionalSect(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v9, 0x5b

    const/16 v8, 0x5d

    const/4 v1, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "INCLUDE"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "IGNORE"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne p1, v0, :cond_4

    :cond_2
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_6

    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "INVALID_PE_IN_CONDITIONAL"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    :goto_6
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne p1, v0, :cond_b

    :cond_8
    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_c

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_d

    :goto_9
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_e

    :cond_9
    :goto_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v1

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v3, :cond_1a

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_a

    :cond_a
    move v0, v2

    goto :goto_6

    :cond_b
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "INVALID_PE_IN_CONDITIONAL"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {v0, v3, v4, v5, v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startConditional(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_d
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    goto :goto_a

    :cond_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_10

    :goto_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x21

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "!"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_b

    :cond_11
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_12

    :goto_c
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    goto/16 :goto_a

    :cond_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "!["

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_15

    :goto_d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_16

    :cond_14
    :goto_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_e

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_d

    :cond_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_e

    :cond_17
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v3, v1, -0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-eq v1, v0, :cond_18

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v3, 0x3e

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto/16 :goto_a

    :cond_18
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_19

    :goto_f
    return-void

    :cond_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIgnoreConditionalBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->ignoredCharacters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v7}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_f

    :cond_1a
    const-string/jumbo v0, "IgnoreSectUnterminated"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final scanEntityDecl()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v5, 0x3a

    const/16 v4, 0x25

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_0
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_ENTITYDECL"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v7

    :goto_0
    if-nez v1, :cond_10

    :cond_1
    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_16

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_17

    move v1, v6

    :goto_4
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_2
    :goto_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v3, v1, v7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v1, v6

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_1d

    move v1, v6

    :goto_6
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-eqz v0, :cond_1e

    :cond_3
    move-object v5, v8

    :cond_4
    :goto_7
    if-eqz v3, :cond_22

    :goto_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_23

    move v1, v6

    :goto_9
    invoke-direct {p0, v7, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v9, 0x3e

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_a
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-nez v0, :cond_25

    move-object v1, v4

    :goto_b
    if-nez v3, :cond_26

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_29

    :cond_5
    :goto_c
    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v6

    :goto_d
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-eq v0, v4, :cond_b

    move v1, v6

    move v0, v7

    goto/16 :goto_0

    :cond_7
    move v1, v7

    move v0, v7

    goto/16 :goto_0

    :cond_8
    move v0, v7

    goto :goto_d

    :cond_9
    move v1, v7

    move v0, v6

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ENTITY_NAME_IN_PEDECL"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v6

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v6

    :goto_e
    invoke-direct {p0, v7, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v1, v7

    move v0, v6

    goto/16 :goto_0

    :cond_c
    move v0, v7

    goto :goto_e

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-nez v0, :cond_e

    move v1, v6

    move v0, v7

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_PERCENT_IN_PEDECL"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v7

    move v0, v7

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v1, "NameRequiredInPEReference"

    invoke-virtual {p0, v1, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_12

    :cond_10
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    goto :goto_f

    :cond_11
    const-string/jumbo v2, "SemicolonRequiredInPEReference"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_12
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_13

    move v0, v6

    :goto_11
    invoke-direct {p0, v6, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    goto :goto_10

    :cond_13
    move v0, v7

    goto :goto_11

    :cond_14
    move v0, v6

    goto/16 :goto_1

    :cond_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v1, "MSG_ENTITY_NAME_REQUIRED_IN_ENTITYDECL"

    invoke-virtual {p0, v1, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_17
    move v1, v7

    goto/16 :goto_4

    :cond_18
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v1, :cond_1a

    :cond_19
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v1

    if-ne v1, v5, :cond_19

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v1, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1b

    :goto_12
    const-string/jumbo v2, "ColonNotLegalWithNS"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_1c

    move v1, v6

    :goto_13
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "MSG_SPACE_REQUIRED_AFTER_ENTITY_NAME_IN_ENTITYDECL"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v4, v2, v7

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1b
    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    goto :goto_12

    :cond_1c
    move v1, v7

    goto :goto_13

    :cond_1d
    move v1, v7

    goto/16 :goto_6

    :cond_1e
    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v9, "NDATA"

    invoke-virtual {v5, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_1f

    :goto_14
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v6

    :goto_15
    invoke-direct {p0, v6, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v1

    if-eqz v1, :cond_21

    :goto_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string/jumbo v1, "MSG_NOTATION_NAME_REQUIRED_FOR_UNPARSED_ENTITYDECL"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_1f
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_BEFORE_NDATA_IN_UNPARSED_ENTITYDECL"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_14

    :cond_20
    move v1, v7

    goto :goto_15

    :cond_21
    const-string/jumbo v1, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_UNPARSED_ENTITYDECL"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v7

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_16

    :cond_22
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v10, v10, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget v11, v11, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v9, v10, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v9, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v10, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v10, v10, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v11, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    iget v11, v11, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v1, v9, v10, v11}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    goto/16 :goto_8

    :cond_23
    move v1, v7

    goto/16 :goto_9

    :cond_24
    const-string/jumbo v1, "EntityDeclUnterminated"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v7

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "%"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_b

    :cond_26
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    if-nez v5, :cond_27

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v2, v3, v4, v7}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v5, :cond_28

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v1, v2, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->externalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    :cond_27
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_28
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v1, v2, v5, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->unparsedEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c

    :cond_29
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v2, v3, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->internalEntityDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_c
.end method

.method private final scanMixed(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v7, 0x7c

    const/16 v6, 0x29

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v4, "#PCDATA"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-object v0, v3

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_2

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_5

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-object v0, v4

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->pcdata(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->separator(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_MIXED_CONTENT"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v4, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->element(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    :cond_6
    move v0, v2

    goto :goto_7

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v5, ")*"

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    if-nez v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "MSG_CLOSE_PAREN_REQUIRED_IN_CHILDREN"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    return-void

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v1, ")*"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    const/4 v1, 0x3

    invoke-interface {v0, v1, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->occurrence(SLmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8

    :cond_a
    const-string/jumbo v0, "MixedContentUnterminated"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v3}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_8
.end method

.method private final scanNotationDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v4, 0x3a

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_2
    if-eqz v3, :cond_4

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_4
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanExternalID([Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v4, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v5, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_a

    :cond_0
    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_7
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v7, 0x3e

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_d

    :goto_9
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_NOTATION_NAME_IN_NOTATIONDECL"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanNCName()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_2

    :cond_4
    const-string/jumbo v0, "MSG_NOTATION_NAME_REQUIRED_IN_NOTATIONDECL"

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v0, :cond_8

    :cond_7
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_NOTATION_NAME_IN_NOTATIONDECL"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    new-instance v0, Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    const-string/jumbo v4, "ColonNotLegalWithNS"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_a
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto/16 :goto_5

    :cond_9
    move v0, v2

    goto :goto_a

    :cond_a
    if-nez v5, :cond_0

    const-string/jumbo v0, "ExternalIDorPublicIDRequired"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_b
    move v0, v2

    goto/16 :goto_7

    :cond_c
    const-string/jumbo v0, "NotationDeclUnterminated"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v2

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-static {v4, v6, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v4, v6, v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v0, v3, v2, v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->notationDecl(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_9
.end method

.method private skipInvalidEnumerationValue()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v0

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->ensureEnumerationSize(I)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    aput-object v3, v1, v2

    return v0

    :cond_1
    const/16 v1, 0x29

    if-eq v0, v1, :cond_0

    goto :goto_0
.end method

.method private skipSeparator(ZZ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v6, 0x0

    const/16 v5, 0x25

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v1

    if-nez p2, :cond_2

    :cond_0
    if-nez p1, :cond_4

    :cond_1
    return v4

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_3

    return v4

    :cond_4
    if-nez v1, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v1, :cond_1

    return v3

    :cond_5
    const-string/jumbo v1, "NameRequiredInPEReference"

    invoke-virtual {p0, v1, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v1, "SemicolonRequiredInPEReference"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    const-string/jumbo v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_0
    :goto_0
    return-void

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->peekReportEntity()Z

    move-result v0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->popPEStack()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ne v2, v3, :cond_5

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-nez v1, :cond_7

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v4, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v5, "ILL_FORMED_PARAMETER_ENTITY_WHEN_USED_IN_DECL"

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "ImproperDeclarationNesting"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v0, v2, v3, v4, v8}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move v0, v1

    goto :goto_2

    :cond_7
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_3

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-nez v0, :cond_9

    :goto_4
    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->endExternalSubset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_a

    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "IncludeSectUnterminated"

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endExternalSubset(Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_5
.end method

.method public getDTDContentModelHandler()Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-object v0
.end method

.method public getDTDHandler()Lmf/org/apache/xerces/xni/XMLDTDHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-object v0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/XMLScanner;->reset()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    invoke-super {p0, p1}, Lmf/org/apache/xerces/impl/XMLScanner;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->init()V

    return-void
.end method

.method protected final scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v3}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    invoke-virtual {p4}, Lmf/org/apache/xerces/xni/XMLString;->clear()V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#REQUIRED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#IMPLIED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v4, "#FIXED"

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v6, v0

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    if-eqz v0, :cond_5

    :goto_1
    move v4, v2

    :goto_2
    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttributeValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Ljava/lang/String;ZLjava/lang/String;)Z

    :goto_3
    return-object v6

    :cond_0
    const-string/jumbo v6, "#REQUIRED"

    goto :goto_3

    :cond_1
    const-string/jumbo v6, "#IMPLIED"

    goto :goto_3

    :cond_2
    const-string/jumbo v3, "#FIXED"

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_4
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v6, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_AFTER_FIXED_IN_DEFAULTDECL"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v6, v3

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    if-eqz v0, :cond_7

    :cond_6
    move v4, v1

    goto :goto_2

    :cond_7
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-nez v0, :cond_6

    goto :goto_1
.end method

.method protected final scanAttlistDecl()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_4
    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :goto_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_7
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_8
    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_9
    const/4 v4, 0x1

    invoke-direct {p0, v4, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttDefaultDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_d

    :goto_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_c
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ATTLISTDECL"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ATTLISTDECL"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startAttlist(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ATTRIBUTE_NAME_IN_ATTDEF"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_7

    :goto_d
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    return-void

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_d

    :cond_8
    const-string/jumbo v0, "AttNameRequiredInAttDef"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_a
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ATTTYPE_IN_ATTDEF"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_c
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_DEFAULTDECL_IN_ATTDEF"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_d
    const/4 v4, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    if-nez v0, :cond_e

    :goto_e
    if-nez v5, :cond_f

    :goto_f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fLiteral2:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :cond_e
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumeration:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEnumerationCount:I

    invoke-static {v0, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_e

    :cond_f
    const-string/jumbo v0, "#REQUIRED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v0 .. v8}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :cond_11
    const-string/jumbo v0, "#IMPLIED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_f

    :cond_12
    const/4 v0, 0x0

    goto/16 :goto_c

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_14

    :goto_10
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endAttlist(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_10
.end method

.method protected final scanComment()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment(Lmf/org/apache/xerces/util/XMLStringBuffer;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public scanDTDExternalSubset(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eq v0, v3, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    return v3

    :cond_1
    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenExternalDTD:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    return v3

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method public scanDTDInternalSubset(ZZZ)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStandalone:Z

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-eq v0, v3, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanDecls(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    return v3

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_2

    :goto_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v0, v1, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_5

    :cond_4
    :goto_2
    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->setScannerState(I)V

    return v2

    :cond_5
    if-nez p3, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2
.end method

.method protected final scanDecls(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v6, 0x2d

    const/16 v5, 0x5d

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    if-nez v0, :cond_16

    return v3

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    if-gtz v0, :cond_10

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_4
    :goto_1
    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move v0, p1

    goto :goto_0

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x21

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPI()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ELEMENT"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ATTLIST"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "ENTITY"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v2, "NOTATION"

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanComment()V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanElementDecl()V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanAttlistDecl()V

    goto/16 :goto_1

    :cond_d
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanEntityDecl()V

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanNotationDecl()V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanConditionalSect(I)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    const-string/jumbo v0, "IncludeSectUnterminated"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_13

    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fIncludeSectDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    goto/16 :goto_1

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v2, 0x3e

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_2

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endConditional(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    if-ne v0, v5, :cond_3

    return v3

    :cond_15
    const-string/jumbo v0, "MSG_MARKUP_NOT_RECOGNIZED_IN_DTD"

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    invoke-direct {p0, v3, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_4

    if-eq v0, v5, :cond_4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_16
    return v1
.end method

.method protected final scanElementDecl()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v5, 0x28

    const/4 v1, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_3
    invoke-direct {p0, v1, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_6

    :goto_5
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "EMPTY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "ANY"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v0, :cond_a

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v1

    :goto_8
    invoke-direct {p0, v2, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "#PCDATA"

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanChildren(Ljava/lang/String;)V

    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-nez v3, :cond_d

    :goto_b
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v3

    if-nez v3, :cond_e

    move v3, v1

    :goto_c
    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->skipSeparator(ZZ)Z

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v5, 0x3e

    invoke-virtual {v3, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v3

    if-eqz v3, :cond_f

    :goto_d
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_10

    :goto_e
    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_ELEMENT_TYPE_IN_ELEMENTDECL"

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v0, "MSG_ELEMENT_TYPE_REQUIRED_IN_ELEMENTDECL"

    invoke-virtual {p0, v0, v6}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    move v0, v2

    goto/16 :goto_3

    :cond_5
    const-string/jumbo v0, "MSG_SPACE_REQUIRED_BEFORE_CONTENTSPEC_IN_ELEMENTDECL"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v4, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startContentModel(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_5

    :cond_7
    const-string/jumbo v0, "EMPTY"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->empty(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_a

    :cond_8
    const-string/jumbo v0, "ANY"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->any(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_a

    :cond_9
    const-string/jumbo v0, "MSG_OPEN_PAREN_OR_ELEMENT_TYPE_REQUIRED_IN_CHILDREN"

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v4, v3, v2

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->startGroup(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_7

    :cond_b
    move v0, v2

    goto/16 :goto_8

    :cond_c
    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanMixed(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v3, v6}, Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;->endContentModel(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_b

    :cond_e
    move v3, v2

    goto :goto_c

    :cond_f
    const-string/jumbo v3, "ElementDeclUnterminated"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :cond_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, v4, v0, v6}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_e
.end method

.method protected final scanEntityValue(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/16 v10, 0x25

    const/16 v9, 0x3b

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v2

    const/16 v0, 0x27

    if-ne v2, v0, :cond_1

    :cond_0
    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v4, v2, v5}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v4

    if-ne v4, v2, :cond_2

    :goto_1
    invoke-virtual {p1, v1}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/XMLString;->setValues(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_2
    return-void

    :cond_1
    const/16 v0, 0x22

    if-eq v2, v0, :cond_0

    const-string/jumbo v0, "OpenQuoteMissingInDecl"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isInvalidLiteral(I)Z

    move-result v1

    if-nez v1, :cond_f

    if-eq v0, v2, :cond_10

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v4, v0

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    :cond_5
    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v1, "&#"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanCharReferenceValue(Lmf/org/apache/xerces/util/XMLStringBuffer;Lmf/org/apache/xerces/util/XMLStringBuffer;)I

    goto :goto_3

    :cond_8
    const-string/jumbo v1, "NameRequiredInReference"

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_9
    const-string/jumbo v1, "SemicolonRequiredInReference"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    const-string/jumbo v1, "NameRequiredInPEReference"

    invoke-virtual {p0, v1, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->startPE(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipSpaces()Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipChar(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanningInternalSubset()Z

    move-result v1

    if-nez v1, :cond_d

    :goto_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_5

    :cond_c
    const-string/jumbo v1, "SemicolonRequiredInPEReference"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    const-string/jumbo v1, "PEReferenceWithinMarkup"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer2:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanSurrogates(Lmf/org/apache/xerces/util/XMLStringBuffer;)Z

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v1, "InvalidCharInLiteral"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    invoke-virtual {p0, v1, v4}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    goto/16 :goto_3

    :cond_10
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityDepth:I

    if-ne v3, v1, :cond_4

    goto/16 :goto_3

    :cond_11
    const-string/jumbo v0, "CloseQuoteMissingInDecl"

    invoke-virtual {p0, v0, v7}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->reportFatalError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method protected final scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/XMLScanner;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected final scanTextDecl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    const-string/jumbo v3, "<?xml"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->skipString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-boolean v1, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    return v0

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanXMLDeclOrTextDecl(Z[Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v0, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStrings:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setXMLVersion(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityScanner;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isEncodingExternallySpecified()Z

    move-result v3

    if-eqz v3, :cond_5

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLStringBuffer;->clear()V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    const-string/jumbo v3, "xml"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(Ljava/lang/String;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fNamespaces:Z

    if-nez v2, :cond_3

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNameChar(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->scanChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append(C)V

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->peekChar()I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->isValidNCName(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget-object v3, v3, Lmf/org/apache/xerces/util/XMLStringBuffer;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v4, v4, Lmf/org/apache/xerces/util/XMLStringBuffer;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStringBuffer:Lmf/org/apache/xerces/util/XMLStringBuffer;

    iget v5, v5, Lmf/org/apache/xerces/util/XMLStringBuffer;->length:I

    invoke-virtual {v2, v3, v4, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fString:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanPIData(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setEncoding(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v3, v0, v2, v4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    move v0, v1

    goto/16 :goto_0
.end method

.method protected final scanningInternalSubset()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setDTDContentModelHandler(Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDContentModelHandler:Lmf/org/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lmf/org/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->endDTD(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method protected final setScannerState(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fScannerState:I

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLScanner;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    const-string/jumbo v0, "[dtd]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x25

    if-eq v1, v2, :cond_6

    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_7

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    if-nez v1, :cond_5

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startExternalSubset()V

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fStartDTDCalled:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startDTD(Lmf/org/apache/xerces/xni/XMLLocator;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, p2, v3}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startExternalSubset(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_6
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fMarkUpDepth:I

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->pushPEStack(IZ)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fExtEntityDepth:I

    goto :goto_0

    :cond_7
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fReportEntity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fDTDHandler:Lmf/org/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDTDHandler;->startParameterEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method protected startPE(Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    if-eqz v2, :cond_2

    :goto_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fValidation:Z

    if-nez v2, :cond_3

    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Z)V

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fPEDepth:I

    if-ne v0, v1, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fSeenPEReferences:Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->notifyHasPEReferences()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityManager:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->isDeclaredEntity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v4, "EntityNotDeclared"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->isExternal()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLDTDScannerImpl;->scanTextDecl()Z

    goto :goto_2
.end method
