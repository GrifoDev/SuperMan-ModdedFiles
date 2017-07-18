.class public Lmf/org/apache/xerces/impl/XMLEntityManager;
.super Ljava/lang/Object;
.source "XMLEntityManager.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;,
        Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final BUFFER_SIZE:Ljava/lang/String; = "http://apache.org/xml/properties/input-buffer-size"

.field private static final DEBUG_BUFFER:Z = false

.field private static final DEBUG_ENCODINGS:Z = false

.field private static final DEBUG_ENTITIES:Z = false

.field private static final DEBUG_RESOLVER:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800

.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x200

.field public static final DEFAULT_XMLDECL_BUFFER_SIZE:I = 0x40

.field private static final DTDEntity:Ljava/lang/String;

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field private static GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction; = null

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final STANDARD_URI_CONFORMANT:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field private static final XMLEntity:Ljava/lang/String;

.field private static final gAfterEscaping1:[C

.field private static final gAfterEscaping2:[C

.field private static final gHexChs:[C

.field private static final gNeedEscaping:[Z

.field private static gUserDir:Ljava/lang/String;

.field private static gUserDirURI:Lmf/org/apache/xerces/util/URI;


# instance fields
.field protected fAllowJavaEncodings:Z

.field protected fBufferSize:I

.field private final fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

.field protected fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

.field protected fDeclaredEntities:Ljava/util/Hashtable;

.field protected final fEntities:Ljava/util/Hashtable;

.field private final fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

.field protected fEntityExpansionCount:I

.field protected fEntityExpansionLimit:I

.field protected fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected final fEntityStack:Ljava/util/Stack;

.field protected fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field protected fExternalGeneralEntities:Z

.field protected fExternalParameterEntities:Z

.field protected fHasPEReferences:Z

.field protected fInExternalSubset:Z

.field private final fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fReaderStack:Ljava/util/Stack;

.field private final fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

.field protected fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

.field private final fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

.field protected fStandalone:Z

.field protected fStrictURI:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private fTempByteBuffer:[B

.field protected fValidation:Z

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field protected fWarnDuplicateEntityDef:Z

.field protected fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

.field protected fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v0, 0x0

    const/4 v7, 0x1

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    aput-object v2, v1, v0

    const-string/jumbo v2, "http://xml.org/sax/features/external-general-entities"

    aput-object v2, v1, v7

    const-string/jumbo v2, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v3, v1, v2

    const-string/jumbo v2, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v3, v1, v2

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v7

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v1, v8

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v1, v5

    const/4 v2, 0x5

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v3, v1, v2

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v1, v6, [Ljava/lang/String;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v2, v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v2, v1, v7

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v3, v1, v2

    const-string/jumbo v2, "http://apache.org/xml/properties/input-buffer-size"

    aput-object v2, v1, v5

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    aput-object v3, v1, v2

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    const/16 v3, 0x800

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v5

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    const-string/jumbo v1, "[xml]"

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const-string/jumbo v1, "[dtd]"

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/16 v1, 0x80

    new-array v1, v1, [Z

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v1, 0x80

    new-array v1, v1, [C

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v1, 0x10

    new-array v1, v1, [C

    const/16 v2, 0x30

    aput-char v2, v1, v0

    const/16 v2, 0x31

    aput-char v2, v1, v7

    const/16 v2, 0x32

    aput-char v2, v1, v8

    const/4 v2, 0x3

    const/16 v3, 0x33

    aput-char v3, v1, v2

    const/16 v2, 0x34

    aput-char v2, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0x35

    aput-char v3, v1, v2

    const/16 v2, 0x36

    aput-char v2, v1, v6

    const/4 v2, 0x7

    const/16 v3, 0x37

    aput-char v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x38

    aput-char v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x39

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x41

    aput-char v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x42

    aput-char v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x43

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x44

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x45

    aput-char v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x46

    aput-char v3, v1, v2

    sput-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    move v1, v0

    :goto_0
    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v4, v1, 0x4

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v4, v1, 0xf

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    const/16 v2, 0x7f

    aput-boolean v7, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    const/16 v2, 0x7f

    const/16 v3, 0x37

    aput-char v3, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    const/16 v2, 0x7f

    const/16 v3, 0x46

    aput-char v3, v1, v2

    const/16 v1, 0xf

    new-array v1, v1, [C

    const/16 v2, 0x20

    aput-char v2, v1, v0

    const/16 v2, 0x3c

    aput-char v2, v1, v7

    const/16 v2, 0x3e

    aput-char v2, v1, v8

    const/4 v2, 0x3

    const/16 v3, 0x23

    aput-char v3, v1, v2

    const/16 v2, 0x25

    aput-char v2, v1, v5

    const/4 v2, 0x5

    const/16 v3, 0x22

    aput-char v3, v1, v2

    const/16 v2, 0x7b

    aput-char v2, v1, v6

    const/4 v2, 0x7

    const/16 v3, 0x7d

    aput-char v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x7c

    aput-char v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x5c

    aput-char v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x5e

    aput-char v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0x7e

    aput-char v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x5b

    aput-char v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0x5d

    aput-char v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x60

    aput-char v3, v1, v2

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_1

    aget-char v3, v1, v0

    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aput-boolean v7, v4, v3

    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v6, v3, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    sget-object v4, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    const/16 v1, 0x800

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    new-instance v1, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    new-instance v1, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    new-instance v1, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;-><init>(II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    if-nez p1, :cond_0

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setScannerVersion(S)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getDeclaredEntities()Ljava/util/Hashtable;

    move-result-object v0

    goto :goto_0
.end method

.method public static absolutizeAgainstUserDir(Lmf/org/apache/xerces/util/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/XMLEntityManager;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/XMLEntityManager;[B)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-void
.end method

.method static synthetic access$2(Lmf/org/apache/xerces/impl/XMLEntityManager;)[B
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    return-object v0
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;[B)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method public static createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v0, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URL;

    if-nez v0, :cond_0

    :goto_0
    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "file"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setDoInput(Z)V

    invoke-virtual {v1, v5}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v1, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    instance-of v0, v1, Ljava/net/HttpURLConnection;

    if-nez v0, :cond_6

    :goto_2
    invoke-virtual {v1}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    :goto_3
    return-object v0

    :cond_0
    move-object p0, v0

    goto :goto_0

    :cond_1
    if-nez v2, :cond_4

    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    :goto_4
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "localhost"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_4

    :cond_6
    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string/jumbo v2, "PUT"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-eq v0, v1, :cond_1

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;[BZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    if-eqz v0, :cond_0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->getBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    goto :goto_0
.end method

.method public static expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    :try_start_0
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    return-object v6

    :cond_1
    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez p1, :cond_4

    :cond_2
    :try_start_1
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    return-object p0

    :cond_4
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    if-nez v0, :cond_2

    :try_start_3
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/16 v0, 0x3a

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v1

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v1, v0

    goto :goto_0

    :cond_5
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-static {p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->fixURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v0

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v6

    goto :goto_1

    :cond_6
    return-object p0
.end method

.method private static expandSystemIdStrictOff(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_4

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_3

    new-instance v0, Lmf/org/apache/xerces/util/URI$MalformedURIException;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/URI$MalformedURIException;-><init>()V

    throw v0

    :cond_3
    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_0
.end method

.method private static expandSystemIdStrictOn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v1, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, p0, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_3

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    invoke-virtual {v1}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    return-object p0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    invoke-direct {v0, p1, v2}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getUserDir()Lmf/org/apache/xerces/util/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/util/URI;->absolutize(Lmf/org/apache/xerces/util/URI;)V

    goto :goto_0
.end method

.method protected static fixURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x20

    const/4 v0, 0x0

    const/16 v5, 0x2f

    const/4 v1, 0x0

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    if-eqz v0, :cond_5

    :goto_1
    if-ge v1, v3, :cond_6

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_2

    if-ne v3, v5, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "file:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    const/16 v4, 0x41

    if-lt v3, v4, :cond_0

    const/16 v4, 0x5a

    if-gt v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string/jumbo v3, "file:///"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "%20"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v3, 0x1

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_7

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v3, "%20"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private static getPathWithoutEscapes(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    if-nez p0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x25

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v0, "%"

    invoke-direct {v1, p0, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x1

    :goto_0
    if-ge v0, v3, :cond_2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getUserDir()Lmf/org/apache/xerces/util/URI;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/util/URI$MalformedURIException;
        }
    .end annotation

    const/4 v1, 0x0

    const-class v6, Lmf/org/apache/xerces/impl/XMLEntityManager;

    monitor-enter v6

    :try_start_0
    const-string/jumbo v2, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->GET_USER_DIR_SYSTEM_PROPERTY:Ljava/security/PrivilegedAction;

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    if-nez v2, :cond_3

    :cond_0
    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    sget-char v2, Ljava/io/File;->separatorChar:C

    const/16 v3, 0x2f

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v4, Ljava/lang/StringBuffer;

    mul-int/lit8 v0, v2, 0x3

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x2

    if-ge v2, v0, :cond_4

    :cond_1
    :goto_1
    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_6

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x80

    if-ge v5, v7, :cond_6

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_5

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_3
    :try_start_3
    sget-object v2, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_4
    const/4 v0, 0x1

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x3a

    if-ne v0, v5, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_5
    const/16 v7, 0x25

    :try_start_5
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v7, v7, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    if-lt v0, v2, :cond_8

    :cond_7
    const-string/jumbo v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    :goto_4
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->gUserDirURI:Lmf/org/apache/xerces/util/URI;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_8
    :try_start_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    :try_start_7
    array-length v5, v2

    move v0, v1

    :goto_5
    if-ge v0, v5, :cond_7

    aget-byte v1, v2, v0

    if-ltz v1, :cond_9

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gNeedEscaping:[Z

    aget-boolean v7, v7, v1

    if-nez v7, :cond_a

    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_1
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v1, "file"

    const-string/jumbo v2, ""

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v6

    return-object v0

    :cond_9
    add-int/lit16 v1, v1, 0x100

    const/16 v7, 0x25

    :try_start_8
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    shr-int/lit8 v8, v1, 0x4

    aget-char v7, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gHexChs:[C

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_a
    const/16 v7, 0x25

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping1:[C

    aget-char v7, v7, v1

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lmf/org/apache/xerces/impl/XMLEntityManager;->gAfterEscaping2:[C

    aget-char v1, v7, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_b
    const/16 v0, 0x2f

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4
.end method

.method static final print(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public addExternalEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_6

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    move-object v4, p4

    :goto_1
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    invoke-static {p3, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v6, p1, v0, v7, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_3
    if-ltz v1, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_5

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object p4

    move-object v4, p4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_7
    move-object v4, p4

    goto :goto_1
.end method

.method public addInternalEntity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v0, p1, p2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public addUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    new-instance v0, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/util/XMLEntityDescriptionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    invoke-direct {v6, p1, v0, p5, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "MSG_DUPLICATE_ENTITY_DEFINITION"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0
.end method

.method public closeReaders()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v0, "UTF-8"

    if-ne p2, v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz p2, :cond_0

    const-string/jumbo v0, "UTF-16"

    if-eq p2, v0, :cond_4

    :cond_2
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "UTF-16BE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "UTF-16LE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "ISO-10646-UCS-4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_0
    const-string/jumbo v1, "ISO-10646-UCS-2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    :goto_1
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidIANAEncoding(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isValidJavaEncoding(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_e

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "EncodingDeclInvalid"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v0, v1, v2, v3, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_4
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-direct {p0, p1, v6}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_7
    invoke-direct {p0, p1, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_8
    if-nez p3, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_0

    :cond_9
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    :cond_a
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    :cond_b
    if-nez p3, :cond_c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EncodingByteOrderUnsupported"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1

    :cond_c
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v0, p1, v6}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    :cond_d
    new-instance v0, Lmf/org/apache/xerces/impl/io/UCSReader;

    invoke-direct {v0, p1, v7}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;S)V

    return-object v0

    :cond_e
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-nez v1, :cond_10

    :goto_2
    invoke-static {v0}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string/jumbo v1, "ASCII"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string/jumbo v1, "ISO8859_1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    move-object p2, v0

    :cond_f
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_10
    if-eqz v2, :cond_3

    goto :goto_2

    :cond_11
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v2, "EncodingDeclInvalid"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v5

    invoke-virtual {v0, v1, v2, v3, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_12
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0

    :cond_13
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v0

    return-object v0
.end method

.method endEntity()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v1, :cond_0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->reader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$0(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->returnBuffer(Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBuffer;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    if-nez v1, :cond_2

    :goto_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    if-gtz v1, :cond_4

    :goto_4
    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v1

    array-length v1, v1

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-static {v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->access$1(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->returnBuffer([B)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public endExternalSubset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method

.method public getCurrentEntity()Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    return-object v0
.end method

.method public getCurrentResourceIdentifier()Lmf/org/apache/xerces/xni/XMLResourceIdentifier;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    return-object v0
.end method

.method getDeclaredEntities()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    return-object v0
.end method

.method protected getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;
    .locals 7

    const/16 v6, 0x3f

    const/4 v5, 0x3

    const/4 v3, 0x2

    const/16 v4, 0x3c

    const/4 v0, 0x0

    if-lt p2, v3, :cond_a

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xfe

    if-eq v0, v2, :cond_b

    :cond_0
    const/16 v2, 0xff

    if-eq v0, v2, :cond_c

    :cond_1
    if-lt p2, v5, :cond_d

    aget-byte v2, p1, v3

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xef

    if-eq v0, v3, :cond_e

    :cond_2
    const/4 v3, 0x4

    if-lt p2, v3, :cond_f

    aget-byte v3, p1, v5

    and-int/lit16 v3, v3, 0xff

    if-eqz v0, :cond_10

    :cond_3
    if-eq v0, v4, :cond_11

    :cond_4
    if-eqz v0, :cond_12

    :cond_5
    if-eqz v0, :cond_13

    :cond_6
    if-eqz v0, :cond_14

    :cond_7
    if-eq v0, v4, :cond_15

    :cond_8
    const/16 v4, 0x4c

    if-eq v0, v4, :cond_16

    :cond_9
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_a
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_b
    const/16 v2, 0xff

    if-ne v1, v2, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_c
    const/16 v2, 0xfe

    if-ne v1, v2, :cond_1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_d
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_e
    const/16 v3, 0xbb

    if-ne v1, v3, :cond_2

    const/16 v3, 0xbf

    if-ne v2, v3, :cond_2

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8_WITH_BOM:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_8:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_10
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v4, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_11
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_12
    if-nez v1, :cond_5

    if-ne v2, v4, :cond_5

    if-nez v3, :cond_5

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_13
    if-ne v1, v4, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UCS_4_UNUSUAL_BYTE_ORDER:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_14
    if-ne v1, v4, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_7

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_BIG_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_15
    if-nez v1, :cond_8

    if-ne v2, v6, :cond_8

    if-nez v3, :cond_8

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->UTF_16_LITTLE_ENDIAN:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0

    :cond_16
    const/16 v0, 0x6f

    if-ne v1, v0, :cond_9

    const/16 v0, 0xa7

    if-ne v2, v0, :cond_9

    const/16 v0, 0x94

    if-ne v3, v0, :cond_9

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->EBCDIC:Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    return-object v0
.end method

.method public getEntityScanner()Lmf/org/apache/xerces/impl/XMLEntityScanner;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_0

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_1
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

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
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method final hasPEReferences()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return v0
.end method

.method public isDeclaredEntity(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isEntityDeclInExternalSubset(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isEntityDeclInExternalSubset()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isExternalEntity(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return v0
.end method

.method public isUnparsedEntity(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final notifyHasPEReferences()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    return-void
.end method

.method public reset()V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fHasPEReferences:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    if-nez v0, :cond_4

    :cond_0
    iput-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fDeclaredEntities:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string/jumbo v0, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string/jumbo v0, "http://xml.org/sax/features/external-general-entities"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string/jumbo v0, "http://xml.org/sax/features/external-parameter-entities"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    const-string/jumbo v0, "http://apache.org/xml/features/allow-java-encodings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    const-string/jumbo v0, "http://apache.org/xml/features/warn-on-duplicate-entitydef"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    const-string/jumbo v0, "http://apache.org/xml/features/standard-uri-conformant"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    :try_start_7
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    const-string/jumbo v0, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    const-string/jumbo v0, "http://apache.org/xml/properties/security-manager"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    return-void

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->reset()V

    return-void

    :catch_1
    move-exception v0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidation:Z

    goto :goto_1

    :catch_2
    move-exception v0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    goto :goto_2

    :catch_3
    move-exception v0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    goto :goto_3

    :catch_4
    move-exception v0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_4

    :catch_5
    move-exception v0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fWarnDuplicateEntityDef:Z

    goto :goto_5

    :catch_6
    move-exception v0

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    goto :goto_6

    :catch_7
    move-exception v0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    goto :goto_7

    :catch_8
    move-exception v0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    goto :goto_8

    :catch_9
    move-exception v0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    goto :goto_9
.end method

.method public resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move v0, v1

    :goto_0
    if-eqz v3, :cond_3

    :cond_0
    move-object v2, v3

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v3, :cond_5

    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_7

    :goto_3
    return-object v0

    :cond_1
    return-object v5

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-eqz v8, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    move-object v2, v3

    goto :goto_1

    :cond_4
    move v0, v2

    move-object v2, v3

    goto :goto_1

    :cond_5
    if-nez v0, :cond_6

    move-object v0, v4

    :goto_4
    invoke-interface {p1, v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setBaseSystemId(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->setExpandedSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_2

    :cond_6
    invoke-static {v7, v2, v1}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-direct {v0, v6, v7, v2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public setEntityHandler(Lmf/org/apache/xerces/impl/XMLEntityHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const-string/jumbo v0, "http://apache.org/xml/features/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "http://apache.org/xml/features/"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "allow-java-encodings"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "allow-java-encodings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fAllowJavaEncodings:Z

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v2, "http://apache.org/xml/properties/"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v0, v2

    const-string/jumbo v0, "internal/symbol-table"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_6

    :cond_2
    const-string/jumbo v0, "internal/error-reporter"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_7

    :cond_3
    const-string/jumbo v0, "internal/entity-resolver"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_8

    :cond_4
    const-string/jumbo v0, "input-buffer-size"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v2, v0, :cond_9

    :cond_5
    :goto_1
    const-string/jumbo v0, "security-manager"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v2, v0, :cond_0

    const-string/jumbo v0, "security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p2, Lmf/org/apache/xerces/util/SecurityManager;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v0, :cond_a

    move v0, v1

    :goto_2
    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "internal/symbol-table"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p2, Lmf/org/apache/xerces/util/SymbolTable;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void

    :cond_7
    const-string/jumbo v0, "internal/error-reporter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    check-cast p2, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void

    :cond_8
    const-string/jumbo v0, "internal/entity-resolver"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p2, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    return-void

    :cond_9
    const-string/jumbo v0, "input-buffer-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setBufferSize(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSmallByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fLargeByteBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ByteBufferPool;->setBufferSize(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCharacterBufferPool:Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fBufferSize:I

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$CharacterBufferPool;->setExternalBufferSize(I)V

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SecurityManager;->getEntityExpansionLimit()I

    move-result v0

    goto :goto_2
.end method

.method public setScannerVersion(S)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    if-eqz v0, :cond_1

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v0, v1, p0, v2}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->reset(Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/impl/XMLEntityManager;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    goto :goto_1

    :cond_1
    new-instance v0, Lmf/org/apache/xerces/impl/XMLEntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML10EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_2

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/XML11EntityScanner;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/XML11EntityScanner;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fXML11EntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    goto :goto_0
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStandalone:Z

    return-void
.end method

.method public setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getPublicId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const/4 v2, 0x0

    move v13, v2

    :goto_0
    const/4 v8, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fStrictURI:Z

    invoke-static {v7, v4, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    if-eqz v4, :cond_1

    move-object/from16 v16, v4

    :goto_1
    if-eqz v2, :cond_2

    move-object v14, v6

    move-object v15, v7

    move-object v6, v3

    move-object v7, v2

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fReaderStack:Ljava/util/Stack;

    invoke-virtual {v2, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    if-nez v2, :cond_2c

    :goto_3
    new-instance v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    new-instance v5, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v15, v1, v14}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fTempByteBuffer:[B

    const/4 v11, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v10, p3

    move/from16 v12, p4

    invoke-direct/range {v2 .. v12}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/io/InputStream;Ljava/io/Reader;[BLjava/lang/String;ZZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v13}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->setEncodingExternallySpecified(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityScanner:Lmf/org/apache/xerces/impl/XMLEntityScanner;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLEntityScanner;->setCurrentEntity(Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v2, v0, v15, v1, v14}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v9

    :cond_0
    const/4 v2, 0x1

    move v13, v2

    goto :goto_0

    :cond_1
    move-object/from16 v16, v6

    goto :goto_1

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v3, v2

    move-object v4, v7

    move-object v2, v6

    :goto_4
    new-instance v6, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;-><init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V

    if-eqz v9, :cond_a

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "UTF-16"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    const-string/jumbo v3, "ISO-10646-UCS-4"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string/jumbo v3, "ISO-10646-UCS-2"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_3
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move-object/from16 v0, p2

    instance-of v4, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    if-nez v4, :cond_5

    :goto_5
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    if-nez v2, :cond_8

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v3, v2

    move-object v4, v7

    move-object v2, v6

    goto :goto_4

    :cond_5
    move-object v2, v3

    check-cast v2, Ljava/net/HttpURLConnection;

    check-cast p2, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual/range {p2 .. p2}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v4

    if-eqz v4, :cond_7

    move v2, v4

    goto :goto_5

    :cond_7
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    move v2, v4

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v2, v6

    move-object v3, v4

    move-object v4, v7

    goto/16 :goto_4

    :cond_9
    move-object v3, v4

    move-object v4, v2

    goto/16 :goto_4

    :cond_a
    const/4 v3, 0x4

    new-array v5, v3, [B

    const/4 v3, 0x0

    :goto_7
    const/4 v7, 0x4

    if-ge v3, v7, :cond_b

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    int-to-byte v7, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    const/4 v7, 0x4

    if-eq v3, v7, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->getEncodingInfo([BI)Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;

    move-result-object v3

    iget-object v9, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->encoding:Ljava/lang/String;

    iget-object v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->isBigEndian:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$EncodingInfo;->hasBOM:Z

    if-nez v3, :cond_e

    :cond_d
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v5}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "UTF-8"

    if-eq v9, v3, :cond_f

    const-string/jumbo v3, "UTF-16"

    if-ne v9, v3, :cond_d

    const-wide/16 v10, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_8

    :cond_f
    const-wide/16 v10, 0x3

    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_8

    :cond_10
    const/4 v3, 0x3

    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_9
    const/4 v7, 0x3

    if-ge v3, v7, :cond_11

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_11

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    const/4 v7, 0x3

    if-eq v3, v7, :cond_12

    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    :goto_a
    const-string/jumbo v3, "UTF-8"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_12
    const/4 v3, 0x0

    aget v3, v5, v3

    const/16 v7, 0xef

    if-eq v3, v7, :cond_14

    :cond_13
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    goto :goto_a

    :cond_14
    const/4 v3, 0x1

    aget v3, v5, v3

    const/16 v7, 0xbb

    if-ne v3, v7, :cond_13

    const/4 v3, 0x2

    aget v3, v5, v3

    const/16 v5, 0xbf

    if-ne v3, v5, :cond_13

    goto :goto_a

    :cond_15
    const/4 v3, 0x4

    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_b
    const/4 v7, 0x4

    if-ge v3, v7, :cond_16

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_16
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x2

    if-ge v3, v7, :cond_18

    move-object v3, v8

    :cond_17
    :goto_c
    const-string/jumbo v5, "UTF-16"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5, v3}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_18
    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v10, 0x1

    aget v10, v5, v10

    const/16 v11, 0xfe

    if-eq v7, v11, :cond_1b

    :cond_19
    const/16 v11, 0xff

    if-eq v7, v11, :cond_1c

    :cond_1a
    const/4 v11, 0x4

    if-eq v3, v11, :cond_1d

    move-object v3, v8

    goto :goto_c

    :cond_1b
    const/16 v11, 0xff

    if-ne v10, v11, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-wide/16 v10, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_c

    :cond_1c
    const/16 v11, 0xfe

    if-ne v10, v11, :cond_1a

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v10, 0x2

    invoke-virtual {v6, v10, v11}, Ljava/io/InputStream;->skip(J)J

    goto :goto_c

    :cond_1d
    const/4 v3, 0x2

    aget v11, v5, v3

    const/4 v3, 0x3

    aget v5, v5, v3

    if-eqz v7, :cond_1f

    :cond_1e
    move-object v3, v8

    :goto_d
    const/16 v8, 0x3c

    if-ne v7, v8, :cond_17

    if-nez v10, :cond_17

    const/16 v7, 0x3f

    if-ne v11, v7, :cond_17

    if-nez v5, :cond_17

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_c

    :cond_1f
    const/16 v3, 0x3c

    if-ne v10, v3, :cond_1e

    if-nez v11, :cond_1e

    const/16 v3, 0x3f

    if-ne v5, v3, :cond_1e

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v3, v8

    goto :goto_d

    :cond_20
    const/4 v3, 0x4

    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_e
    const/4 v7, 0x4

    if-ge v3, v7, :cond_21

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_21

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_21
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x4

    if-eq v3, v7, :cond_23

    :cond_22
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_23
    const/4 v3, 0x0

    aget v3, v5, v3

    if-eqz v3, :cond_25

    :cond_24
    const/4 v3, 0x0

    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_22

    const/4 v3, 0x1

    aget v3, v5, v3

    if-nez v3, :cond_22

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_22

    const/4 v3, 0x3

    aget v3, v5, v3

    if-nez v3, :cond_22

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_25
    const/4 v3, 0x1

    aget v3, v5, v3

    if-nez v3, :cond_24

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_24

    const/4 v3, 0x3

    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_24

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_26
    const/4 v3, 0x4

    new-array v5, v3, [I

    const/4 v3, 0x0

    :goto_10
    const/4 v7, 0x4

    if-ge v3, v7, :cond_27

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v7

    aput v7, v5, v3

    aget v7, v5, v3

    const/4 v10, -0x1

    if-eq v7, v10, :cond_27

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_27
    invoke-virtual {v6}, Ljava/io/InputStream;->reset()V

    const/4 v7, 0x4

    if-eq v3, v7, :cond_29

    :cond_28
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v8}, Lmf/org/apache/xerces/impl/XMLEntityManager;->createReader(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/io/Reader;

    move-result-object v7

    move-object v14, v2

    move-object v15, v4

    goto/16 :goto_2

    :cond_29
    const/4 v3, 0x0

    aget v3, v5, v3

    if-eqz v3, :cond_2b

    :cond_2a
    const/4 v3, 0x0

    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_28

    const/4 v3, 0x1

    aget v3, v5, v3

    if-nez v3, :cond_28

    const/4 v3, 0x2

    aget v3, v5, v3

    const/16 v7, 0x3f

    if-ne v3, v7, :cond_28

    const/4 v3, 0x3

    aget v3, v5, v3

    if-nez v3, :cond_28

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_2b
    const/4 v3, 0x1

    aget v3, v5, v3

    const/16 v7, 0x3c

    if-ne v3, v7, :cond_2a

    const/4 v3, 0x2

    aget v3, v5, v3

    if-nez v3, :cond_2a

    const/4 v3, 0x3

    aget v3, v5, v3

    const/16 v7, 0x3f

    if-ne v3, v7, :cond_2a

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_11

    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    move-object/from16 v0, p0

    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3
.end method

.method public startDTDEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->DTDEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startDocumentEntity(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    sget-object v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->XMLEntity:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->setupCurrentEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fSecurityManager:Lmf/org/apache/xerces/util/SecurityManager;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v1, :cond_2

    :goto_1
    return-void

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v3, "EntityExpansionLimitExceeded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionLimit:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v8

    const/4 v5, 0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iput v8, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityExpansionCount:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-interface {v1, p1, v2, v0, v7}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public startEntity(Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntities:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isExternal()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_0
    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->size()I

    move-result v6

    move v5, v6

    :goto_1
    if-ltz v5, :cond_17

    if-eq v5, v6, :cond_f

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    :goto_2
    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    if-eq v2, p1, :cond_10

    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v0, :cond_2

    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    if-nez v2, :cond_6

    :cond_4
    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->isUnparsed()Z

    move-result v5

    const-string/jumbo v2, "%"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v2, v3

    :goto_4
    if-eqz v5, :cond_8

    :cond_5
    :goto_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v2, :cond_b

    :goto_6
    return-void

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isCachedDTD()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_4

    :cond_8
    if-nez v2, :cond_a

    :cond_9
    if-eqz v6, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalParameterEntities:Z

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_a
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fExternalGeneralEntities:Z

    if-nez v2, :cond_9

    goto :goto_5

    :cond_b
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_c

    move-object v2, v1

    :goto_7
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v3, :cond_d

    move-object v3, v1

    :goto_8
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v6, :cond_e

    move-object v0, v1

    :goto_9
    invoke-virtual {v5, v0, v2, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_6

    :cond_c
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_d
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_e
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_f
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    goto/16 :goto_2

    :cond_10
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    :goto_a
    if-ge v5, v6, :cond_11

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityStack:Ljava/util/Stack;

    invoke-virtual {v2, v5}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;

    const-string/jumbo v9, " -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$Entity;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_a

    :cond_11
    const-string/jumbo v2, " -> "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " -> "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v6, "RecursiveReference"

    new-array v9, v10, [Ljava/lang/Object;

    aput-object p1, v9, v4

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v9, v3

    invoke-virtual {v2, v5, v6, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    if-nez v2, :cond_12

    :goto_b
    return-void

    :cond_12
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->clear()V

    if-nez v7, :cond_13

    :goto_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ENTITY_SKIPPED"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v2, v3}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v2, v1, v3}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    const-string/jumbo v1, "ENTITY_SKIPPED"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityHandler:Lmf/org/apache/xerces/impl/XMLEntityHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fEntityAugs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v0, p1, v1}, Lmf/org/apache/xerces/impl/XMLEntityHandler;->endEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_b

    :cond_13
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v2, :cond_14

    move-object v2, v1

    :goto_d
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v3, :cond_15

    move-object v3, v1

    :goto_e
    invoke-static {v2, v3, v4}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fResourceIdentifier:Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;

    iget-object v6, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    if-nez v6, :cond_16

    move-object v0, v1

    :goto_f
    invoke-virtual {v5, v0, v2, v3, v4}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    iget-object v2, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v2}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_15
    iget-object v3, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v3}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v3

    goto :goto_e

    :cond_16
    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_17
    if-nez v7, :cond_18

    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;

    new-instance v4, Ljava/io/StringReader;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$InternalEntity;->text:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    :goto_10
    invoke-virtual {p0, p1, v0, p2, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->startEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/parser/XMLInputSource;ZZ)V

    return-void

    :cond_18
    check-cast v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ExternalEntity;->entityLocation:Lmf/org/apache/xerces/xni/XMLResourceIdentifier;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/XMLEntityManager;->resolveEntity(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v0

    goto :goto_10
.end method

.method public startExternalSubset()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fInExternalSubset:Z

    return-void
.end method
