.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/parser/XMLComponent;
.implements Lmf/org/apache/xerces/xni/parser/XMLDocumentFilter;
.implements Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;
.implements Lmf/org/apache/xerces/impl/RevalidationHandler;
.implements Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;,
        Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;
    }
.end annotation


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field private static final BUFFER_SIZE:I = 0x14

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field private static final DEBUG:Z = false

.field private static final DEBUG_NORMALIZATION:Z = false

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field private static final EMPTY_TABLE:Ljava/util/Hashtable;

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field public static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field public static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final FEATURE_DEFAULTS:[Ljava/lang/Boolean;

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_CONSTRAINT_NUM:I = 0x1

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field static final INC_STACK_SIZE:I = 0x8

.field static final INITIAL_STACK_SIZE:I = 0x8

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final PROPERTY_DEFAULTS:[Ljava/lang/Object;

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final STANDARD_URI_CONFORMANT_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/standard-uri-conformant"

.field public static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field public static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field static final XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

.field static final XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;


# instance fields
.field private fAppendBuffer:Z

.field protected fAugPSVI:Z

.field protected final fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

.field private final fBuffer:Ljava/lang/StringBuffer;

.field private final fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

.field private fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCMStateStack:[[I

.field private fCurrCMState:[I

.field private fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

.field private fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field protected fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

.field private fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

.field protected fDoValidation:Z

.field protected fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

.field protected fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fDynamicValidation:Z

.field private fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fElementDepth:I

.field private final fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

.field protected fEntityRef:Z

.field protected fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fExpandedLocationPairs:Ljava/util/Hashtable;

.field protected fExternalNoNamespaceSchema:Ljava/lang/String;

.field protected fExternalSchemas:Ljava/lang/String;

.field private fFirstChunk:Z

.field protected fFullChecking:Z

.field private final fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field protected fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

.field private fIDCChecking:Z

.field protected fIdConstraint:Z

.field private fIgnoreXSITypeDepth:I

.field protected fInCDATA:Z

.field protected fJaxpSchemaSource:Ljava/lang/Object;

.field protected final fLocationPairs:Ljava/util/Hashtable;

.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

.field protected fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

.field private fNFullValidationDepth:I

.field private fNNoneValidationDepth:I

.field protected fNamespaceGrowth:Z

.field private fNil:Z

.field private fNilStack:[Z

.field protected fNormalizeData:Z

.field private final fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

.field private fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

.field private final fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private fRootElementDeclQName:Ljavax/xml/namespace/QName;

.field private fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

.field private fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fRootTypeQName:Ljavax/xml/namespace/QName;

.field private fSawCharacters:Z

.field private fSawText:Z

.field private fSawTextStack:[Z

.field protected fSchemaDynamicValidation:Z

.field protected fSchemaElementDefault:Z

.field private final fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

.field private fSchemaType:Ljava/lang/String;

.field private fSkipValidationDepth:I

.field private fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

.field private fStrictAssess:Z

.field private fStrictAssessStack:[Z

.field private fStringContent:[Z

.field private fSubElement:Z

.field private fSubElementStack:[Z

.field private final fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

.field private final fTempQName:Lmf/org/apache/xerces/xni/QName;

.field private fTrailing:Z

.field private fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field private fUnionType:Z

.field protected final fUnparsedLocations:Ljava/util/ArrayList;

.field protected fUseGrammarPoolOnly:Z

.field private fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field protected fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

.field private fValidationRoot:Ljava/lang/String;

.field protected fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

.field protected fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

.field private fWhiteSpace:S

.field protected final fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

.field protected final fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

.field private final nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xb

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/features/allow-java-encodings"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://apache.org/xml/features/standard-uri-conformant"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/features/validate-annotations"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v2, v0, v1

    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v1, v0, v3

    const/16 v1, 0xc

    const-string/jumbo v2, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "http://apache.org/xml/features/namespace-growth"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Boolean;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v1, v0, v4

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v1, v0, v5

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v1, v0, v6

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_XSI:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    new-instance v0, Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/AugmentationsImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnparsedLocations:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0, v7, v5, v1}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    const-string/jumbo v1, "QName"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/CMBuilder;-><init>(Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lmf/org/apache/xerces/impl/XMLErrorReporter;Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v0, v6, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v0, v6, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v0, v6, [[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iput-boolean v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    new-array v0, v6, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setExtraChecking(Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setFacetChecking(Z)V

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method

.method private activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 2

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getSelector()Lmf/org/apache/xerces/impl/xs/identity/Selector;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/impl/xs/identity/Selector;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-void

    :cond_0
    return-void
.end method

.method private expectedStr(Ljava/util/Vector;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    if-gtz v0, :cond_0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p3, :cond_0

    iget-object v0, p3, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getElementDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    return v3

    :pswitch_1
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getAttributeDeclaration(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    move-result-object v0

    if-nez v0, :cond_3

    return v2

    :cond_3
    return v3

    :pswitch_2
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTypeDefinition(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    :cond_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private normalizeWhitespace(Ljava/lang/String;Z)V
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v2, v3, [C

    iput-object v2, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v2, v1

    move v0, p2

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v6, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    int-to-char v4, v4

    aput-char v4, v0, v6

    move v0, v1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    if-lt v0, v3, :cond_0

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/xni/XMLString;->length:I

    const/16 v4, 0x20

    aput-char v4, v0, v5

    move v0, p2

    goto :goto_2

    :cond_4
    if-nez v0, :cond_6

    :cond_5
    :goto_3
    return-void

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v0, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    goto :goto_3
.end method

.method private normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V
    .locals 11

    const/16 v10, 0x20

    const/4 v1, 0x1

    const/4 v4, 0x0

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int v6, v0, v2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    iput-object v2, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    move v5, v0

    move v2, v4

    move v3, p2

    move v0, v4

    :goto_1
    if-ge v5, v6, :cond_5

    iget-object v7, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v7, v7, v5

    invoke-static {v7}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    int-to-char v3, v7

    aput-char v3, v2, v8

    move v2, v1

    move v3, v4

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v2, v2, 0x1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    :goto_3
    if-nez v2, :cond_1

    move v0, v1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v8, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lmf/org/apache/xerces/xni/XMLString;->length:I

    aput-char v10, v3, v8

    move v3, p2

    goto :goto_3

    :cond_5
    if-nez v3, :cond_8

    move v3, v4

    :goto_4
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gt v5, v1, :cond_c

    :cond_6
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    sub-int/2addr v1, v5

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-eqz v3, :cond_e

    :cond_7
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    :goto_6
    return-void

    :cond_8
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v3, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gt v3, v1, :cond_a

    if-nez v0, :cond_b

    :cond_9
    move v3, v4

    goto :goto_4

    :cond_a
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v3, Lmf/org/apache/xerces/xni/XMLString;->length:I

    move v3, v1

    goto :goto_4

    :cond_b
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_c
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    if-nez v1, :cond_6

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v5, 0x2

    if-ne v1, v5, :cond_6

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    if-nez v1, :cond_d

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v10, v0, v4

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aput-char v10, v0, v4

    goto :goto_5

    :cond_e
    if-nez v2, :cond_7

    goto :goto_6
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 4

    const/4 v3, 0x0

    array-length v0, p2

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/xs/StringList;)V
    .locals 7

    const/4 v3, 0x0

    array-length v4, p2

    new-array v5, v4, [Ljava/lang/String;

    move v2, v3

    move v0, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, p2, v2

    invoke-interface {p3, v1}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    aget-object v6, p2, v2

    aput-object v6, v5, v0

    move v0, v1

    goto :goto_1

    :cond_1
    if-gtz v0, :cond_2

    :goto_2
    return-void

    :cond_2
    if-eq v0, v4, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    invoke-static {v5, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public activateField(Lmf/org/apache/xerces/impl/xs/identity/Field;I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xs/identity/Field;->createMatcher(Lmf/org/apache/xerces/impl/xs/identity/ValueStore;)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->addMatcher(Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startDocumentFragment()V

    return-object v0
.end method

.method addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 11

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v5

    invoke-interface {v5}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v6

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_8

    invoke-interface {v5, v4}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v7, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v2, :cond_2

    :goto_1
    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    invoke-interface {p2, v3, v8}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v8, 0x1

    if-eq v0, v8, :cond_4

    :cond_0
    :goto_3
    if-eqz v3, :cond_5

    :cond_1
    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v2

    iget-object v1, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    if-nez v3, :cond_0

    const-string/jumbo v0, "cvc-complex-type.4"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_1

    new-instance v8, Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v2, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    iget-object v3, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v0, v2, v3}, Lmf/org/apache/xerces/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_6

    const-string/jumbo v0, ""

    move-object v2, v0

    :goto_5
    instance-of v0, p2, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    if-nez v0, :cond_7

    const-string/jumbo v0, "CDATA"

    invoke-interface {p2, v8, v0, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_6
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v2, :cond_1

    invoke-interface {p2, v0}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    new-instance v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string/jumbo v3, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v3, v2}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v7, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iget-object v0, v7, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    const/4 v0, 0x2

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    const/4 v0, 0x2

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    const/4 v0, 0x1

    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fSpecified:Z

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_5

    :cond_7
    move-object v0, p2

    check-cast v0, Lmf/org/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v3

    const-string/jumbo v9, "CDATA"

    invoke-virtual {v0, v8, v9, v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v3

    goto :goto_6

    :cond_8
    return-void
.end method

.method public characterData(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_4

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-nez v0, :cond_6

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_7

    :cond_2
    :goto_2
    return v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eq v0, v6, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v4, v4, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget v5, v5, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v3, v4, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v6, :cond_2

    move v0, v1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    move v2, v1

    goto :goto_2
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v0, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEmptyXMLStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V
    .locals 4

    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    :cond_0
    const-string/jumbo v0, "cvc-elt.1.b"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    goto :goto_0
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public elementDefault(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v1, :cond_1

    move-object v1, v2

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eqz v1, :cond_3

    :goto_1
    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v1, v8, :cond_6

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v1, v9, :cond_a

    move-object v1, v2

    :goto_2
    iget-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v2, v9, :cond_c

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v0, v0, v7

    if-ltz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->endContentModel([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "cvc-complex-type.2.4.b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v1, :cond_5

    :cond_4
    const-string/jumbo v1, "cvc-complex-type.2.1"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v1, :cond_4

    goto :goto_1

    :cond_6
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v1, :cond_8

    :goto_3
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v3, :cond_9

    :cond_7
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :goto_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v1, p2, v3, v4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_2

    :cond_8
    const-string/jumbo v1, "cvc-complex-type.2.2"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_9
    :try_start_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v3, :cond_7

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v3, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "cvc-complex-type.2.2"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_2

    :cond_a
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-nez v1, :cond_b

    move-object v1, v2

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v1, "cvc-complex-type.2.3"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto/16 :goto_2

    :cond_c
    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v0, v10, :cond_2

    goto/16 :goto_0

    :cond_d
    aget v3, v2, v7

    aget v4, v2, v9

    if-lt v4, v3, :cond_e

    const-string/jumbo v2, "cvc-complex-type.2.4.b"

    new-array v3, v9, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v7

    aput-object v0, v3, v8

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    sub-int v0, v3, v4

    if-gt v0, v8, :cond_f

    const-string/jumbo v0, "cvc-complex-type.2.4.i"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v10

    invoke-interface {v5, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v9

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v4, "cvc-complex-type.2.4.j"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v10

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v9

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v10

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidComplexType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    return-object v1

    :cond_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_2

    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-eqz v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "cvc-type.3.1.2"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :try_start_0
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v2, :cond_5

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNormalizationRequired(Z)V

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v0, p2, v2, v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_4

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "cvc-type.3.1.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v2, v4

    aput-object p2, v2, v5

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_1

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_1
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndDocument()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v3, 0x0

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v1, v2, v3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method final endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 6

    const/4 v1, 0x2

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v3, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    if-gt v2, v3, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v0, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v2, v3, :cond_4

    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v2, v3, :cond_5

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-nez v2, :cond_6

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    iget-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    if-nez v2, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v4, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->popContext()[Ljava/lang/String;

    :goto_5
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object p2, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v1, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-short v4, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    goto :goto_1

    :cond_4
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto :goto_2

    :cond_5
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-boolean v0, v2, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v2, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    if-eqz v2, :cond_8

    :goto_6
    int-to-short v0, v0

    iput-short v0, v3, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_6
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public endValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endValueScope()V

    return-void
.end method

.method ensureStackCapacity()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, 0x8

    new-array v1, v0, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    new-array v1, v0, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    new-array v1, v0, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-array v1, v0, [Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    new-array v1, v0, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    new-array v1, v0, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    new-array v1, v0, [Z

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    new-array v0, v0, [[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    goto :goto_0
.end method

.method findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v6, v0

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-eqz v0, :cond_5

    :cond_0
    :goto_1
    return-object v6

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v2, :cond_2

    move-object v6, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_3

    move-object v6, v0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    invoke-virtual {v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v6, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v2, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v5, "GrammarConflict"

    invoke-virtual {v0, v2, v5, v1, v4}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-object v6, v1

    goto :goto_0

    :cond_5
    if-nez v6, :cond_a

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    int-to-short v1, p1

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p3, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fEnclosedElementName:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p4, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fTriggeringComponent:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-object p5, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fAttributes:Lmf/org/apache/xerces/xni/XMLAttributes;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_b

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    if-eqz p2, :cond_c

    :goto_3
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_d

    :cond_7
    :goto_4
    if-nez v6, :cond_e

    :cond_8
    if-nez v6, :cond_f

    move-object v0, v1

    :goto_5
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-static {v1, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->resolveDocument(Lmf/org/apache/xerces/impl/xs/XSDDescription;Ljava/util/Hashtable;Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;)Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v1

    if-nez v6, :cond_10

    :cond_9
    move v0, v3

    :goto_6
    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0, v2, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->loadSchema(Lmf/org/apache/xerces/impl/xs/XSDDescription;Lmf/org/apache/xerces/xni/parser/XMLInputSource;Ljava/util/Hashtable;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    goto :goto_1

    :cond_a
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, p1, p4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->hasSchemaComponent(Lmf/org/apache/xerces/impl/xs/SchemaGrammar;SLmf/org/apache/xerces/xni/QName;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setBaseSystemId(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    sget-object p2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    :cond_d
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->getLocationArray()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-eqz v2, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {p0, v2, v0, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->setLocationHints(Lmf/org/apache/xerces/impl/xs/XSDDescription;[Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fLocationHints:[Ljava/lang/String;

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_f
    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->EMPTY_TABLE:Ljava/util/Hashtable;

    goto :goto_5

    :cond_10
    :try_start_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_9

    :try_start_2
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getDocumentLocations()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/StringList;->contains(Ljava/lang/String;)Z
    :try_end_2
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-nez v0, :cond_11

    move v0, v3

    goto :goto_6

    :cond_11
    move v0, v4

    goto :goto_6

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_6

    :catch_1
    move-exception v5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSDDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->getLocationHints()[Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "schema_reference.4"

    new-array v3, v3, [Ljava/lang/Object;

    if-nez v7, :cond_12

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_7
    aput-object v7, v3, v4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;SLjava/lang/Exception;)Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    aget-object v7, v7, v4

    goto :goto_7
.end method

.method getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fQNameDV:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const/4 v2, 0x0

    invoke-interface {v0, p2, v1, v2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/xni/QName;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    if-eq v0, v1, :cond_1

    move-object v7, v8

    :goto_0
    if-eqz v7, :cond_2

    move-object v2, v7

    :goto_1
    if-eqz v2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_5

    :cond_0
    :goto_2
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v0, "cvc-elt.4.1"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object p2, v1, v10

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v1, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v7

    goto :goto_0

    :cond_2
    iget-object v2, v4, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x7

    move-object v0, p0

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v2, v7

    goto :goto_1

    :cond_3
    iget-object v1, v4, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "cvc-elt.4.2"

    new-array v1, v10, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object p2, v1, v9

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_6

    move v1, v6

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_7

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-static {v2, v0, v1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->checkTypeDerivationOk(Lmf/org/apache/xerces/xs/XSTypeDefinition;Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvc-elt.4.3"

    new-array v1, v11, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v6

    aput-object p2, v1, v9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v10

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    move v1, v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fBlock:S

    or-int/2addr v0, v1

    int-to-short v1, v0

    goto :goto_4
.end method

.method public getDocumentHandler()Lmf/org/apache/xerces/xni/XMLDocumentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-object v0
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-object v0
.end method

.method getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    if-eqz p1, :cond_0

    :goto_0
    const-string/jumbo v0, "ELEMENT_PSVI"

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-interface {p1, v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->reset()V

    return-object p1

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugmentations:Lmf/org/apache/xerces/util/AugmentationsImpl;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    goto :goto_0
.end method

.method public getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->FEATURE_DEFAULTS:[Ljava/lang/Boolean;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGlobalElementDecl(Lmf/org/apache/xerces/xni/QName;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->PROPERTY_DEFAULTS:[Ljava/lang/Object;

    aget-object v0, v1, v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecognizedFeatures()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getRecognizedProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_3

    :cond_0
    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_5

    :cond_2
    :goto_0
    return v5

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cvc-elt.3.1"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return v4

    :cond_4
    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v2, :cond_2

    const-string/jumbo v0, "cvc-elt.3.2.2"

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method handleCharacters(Lmf/org/apache/xerces/xni/XMLString;)Lmf/org/apache/xerces/xni/XMLString;
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_5

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    if-nez v0, :cond_7

    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_8

    :cond_2
    :goto_3
    return-object p1

    :cond_3
    return-object p1

    :cond_4
    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eqz v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    if-eq v0, v5, :cond_6

    :goto_4
    invoke-direct {p0, p1, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->normalizeWhitespace(Lmf/org/apache/xerces/xni/XMLString;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v5, :cond_2

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_5
    iget v1, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v1, v0

    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v1

    if-eqz v1, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3
.end method

.method handleEndDocument()V
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endDocument()V

    goto :goto_0
.end method

.method handleEndElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 9

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processElementContent(Lmf/org/apache/xerces/xni/QName;)V

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_6

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-lt v0, v1, :cond_13

    :goto_1
    const/4 v0, 0x0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v1, :cond_14

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v1, v1, v2

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    :goto_2
    return-object v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    :cond_2
    :goto_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_5

    :goto_5
    return-object p2

    :cond_3
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-lez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    goto :goto_3

    :cond_4
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p2

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v8

    add-int/lit8 v0, v8, -0x1

    move v7, v0

    :goto_6
    if-ltz v7, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getNillable()Z

    move-result v3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    :goto_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    :goto_9
    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    :goto_a
    add-int/lit8 v0, v7, -0x1

    move v7, v0

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xs/XSTypeDefinition;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V

    goto :goto_a

    :cond_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v4, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    goto :goto_7

    :cond_9
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-short v5, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    goto :goto_8

    :cond_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v6, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_9

    :cond_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->size()I

    move-result v0

    if-gtz v0, :cond_d

    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v2

    add-int/lit8 v0, v8, -0x1

    move v1, v0

    :goto_c
    if-lt v1, v2, :cond_f

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-nez v3, :cond_e

    :cond_c
    :goto_d
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_c

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->popContext()V

    goto :goto_b

    :cond_e
    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    goto :goto_d

    :cond_f
    add-int/lit8 v0, v8, -0x1

    move v1, v0

    :goto_e
    if-lt v1, v2, :cond_12

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v0

    instance-of v3, v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    if-nez v3, :cond_11

    :cond_10
    :goto_f
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    :cond_11
    check-cast v0, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getIdentityConstraint()Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/identity/Selector$Matcher;->getInitialDepth()I

    move-result v0

    invoke-virtual {v4, v3, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    goto :goto_f

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->endElement()V

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    goto/16 :goto_1

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->checkIDRefID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    if-nez v0, :cond_16

    :goto_10
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    if-nez v0, :cond_17

    :cond_15
    :goto_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v0, :cond_18

    :goto_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->endElementPSVI(Z[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    goto/16 :goto_2

    :cond_16
    const-string/jumbo v1, "cvc-id.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_17
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->fullSchemaChecking(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;Lmf/org/apache/xerces/impl/xs/models/CMBuilder;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    goto :goto_11

    :cond_18
    const/4 v0, 0x0

    :goto_13
    array-length v2, v1

    if-ge v0, v2, :cond_19

    aget-object v2, v1, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->setImmutable(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v2, "http://www.w3.org/2001/XMLSchema"

    invoke-interface {v0, v2, v1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V

    goto :goto_12
.end method

.method handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_0

    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startDocument()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    goto :goto_1
.end method

.method handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    if-eqz v0, :cond_d

    :goto_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    if-gez v0, :cond_e

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_10

    move-object v0, v3

    :goto_2
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    :goto_3
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    if-nez v0, :cond_1d

    move-object v8, v3

    :goto_4
    if-nez v8, :cond_1f

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_21

    :cond_2
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_25

    :cond_3
    :goto_6
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-eq v0, v1, :cond_28

    :cond_4
    :goto_7
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    if-ge v0, v1, :cond_29

    move-object v0, v3

    :goto_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_2a

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    if-nez v0, :cond_33

    :cond_6
    :goto_9
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_35

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_36

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v0, v7, :cond_37

    move v0, v6

    :goto_a
    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    :goto_b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_38

    :cond_8
    :goto_c
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_39

    :goto_d
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_3a

    :goto_e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_3b

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v0, :cond_3e

    :cond_9
    :goto_f
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_40

    :goto_10
    iput-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    if-nez v0, :cond_41

    :goto_11
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_42

    :cond_a
    :goto_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_43

    :goto_13
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    if-nez v0, :cond_44

    :cond_b
    :goto_14
    invoke-virtual {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    if-nez v3, :cond_45

    :goto_15
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherCount()I

    move-result v0

    :goto_16
    if-ge v6, v0, :cond_46

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v1, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->getMatcherAt(I)Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lmf/org/apache/xerces/impl/xs/identity/XPathMatcher;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->isGrammarFound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    goto/16 :goto_0

    :cond_d
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    invoke-interface {p2, v1, v2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->storeLocations(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_f

    :goto_17
    return-object p3

    :cond_f
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_17

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubGroupHandler:Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    invoke-interface {v0, p1, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aget v0, v0, v6

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    move-object v0, v1

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fParticle:Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    if-nez v0, :cond_13

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v0

    if-nez v0, :cond_19

    const-string/jumbo v0, "cvc-complex-type.2.4.d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->whatCanGoHere([I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_12

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->expectedStr(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    invoke-interface {v2, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->occurenceInfo([I)[I

    move-result-object v2

    if-nez v2, :cond_14

    const-string/jumbo v2, "cvc-complex-type.2.4.a"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_14
    aget v4, v2, v6

    aget v5, v2, v7

    aget v8, v2, v10

    if-lt v8, v4, :cond_16

    if-ge v8, v5, :cond_18

    :cond_15
    const-string/jumbo v2, "cvc-complex-type.2.4.a"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_16
    sub-int v0, v4, v8

    if-gt v0, v7, :cond_17

    const-string/jumbo v0, "cvc-complex-type.2.4.g"

    new-array v5, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v5, v6

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v11

    invoke-interface {v8, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v10

    invoke-virtual {p0, v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_17
    const-string/jumbo v5, "cvc-complex-type.2.4.h"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v9, v8, v6

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aget v2, v2, v11

    invoke-interface {v9, v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->getTermName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v7

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v10

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v11

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_18
    const/4 v2, -0x1

    if-eq v5, v2, :cond_15

    const-string/jumbo v2, "cvc-complex-type.2.4.e"

    new-array v4, v11, [Ljava/lang/Object;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v4, v6

    aput-object v0, v4, v7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-virtual {p0, v2, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_19
    aget v2, v0, v7

    aget v0, v0, v10

    if-ge v0, v2, :cond_1b

    :cond_1a
    const-string/jumbo v0, "cvc-complex-type.2.4.d"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_1b
    const/4 v0, -0x1

    if-eq v2, v0, :cond_1a

    const-string/jumbo v0, "cvc-complex-type.2.4.f"

    new-array v4, v10, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-virtual {p0, v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v1

    goto/16 :goto_2

    :cond_1c
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->ensureStackCapacity()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElementStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    aput-boolean v7, v1, v2

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElemDeclStack:[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    aput-object v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNilStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    aput-boolean v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotationStack:[Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    aput-object v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTypeStack:[Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    aput-object v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssessStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    aput-boolean v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStack:[Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    aput-object v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMStateStack:[[I

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    aput-object v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawTextStack:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    aput-boolean v4, v1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStringContent:[Z

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iget-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawCharacters:Z

    aput-boolean v4, v1, v2

    goto/16 :goto_3

    :cond_1d
    instance-of v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v1, :cond_1e

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v8, v0

    goto/16 :goto_4

    :cond_1e
    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-object v8, v3

    goto/16 :goto_4

    :cond_1f
    iget-short v0, v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v10, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_20

    :goto_18
    return-object p3

    :cond_20
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_18

    :cond_21
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_22

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    if-nez v0, :cond_23

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_24

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootTypeQName(Ljavax/xml/namespace/QName;)V

    goto/16 :goto_5

    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V

    goto/16 :goto_5

    :cond_24
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_5

    :cond_25
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_27

    :cond_26
    :goto_19
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_6

    :cond_27
    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_19

    :cond_28
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_4

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    goto/16 :goto_7

    :cond_29
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_8

    :cond_2a
    if-nez v0, :cond_5

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    if-eqz v0, :cond_2c

    if-nez v8, :cond_32

    :cond_2b
    :goto_1a
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fStrictAssess:Z

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    goto/16 :goto_b

    :cond_2c
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-eqz v0, :cond_2e

    :cond_2d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    if-nez v0, :cond_2f

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_31

    :goto_1b
    return-object p3

    :cond_2e
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    if-nez v0, :cond_2d

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "cvc-elt.1.a"

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v1, v2, v4, v7}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_1a

    :cond_2f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_30

    :goto_1c
    const/4 v0, -0x2

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    return-object p3

    :cond_30
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V

    goto :goto_1c

    :cond_31
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    goto :goto_1b

    :cond_32
    iget-short v0, v8, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v0, v7, :cond_2b

    const-string/jumbo v0, "cvc-complex-type.2.4.c"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1a

    :cond_33
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getAndCheckXsiType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v0, :cond_6

    if-eqz v1, :cond_34

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_9

    :cond_34
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_9

    :cond_35
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v10, :cond_7

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_b

    :cond_36
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAppendBuffer:Z

    goto/16 :goto_b

    :cond_37
    move v0, v7

    goto/16 :goto_a

    :cond_38
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getAbstract()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "cvc-elt.2"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_39
    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    goto/16 :goto_d

    :cond_3a
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFirstChunk:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTrailing:Z

    iput-boolean v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    const/4 v0, -0x1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S

    goto/16 :goto_e

    :cond_3b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAbstract()Z

    move-result v1

    if-nez v1, :cond_3c

    :goto_1d
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v1, :cond_9

    iget-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v1, v7, :cond_9

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-eq v1, v11, :cond_3d

    :try_start_0
    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fXSSimpleType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_3c
    const-string/jumbo v1, "cvc-type.2"

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_3d
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_f

    :cond_3e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v1

    if-eq v1, v11, :cond_3f

    :try_start_1
    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fWhiteSpace:S
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/DatatypeException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_f

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :cond_3f
    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    goto/16 :goto_f

    :cond_40
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCMBuilder:Lmf/org/apache/xerces/impl/xs/models/CMBuilder;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getContentModel(Lmf/org/apache/xerces/impl/xs/models/CMBuilder;)Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    goto/16 :goto_10

    :cond_41
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;->startContentModel()[I

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    goto/16 :goto_11

    :cond_42
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v1, :cond_a

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getXsiNil(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    goto/16 :goto_12

    :cond_43
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getAttrGrp()Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v3

    goto/16 :goto_13

    :cond_44
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->startElement()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->pushContext()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    if-lez v0, :cond_b

    iput-boolean v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0, v1, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V

    goto/16 :goto_14

    :cond_45
    invoke-virtual {p0, p1, p2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->addDefaultAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V

    goto/16 :goto_15

    :cond_46
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v0, :cond_47

    :goto_1e
    return-object p3

    :cond_47
    invoke-virtual {p0, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->getEmptyAugs(Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object p3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentPSVI:Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    iput-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    goto :goto_1e
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleIgnorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method processAttributes(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 20

    const/16 v18, 0x0

    invoke-interface/range {p2 .. p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v19

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-nez v1, :cond_4

    :cond_0
    const/4 v1, 0x1

    move v14, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    if-eqz v14, :cond_5

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    :goto_1
    const/4 v4, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v4, v0, :cond_1b

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-eqz v1, :cond_6

    :cond_1
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string/jumbo v1, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    if-nez v1, :cond_7

    new-instance v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;-><init>()V

    const-string/jumbo v3, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v3, v1}, Lmf/org/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationRoot:Ljava/lang/String;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationContext:Ljava/lang/String;

    move-object v7, v1

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    if-eq v1, v2, :cond_8

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v1, v2, :cond_d

    :cond_3
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    move v14, v1

    goto :goto_0

    :cond_5
    invoke-virtual/range {p3 .. p3}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->getAttributeUses()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v2

    move-object/from16 v0, p3

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object v15, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-nez v1, :cond_1

    goto :goto_4

    :cond_7
    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->reset()V

    goto :goto_3

    :cond_8
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    if-eq v1, v2, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    if-eq v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    if-eq v1, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    if-eq v1, v2, :cond_c

    :goto_6
    if-eqz v5, :cond_2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    goto :goto_5

    :cond_9
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_TYPE:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    :cond_a
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NIL:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    :cond_b
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_SCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    :cond_c
    sget-object v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->XSI_NONAMESPACESCHEMALOCATION:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    goto :goto_6

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    const-string/jumbo v2, "xmlns:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v14, :cond_f

    const/4 v6, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    move/from16 v0, v16

    if-ge v2, v0, :cond_11

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eq v3, v5, :cond_10

    :cond_e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_7

    :cond_f
    const-string/jumbo v1, "cvc-type.3.1.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_10
    iget-object v3, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v3, v5, :cond_e

    move-object v6, v1

    :cond_11
    if-eqz v6, :cond_12

    :goto_8
    const/4 v5, 0x0

    if-nez v6, :cond_15

    iget-short v1, v15, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v10, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    const/4 v9, 0x6

    move-object/from16 v8, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    invoke-virtual/range {v8 .. v13}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v1

    if-nez v1, :cond_16

    :goto_9
    if-eqz v5, :cond_17

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v1

    const/16 v2, 0x10

    if-eq v1, v2, :cond_18

    move-object/from16 v8, v18

    :goto_a
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual/range {v1 .. v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V

    move-object/from16 v18, v8

    goto/16 :goto_5

    :cond_12
    if-nez v15, :cond_14

    :cond_13
    const-string/jumbo v1, "cvc-complex-type.3.2.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    move-object/from16 v0, p0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    goto/16 :goto_5

    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v15, v1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_8

    :cond_15
    iget-object v5, v6, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v8, v18

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v5

    goto :goto_9

    :cond_17
    iget-short v1, v15, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    const-string/jumbo v1, "cvc-complex-type.3.2.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v5, v5, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v5, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_18
    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-nez v1, :cond_19

    move-object/from16 v8, v18

    goto :goto_a

    :cond_19
    if-nez v18, :cond_1a

    iget-object v1, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    move-object v8, v1

    goto/16 :goto_a

    :cond_1a
    const-string/jumbo v1, "cvc-complex-type.5.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v8, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v8, v2, v3

    const/4 v3, 0x1

    iget-object v8, v5, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fName:Ljava/lang/String;

    aput-object v8, v2, v3

    const/4 v3, 0x2

    aput-object v18, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v8, v18

    goto/16 :goto_a

    :cond_1b
    if-eqz v14, :cond_1d

    :cond_1c
    :goto_b
    return-void

    :cond_1d
    move-object/from16 v0, p3

    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    if-eqz v1, :cond_1c

    if-eqz v18, :cond_1c

    const-string/jumbo v1, "cvc-complex-type.5.2"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v18, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p3

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fIDAttrName:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b
.end method

.method processElementContent(Lmf/org/apache/xerces/xni/QName;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_4

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v6, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_7

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_a

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-nez v0, :cond_d

    :cond_2
    :goto_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    if-eqz v0, :cond_15

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v2, :cond_6

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v3, v1, [C

    iput-object v3, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v5, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDefaultValue:Lmf/org/apache/xerces/xni/XMLString;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    if-lt v2, v1, :cond_5

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-eqz v0, :cond_9

    :cond_8
    const-string/jumbo v0, "cvc-elt.3.2.1"

    new-array v1, v8, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_9
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_8

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSawText:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-ne v0, v1, :cond_c

    :cond_b
    :goto_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->elementLocallyValidType(Lmf/org/apache/xerces/xni/QName;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-static {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->ElementDefaultValidImmediate(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "cvc-elt.5.1.1"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->getConstraintType()S

    move-result v0

    if-ne v0, v8, :cond_2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNil:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    if-nez v0, :cond_f

    :goto_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0xf

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getTypeCategory()S

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    const-string/jumbo v0, "cvc-elt.5.2.2.2.2"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    aput-object v2, v1, v7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v0, "cvc-elt.5.2.2.1"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {p0, v0, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_10
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    iget-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-eq v3, v9, :cond_12

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->fContentType:S

    if-ne v0, v7, :cond_2

    if-eqz v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v0, v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    const-string/jumbo v0, "cvc-elt.5.2.2.2.2"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    aput-object v2, v1, v7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_12
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "cvc-elt.5.2.2.2.1"

    new-array v1, v9, [Ljava/lang/Object;

    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v3, v1, v5

    aput-object v2, v1, v7

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-virtual {p0, v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_13
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_2

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_2

    :cond_15
    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUnionType:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    if-eqz v0, :cond_17

    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    if-nez v2, :cond_18

    :cond_16
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    new-array v3, v1, [C

    iput-object v3, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :goto_8
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    invoke-virtual {v0, v5, v1, v2, v5}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v5, v0, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iput v1, v0, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    invoke-interface {v0, v1, v6}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_3

    :cond_17
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_18
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizedStr:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    if-lt v2, v1, :cond_16

    goto :goto_8
.end method

.method processOneAttribute(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;ILmf/org/apache/xerces/impl/xs/XSAttributeDecl;Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;)V
    .locals 8

    invoke-interface {p2, p3}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->pushContext()V

    iget-object v3, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {v3, v4, v1, v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v2

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    if-nez v1, :cond_3

    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    :cond_0
    :goto_1
    if-nez v2, :cond_6

    :cond_1
    :goto_2
    if-nez v2, :cond_9

    :cond_2
    :goto_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    if-nez v1, :cond_c

    :goto_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    if-nez v1, :cond_d

    :goto_5
    return-void

    :cond_3
    :try_start_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->setValue(ILjava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v5, "cvc-attribute.3"

    const/4 v1, 0x4

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v6, v1

    const/4 v1, 0x2

    aput-object v4, v6, v1

    const/4 v7, 0x3

    instance-of v1, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v1, :cond_5

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_6
    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :try_start_2
    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v1

    const/16 v5, 0x14

    if-ne v1, v5, :cond_0

    move-object v0, v2

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v1, v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    iget-object v6, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v1, v1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNotation:Lmf/org/apache/xerces/impl/xs/XSNotationDecl;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_5
    move-object v1, v3

    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_6
    invoke-virtual {p4}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getConstraintType()S

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_7
    const-string/jumbo v1, "cvc-attribute.4"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    const/4 v6, 0x3

    iget-object v7, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_8
    iget-object v1, p4, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_2

    :cond_9
    if-eqz p5, :cond_2

    iget-short v1, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-static {v1, v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->isComparable(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    const-string/jumbo v1, "cvc-complex-type.3.1"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fTempQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object v4, v2, v5

    const/4 v4, 0x3

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->stringValue()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_b
    iget-object v1, p5, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fDefault:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_3

    :cond_c
    iget-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    goto/16 :goto_4

    :cond_d
    iput-object p4, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    iput-object v3, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidatedInfo:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    const/4 v1, 0x2

    iput-short v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidationAttempted:S

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->mergeContext()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fErrors:[Ljava/lang/String;

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    :goto_7
    int-to-short v1, v1

    iput-short v1, p6, Lmf/org/apache/xerces/impl/xs/AttributePSVImpl;->fValidity:S

    goto/16 :goto_5

    :cond_e
    const/4 v1, 0x2

    goto :goto_7
.end method

.method processRootElementDeclQName(Ljavax/xml/namespace/QName;Lmf/org/apache/xerces/xni/QName;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->checkElementMatchesRootElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/xni/QName;)V

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v1, "cvc-elt.1.a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method processRootTypeQName(Ljavax/xml/namespace/QName;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x5

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->findSchemaGrammar(SLjava/lang/String;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_4

    :goto_2
    return-void

    :cond_1
    const-string/jumbo v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    const-string/jumbo v1, "cvc-type.1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0
.end method

.method public reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIdConstraint:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExpandedLocationPairs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->resetIDTables()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaLoader:Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentElemDecl:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrentCM:Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fCurrCMState:[I

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSkipValidationDepth:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNFullValidationDepth:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNNoneValidationDepth:I

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSubElement:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaDynamicValidation:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fMatcherStack:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XPathMatcherStack;->clear()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reset(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_0
    const-string/jumbo v0, "http://apache.org/xml/features/internal/parser-settings"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset(Lmf/org/apache/xerces/xni/parser/XMLComponentManager;)V

    const-string/jumbo v0, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    if-ne v0, v1, :cond_2

    :goto_1
    :try_start_1
    const-string/jumbo v1, "http://apache.org/xml/features/namespace-growth"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z
    :try_end_1
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    const-string/jumbo v1, "http://apache.org/xml/features/validation/dynamic"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z
    :try_end_2
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    if-nez v1, :cond_3

    :try_start_3
    const-string/jumbo v1, "http://xml.org/sax/features/validation"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_3
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    if-nez v1, :cond_4

    :goto_5
    :try_start_4
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z
    :try_end_4
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_5

    :goto_6
    :try_start_5
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/normalized-value"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z
    :try_end_5
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_6

    :goto_7
    :try_start_6
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/element-default"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z
    :try_end_6
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_6 .. :try_end_6} :catch_7

    :goto_8
    :try_start_7
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z
    :try_end_7
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_7 .. :try_end_7} :catch_8

    :goto_9
    :try_start_8
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_8 .. :try_end_8} :catch_9

    :goto_a
    :try_start_9
    const-string/jumbo v1, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z
    :try_end_9
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_9 .. :try_end_9} :catch_a

    :goto_b
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/entity-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityResolver:Lmf/org/apache/xerces/xni/parser/XMLEntityResolver;

    const-string/jumbo v1, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v1, v5}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    :try_start_a
    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v5, v1, Ljavax/xml/namespace/QName;

    if-nez v5, :cond_6

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;
    :try_end_a
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_a .. :try_end_a} :catch_b

    :goto_c
    :try_start_b
    const-string/jumbo v1, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    instance-of v5, v1, Ljavax/xml/namespace/QName;

    if-nez v5, :cond_8

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;
    :try_end_b
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_b .. :try_end_b} :catch_c

    :goto_d
    :try_start_c
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_c
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_c .. :try_end_c} :catch_d

    move-result v1

    :goto_e
    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIgnoreXSITypeDepth:I

    :try_start_d
    const-string/jumbo v1, "http://apache.org/xml/features/validation/identity-constraint-checking"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z
    :try_end_d
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_d .. :try_end_d} :catch_e

    :goto_f
    :try_start_e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/id-idref-checking"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V
    :try_end_e
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_e .. :try_end_e} :catch_f

    :goto_10
    :try_start_f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    invoke-interface {p1, v3}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V
    :try_end_f
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_f .. :try_end_f} :catch_10

    :goto_11
    :try_start_10
    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-schemaLocation"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    const-string/jumbo v1, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;
    :try_end_10
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_10 .. :try_end_10} :catch_11

    :goto_12
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    :try_start_11
    const-string/jumbo v1, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;
    :try_end_11
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_11 .. :try_end_11} :catch_12

    :goto_13
    :try_start_12
    const-string/jumbo v1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;
    :try_end_12
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_12 .. :try_end_12} :catch_13

    :goto_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setSymbolTable(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationManager:Lmf/org/apache/xerces/impl/validation/ValidationManager;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/validation/ValidationManager;->addValidationState(Lmf/org/apache/xerces/impl/validation/ValidationState;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->nodeFactory:Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/CMNodeFactory;->reset()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-static {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->processExternalHints(Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;Lmf/org/apache/xerces/impl/XMLErrorReporter;)V

    return-void

    :cond_2
    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    goto/16 :goto_1

    :catch_1
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNamespaceGrowth:Z

    goto/16 :goto_2

    :catch_2
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDynamicValidation:Z

    goto/16 :goto_3

    :cond_3
    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    :catch_3
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z

    goto/16 :goto_4

    :cond_4
    :try_start_13
    const-string/jumbo v1, "http://apache.org/xml/features/validation/schema"

    invoke-interface {p1, v1}, Lmf/org/apache/xerces/xni/parser/XMLComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDoValidation:Z
    :try_end_13
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_5

    :catch_4
    move-exception v1

    goto/16 :goto_5

    :catch_5
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fFullChecking:Z

    goto/16 :goto_6

    :catch_6
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fNormalizeData:Z

    goto/16 :goto_7

    :catch_7
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaElementDefault:Z

    goto/16 :goto_8

    :catch_8
    move-exception v1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fAugPSVI:Z

    goto/16 :goto_9

    :catch_9
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fSchemaType:Ljava/lang/String;

    goto/16 :goto_a

    :catch_a
    move-exception v1

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fUseGrammarPoolOnly:Z

    goto/16 :goto_b

    :cond_5
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_14
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_c

    :catch_b
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto/16 :goto_c

    :cond_6
    :try_start_15
    check-cast v1, Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;
    :try_end_15
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_c

    :cond_7
    const/4 v1, 0x0

    :try_start_16
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_16
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_16 .. :try_end_16} :catch_c

    goto/16 :goto_d

    :catch_c
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto/16 :goto_d

    :cond_8
    :try_start_17
    check-cast v1, Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    :try_end_17
    .catch Lmf/org/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_17 .. :try_end_17} :catch_c

    goto/16 :goto_d

    :catch_d
    move-exception v1

    move v1, v3

    goto/16 :goto_e

    :catch_e
    move-exception v1

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fIDCChecking:Z

    goto/16 :goto_f

    :catch_f
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setIdIdrefChecking(Z)V

    goto/16 :goto_10

    :catch_10
    move-exception v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setUnparsedEntityChecking(Z)V

    goto/16 :goto_11

    :catch_11
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalSchemas:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fExternalNoNamespaceSchema:Ljava/lang/String;

    goto/16 :goto_12

    :catch_12
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fJaxpSchemaSource:Ljava/lang/Object;

    goto/16 :goto_13

    :catch_13
    move-exception v1

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fGrammarPool:Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;

    goto/16 :goto_14
.end method

.method public setDocumentHandler(Lmf/org/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentSource:Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-nez v0, :cond_2

    check-cast p2, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_2
    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootTypeDefinition:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    instance-of v0, p2, Ljavax/xml/namespace/QName;

    if-nez v0, :cond_5

    check-cast p2, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    goto :goto_0

    :cond_4
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0

    :cond_5
    check-cast p2, Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclQName:Ljavax/xml/namespace/QName;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fRootElementDeclaration:Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    goto :goto_0
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fInCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValidationState:Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ConfigurableValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4XsiType:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fState4ApplyDefault:Lmf/org/apache/xerces/impl/validation/ValidationState;

    invoke-virtual {v0, p3}, Lmf/org/apache/xerces/impl/validation/ValidationState;->setNamespaceSupport(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->handleStartElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, p1, p2, v0}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fEntityRef:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public startValueScopeFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->startValueScope()V

    return-void
.end method

.method storeLocations(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-eqz v2, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {p1, v1, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader;->tokenizeSchemaLocationStr(Ljava/lang/String;Ljava/util/Hashtable;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fXSIErrorReporter:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;

    const-string/jumbo v1, "http://www.w3.org/TR/xml-schema-1"

    const-string/jumbo v2, "SchemaLocation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$XSIErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    if-eqz v0, :cond_4

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;->addLocation(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaLoader$LocationArray;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocationPairs:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    goto :goto_3

    :catch_0
    move-exception v1

    goto :goto_3
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fDocumentHandler:Lmf/org/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xni/XMLDocumentHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method
