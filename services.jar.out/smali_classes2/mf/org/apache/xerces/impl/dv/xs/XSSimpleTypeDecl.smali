.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;
.implements Lmf/org/w3c/dom/TypeInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$AbstractObjectList;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;,
        Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
    }
.end annotation


# static fields
.field public static final ANYATOMICTYPE_DT:S = 0x31s

.field static final ANY_TYPE:Ljava/lang/String; = "anyType"

.field public static final DAYTIMEDURATION_DT:S = 0x2fs

.field static final DERIVATION_ANY:I = 0x0

.field static final DERIVATION_EXTENSION:I = 0x2

.field static final DERIVATION_LIST:I = 0x8

.field static final DERIVATION_RESTRICTION:I = 0x1

.field static final DERIVATION_UNION:I = 0x4

.field protected static final DV_ANYATOMICTYPE:S = 0x1ds

.field protected static final DV_ANYSIMPLETYPE:S = 0x0s

.field protected static final DV_ANYURI:S = 0x11s

.field protected static final DV_BASE64BINARY:S = 0x10s

.field protected static final DV_BOOLEAN:S = 0x2s

.field protected static final DV_DATE:S = 0x9s

.field protected static final DV_DATETIME:S = 0x7s

.field protected static final DV_DAYTIMEDURATION:S = 0x1cs

.field protected static final DV_DECIMAL:S = 0x3s

.field protected static final DV_DOUBLE:S = 0x5s

.field protected static final DV_DURATION:S = 0x6s

.field protected static final DV_ENTITY:S = 0x17s

.field protected static final DV_FLOAT:S = 0x4s

.field protected static final DV_GDAY:S = 0xds

.field protected static final DV_GMONTH:S = 0xes

.field protected static final DV_GMONTHDAY:S = 0xcs

.field protected static final DV_GYEAR:S = 0xbs

.field protected static final DV_GYEARMONTH:S = 0xas

.field protected static final DV_HEXBINARY:S = 0xfs

.field protected static final DV_ID:S = 0x15s

.field protected static final DV_IDREF:S = 0x16s

.field protected static final DV_INTEGER:S = 0x18s

.field protected static final DV_LIST:S = 0x19s

.field protected static final DV_NOTATION:S = 0x14s

.field protected static final DV_PRECISIONDECIMAL:S = 0x13s

.field protected static final DV_QNAME:S = 0x12s

.field protected static final DV_STRING:S = 0x1s

.field protected static final DV_TIME:S = 0x8s

.field protected static final DV_UNION:S = 0x1as

.field protected static final DV_YEARMONTHDURATION:S = 0x1bs

.field static final NORMALIZE_FULL:S = 0x2s

.field static final NORMALIZE_NONE:S = 0x0s

.field static final NORMALIZE_TRIM:S = 0x1s

.field public static final PRECISIONDECIMAL_DT:S = 0x30s

.field static final SPECIAL_PATTERN_NAME:S = 0x2s

.field static final SPECIAL_PATTERN_NCNAME:S = 0x3s

.field static final SPECIAL_PATTERN_NMTOKEN:S = 0x1s

.field static final SPECIAL_PATTERN_NONE:S = 0x0s

.field static final SPECIAL_PATTERN_STRING:[Ljava/lang/String;

.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static final WS_FACET_STRING:[Ljava/lang/String;

.field public static final YEARMONTHDURATION_DT:S = 0x2es

.field static final fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field static final fDVNormalizeType:[S

.field static final fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field static final fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

.field private static final gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;


# instance fields
.field public enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fAnonymous:Z

.field private fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fBounded:Z

.field private fBuiltInKind:S

.field private fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

.field private fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

.field private fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field private fEnumerationSize:I

.field private fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

.field private fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fFacetsDefined:S

.field private fFinalSet:S

.field private fFinite:Z

.field private fFixedFacet:S

.field private fFractionDigits:I

.field private fIsImmutable:Z

.field private fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fLength:I

.field private fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

.field private fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

.field private fMaxExclusive:Ljava/lang/Object;

.field private fMaxInclusive:Ljava/lang/Object;

.field private fMaxLength:I

.field private fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

.field private fMinExclusive:Ljava/lang/Object;

.field private fMinInclusive:Ljava/lang/Object;

.field private fMinLength:I

.field private fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field private fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

.field private fNumeric:Z

.field private fOrdered:S

.field private fPattern:Ljava/util/Vector;

.field private fPatternStr:Ljava/util/Vector;

.field private fPatternType:S

.field private fTargetNamespace:Ljava/lang/String;

.field private fTotalDigits:I

.field private fTypeName:Ljava/lang/String;

.field private fValidationDV:S

.field private fVariety:S

.field private fWhiteSpace:S

.field public fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

.field public totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

.field public whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x1e

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/4 v1, 0x0

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnySimpleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/StringDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/StringDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/BooleanDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/FloatDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DoubleDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/TimeDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DateDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/HexBinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/QNameDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IDREFDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/EntityDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/IntegerDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/ListDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/UnionDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/dv/xs/AnyAtomicDV;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    const/16 v0, 0x1e

    new-array v0, v0, [S

    const/4 v1, 0x1

    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x2

    aput-short v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x1

    aput-short v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x1

    aput-short v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "NONE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "NMTOKEN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "Name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "NCName"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "preserve"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "replace"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "collapse"

    aput-object v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "anySimpleType"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v2, "anyAtomicType"

    const/16 v3, 0x1d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0x31

    invoke-direct/range {v0 .. v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnyAtomicType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$2;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v4, 0x10

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    int-to-short v0, p7

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-boolean p8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-nez p3, :cond_1

    :cond_0
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    :goto_0
    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    iput-boolean p6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    iput-boolean p7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    int-to-short v0, p9

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-void

    :cond_1
    const/16 v0, 0x1d

    if-eq p3, v0, :cond_0

    if-eq p3, v4, :cond_0

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto :goto_0
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    return v0
.end method

.method private appendEnumString(Ljava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method private calcFundamentalFacets()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setOrdered()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNumeric()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setBounded()V

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setCardinality()V

    return-void
.end method

.method private checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1, v0, p1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->checkExtraRules(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    goto :goto_0

    :cond_1
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    iget-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v2

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-ltz v1, :cond_3

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v2, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_2
    iget-object v1, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v1, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    :goto_2
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->item(I)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    aget-object v4, v1, v2

    iput-object v4, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v4, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    throw v1

    :cond_3
    iput-object v0, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iput-object v3, p2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0
.end method

.method private checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x12

    if-ne v1, v2, :cond_8

    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-nez v1, :cond_d

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_1e

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1f

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_20

    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_21

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_22

    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_23

    :cond_7
    return-void

    :cond_8
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getDataLength(Ljava/lang/Object;)I

    move-result v1

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_b

    :cond_9
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    :cond_a
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v2, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-length-valid"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_b
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_9

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-maxLength-valid"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_c
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_a

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-minLength-valid"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_d
    const/4 v2, 0x0

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v8

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v7, :cond_24

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v0

    if-ne v8, v0, :cond_10

    :cond_e
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_f
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_10
    const/4 v1, 0x1

    if-eq v8, v1, :cond_12

    :cond_11
    const/4 v1, 0x2

    if-ne v8, v1, :cond_f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    goto :goto_2

    :cond_12
    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_1

    :cond_13
    const/16 v0, 0x2c

    if-ne v8, v0, :cond_16

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v0, v0, v3

    iget-object v9, v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    if-nez v6, :cond_17

    const/4 v0, 0x0

    :goto_3
    if-nez v9, :cond_18

    const/4 v1, 0x0

    :goto_4
    if-ne v0, v1, :cond_f

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_1b

    invoke-interface {v6, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v10

    invoke-direct {p0, v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v10

    invoke-interface {v9, v1}, Lmf/org/apache/xerces/xs/ShortList;->item(I)S

    move-result v11

    invoke-direct {p0, v11}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->convertToPrimitiveKind(S)S

    move-result v11

    if-ne v10, v11, :cond_19

    :cond_15
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_16
    const/16 v0, 0x2b

    if-eq v8, v0, :cond_14

    const/4 v0, 0x1

    :goto_7
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-enumeration-valid"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_17
    invoke-interface {v6}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v0

    goto :goto_3

    :cond_18
    invoke-interface {v9}, Lmf/org/apache/xerces/xs/ShortList;->getLength()I

    move-result v1

    goto :goto_4

    :cond_19
    const/4 v12, 0x1

    if-eq v10, v12, :cond_1c

    :cond_1a
    const/4 v12, 0x2

    if-eq v10, v12, :cond_1d

    :cond_1b
    :goto_8
    if-ne v1, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_7

    :cond_1c
    const/4 v12, 0x2

    if-ne v11, v12, :cond_1a

    goto :goto_6

    :cond_1d
    const/4 v10, 0x1

    if-eq v11, v10, :cond_15

    goto :goto_8

    :cond_1e
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getFractionDigits(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v0, v1, :cond_2

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-fractionDigits-valid"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1f
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getTotalDigits(Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v0, v1, :cond_3

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-totalDigits-valid"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_20
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-maxInclusive-valid"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_21
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-maxExclusive-valid"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_22
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_6

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-minInclusive-valid"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0, v4, v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-minExclusive-valid"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_24
    move v0, v2

    goto/16 :goto_7
.end method

.method private convertToPrimitiveKind(S)S
    .locals 1

    const/16 v0, 0x14

    if-le p1, v0, :cond_0

    const/16 v0, 0x1d

    if-le p1, v0, :cond_1

    const/16 v0, 0x2a

    if-le p1, v0, :cond_2

    return p1

    :cond_0
    return p1

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    const/4 v0, 0x4

    return v0
.end method

.method private getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-nez p4, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_4

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_18

    :cond_1
    move-object v0, p1

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v1, v2, :cond_1a

    :try_start_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-direct {v2, v0, p2, p3, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_2
    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iput-object v3, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_4
    if-ltz v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_4

    :cond_5
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-pattern-valid"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-direct {v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_8

    :cond_7
    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v2

    invoke-virtual {v0, v1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v1, v1

    iput-short v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0

    :cond_8
    const/4 v0, 0x0

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x3

    if-eq v2, v3, :cond_d

    :goto_5
    if-eqz v0, :cond_7

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->SPECIAL_PATTERN_STRING:[Ljava/lang/String;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNmtoken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    :cond_f
    new-instance v5, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " "

    invoke-direct {v5, v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v0, 0x0

    move v2, v0

    :goto_6
    if-nez v2, :cond_12

    const/4 v0, 0x1

    :goto_7
    new-array v7, v0, [S

    if-eqz v2, :cond_13

    :goto_8
    new-array v8, v3, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v0, 0x0

    move v4, v0

    :goto_9
    if-ge v4, v3, :cond_16

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {v0, v9, p2, p3, v10}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v6, v4

    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_10
    :goto_a
    iget-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aput-object v0, v8, v4

    if-nez v2, :cond_15

    :goto_b
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_9

    :cond_11
    const/4 v0, 0x1

    move v2, v0

    goto :goto_6

    :cond_12
    move v0, v3

    goto :goto_7

    :cond_13
    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v4, v4

    aput-short v4, v7, v0

    goto :goto_8

    :cond_14
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v9, 0x10

    if-eq v0, v9, :cond_10

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-direct {v0, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_a

    :cond_15
    aget-object v0, v8, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    aput-short v0, v7, v4

    goto :goto_b

    :cond_16
    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    invoke-direct {v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;-><init>([Ljava/lang/Object;)V

    iput-object v3, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValue:Ljava/lang/Object;

    if-nez v2, :cond_17

    const/16 v0, 0x2c

    :goto_c
    int-to-short v0, v0

    iput-short v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    const/4 v0, 0x0

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iput-object v8, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberTypes:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    array-length v2, v7

    invoke-direct {v0, v7, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->itemValueTypes:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    iput-object p0, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v3

    :cond_17
    const/16 v0, 0x2b

    goto :goto_c

    :cond_18
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_19
    :try_start_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v4, 0x10

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    invoke-direct {v3, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_d
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v0, v2, :cond_1e

    if-nez v0, :cond_1b

    :goto_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    if-nez v3, :cond_1c

    :goto_f
    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v3, :cond_1d

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1b
    const-string/jumbo v2, " | "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_1c
    const/16 v3, 0x7b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x7d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_f

    :cond_1d
    const-string/jumbo v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->appendEnumString(Ljava/lang/StringBuffer;)V

    goto :goto_10

    :cond_1e
    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v2, "cvc-datatype-valid.1.2.3"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method protected static getGDVs()[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->gDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-object v0
.end method

.method private getPrimitiveDV(S)S
    .locals 1

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/16 v0, 0x16

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    return p1

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method private isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, v1

    move-object v1, p3

    :goto_0
    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    return v0

    :cond_0
    if-eq v1, v0, :cond_d

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-nez v0, :cond_8

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_5

    :cond_4
    if-eqz p1, :cond_1

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_6
    return v3

    :cond_7
    return v3

    :cond_8
    return v3

    :cond_9
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    if-eq v0, v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_a

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getVariety()S

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_c

    move-object v0, v1

    goto :goto_0

    :cond_a
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-gtz v0, :cond_b

    move-object v0, v1

    goto :goto_0

    :cond_b
    check-cast v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    return v0

    :cond_c
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto/16 :goto_1
.end method

.method private isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    return v2

    :cond_1
    move-object v0, p3

    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move-object v1, p3

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    if-eq v1, v0, :cond_0

    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p3

    move-object v0, v1

    move-object v1, p3

    goto :goto_0

    :cond_3
    if-nez p1, :cond_5

    :cond_4
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_5
    invoke-interface {v1}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1
.end method

.method private isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z
    .locals 4

    const/4 v2, 0x0

    if-nez p3, :cond_1

    :cond_0
    return v2

    :cond_1
    move-object v0, p3

    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getVariety()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p3, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-interface {p3}, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-interface {v3, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0
.end method

.method public static normalize(Ljava/lang/String;S)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x9

    const/16 v6, 0x20

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    :cond_0
    return-object p0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v2, 0x1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_d

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_9

    :cond_3
    :goto_2
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_c

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_b

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_6
    if-ge v1, v0, :cond_d

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_8

    :cond_7
    :goto_4
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    if-eq v2, v8, :cond_7

    if-ne v2, v9, :cond_5

    goto :goto_4

    :cond_9
    if-eq v5, v8, :cond_3

    if-eq v5, v9, :cond_3

    if-eq v5, v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v1

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    if-eq v5, v8, :cond_4

    if-eq v5, v9, :cond_4

    if-eq v5, v6, :cond_4

    :cond_c
    add-int/lit8 v5, v0, -0x1

    if-ge v3, v5, :cond_a

    if-nez v2, :cond_a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setBounded()V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v5, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_9

    :goto_0
    return-void

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_4

    :cond_2
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_2

    goto :goto_1

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    :cond_6
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_8

    :goto_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0

    :cond_8
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_6

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v3

    if-gtz v0, :cond_b

    move v0, v1

    :goto_3
    move v2, v1

    :goto_4
    array-length v4, v3

    if-ge v2, v4, :cond_d

    aget-object v4, v3, v2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBounded()Z

    move-result v4

    if-nez v4, :cond_c

    :cond_a
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return-void

    :cond_b
    aget-object v0, v3, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    goto :goto_3

    :cond_c
    aget-object v4, v3, v2

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v4

    if-ne v0, v4, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    iput-boolean v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    goto :goto_0
.end method

.method private setCardinality()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v4, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_a

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    if-nez v0, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    :cond_1
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    :cond_4
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    :cond_5
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    :cond_6
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_7
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_4

    :goto_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_8
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_5

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->specialCardinalityCheck()Z

    move-result v0

    if-nez v0, :cond_6

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_a
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_c

    :cond_b
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_c
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_d

    :goto_2
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0

    :cond_d
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_b

    goto :goto_2

    :cond_e
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v0, v1

    :goto_3
    array-length v3, v2

    if-ge v0, v3, :cond_10

    aget-object v3, v2, v0

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v3

    if-eqz v3, :cond_f

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_f
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return-void

    :cond_10
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    goto :goto_0
.end method

.method private setNumeric()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v4, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move v0, v1

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v3, v2, v0

    invoke-interface {v3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return-void

    :cond_4
    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    goto :goto_0
.end method

.method private setOrdered()V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_1
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v0, v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v6

    if-nez v6, :cond_5

    move v0, v1

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v3, v3, v1

    iget-short v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-eqz v3, :cond_6

    move v3, v1

    :goto_2
    move v4, v2

    :goto_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v5, v5

    if-lt v4, v5, :cond_7

    :cond_3
    if-nez v0, :cond_d

    if-nez v3, :cond_e

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_4
    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return-void

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    move v3, v2

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_c

    :goto_4
    if-nez v0, :cond_8

    move v5, v0

    :goto_5
    if-nez v3, :cond_a

    move v0, v3

    :goto_6
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v0

    move v0, v5

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getPrimitiveDV(S)S

    move-result v0

    if-eq v6, v0, :cond_9

    move v0, v1

    :goto_7
    move v5, v0

    goto :goto_5

    :cond_9
    move v0, v2

    goto :goto_7

    :cond_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v4

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_6

    :cond_c
    if-eqz v3, :cond_3

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v0, v0, v1

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0

    :cond_e
    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    goto :goto_0
.end method

.method private specialCardinalityCheck()Z
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0
.end method

.method private whiteSpaceValue(S)Ljava/lang/String;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    if-eqz p4, :cond_0

    move-object v5, p4

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    return-void

    :cond_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0
.end method

.method applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v1, :cond_18

    new-instance v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v1, 0x0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->getAllowedFacets()S

    move-result v4

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_19

    :cond_0
    :goto_0
    and-int/lit8 v1, p2, 0x2

    if-nez v1, :cond_1b

    :cond_1
    :goto_1
    and-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_1d

    :cond_2
    :goto_2
    and-int/lit8 v1, p2, 0x8

    if-nez v1, :cond_1f

    :cond_3
    :goto_3
    and-int/lit8 v1, p2, 0x10

    if-nez v1, :cond_21

    :cond_4
    :goto_4
    and-int/lit16 v1, p2, 0x800

    if-nez v1, :cond_23

    :cond_5
    :goto_5
    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_27

    :goto_6
    const/4 v2, 0x1

    and-int/lit8 v1, p2, 0x40

    if-nez v1, :cond_2c

    :cond_6
    :goto_7
    const/4 v2, 0x1

    and-int/lit16 v1, p2, 0x80

    if-nez v1, :cond_34

    :cond_7
    :goto_8
    and-int/lit16 v1, p2, 0x100

    if-nez v1, :cond_3c

    :goto_9
    and-int/lit16 v1, p2, 0x200

    if-nez v1, :cond_41

    :cond_8
    :goto_a
    and-int/lit16 v1, p2, 0x400

    if-nez v1, :cond_43

    :cond_9
    :goto_b
    if-nez p4, :cond_45

    :goto_c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-nez v1, :cond_46

    :cond_a
    :goto_d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_85

    :cond_b
    :goto_e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_86

    :cond_c
    :goto_f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_87

    :cond_d
    :goto_10
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_88

    :cond_e
    :goto_11
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8c

    :cond_f
    :goto_12
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_8d

    :cond_10
    :goto_13
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_8e

    :cond_11
    :goto_14
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_8f

    :cond_12
    :goto_15
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_90

    :cond_13
    :goto_16
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_91

    :cond_14
    :goto_17
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_92

    :cond_15
    :goto_18
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_93

    :cond_16
    :goto_19
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_94

    :cond_17
    :goto_1a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/2addr v1, v2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    return-void

    :cond_18
    return-void

    :cond_19
    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_1a

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->length:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_0

    :cond_1a
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "length"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1b
    and-int/lit8 v1, v4, 0x2

    if-eqz v1, :cond_1c

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_1

    :cond_1c
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minLength"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_1d
    and-int/lit8 v1, v4, 0x4

    if-eqz v1, :cond_1e

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_2

    :cond_1e
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxLength"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1f
    and-int/lit8 v1, v4, 0x8

    if-eqz v1, :cond_20

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    const-string/jumbo v6, "X"

    invoke-interface/range {p5 .. p5}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1b
    if-eqz v1, :cond_3

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_3

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_3

    :cond_20
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "pattern"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :catch_0
    move-exception v1

    const-string/jumbo v5, "InvalidRegex"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v2

    goto :goto_1b

    :cond_21
    and-int/lit8 v1, v4, 0x10

    if-eqz v1, :cond_22

    iget-short v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, p3, 0x10

    if-eqz v1, :cond_4

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_4

    :cond_22
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "whiteSpace"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_23
    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_24

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumeration:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    new-array v1, v6, [Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumNSDecls:Ljava/util/Vector;

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;

    move-object/from16 v0, p5

    invoke-direct {v8, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;-><init>(Lmf/org/apache/xerces/impl/dv/ValidationContext;)V

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->enumAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    const/4 v1, 0x0

    move v2, v1

    :goto_1c
    if-ge v2, v6, :cond_26

    if-nez v7, :cond_25

    :goto_1d
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v1, v8, v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v1

    iget-object v9, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v10, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    aput-object v1, v9, v10
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1c

    :cond_24
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "enumeration"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_25
    invoke-virtual {v7, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v8, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$ValidationContextImpl;->setNSContext(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    goto :goto_1d

    :catch_1
    move-exception v1

    const-string/jumbo v1, "enumeration-valid-restriction"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v11

    invoke-interface {v11}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p0, v1, v9}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1e

    :cond_26
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, p3, 0x800

    if-eqz v1, :cond_5

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_5

    :cond_27
    and-int/lit8 v1, v4, 0x20

    if-eqz v1, :cond_29

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_3

    and-int/lit8 v1, p3, 0x20

    if-nez v1, :cond_2a

    :goto_1f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_2b

    :cond_28
    :goto_20
    :try_start_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_3
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_29
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_2a
    :try_start_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_4
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1f

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1f

    :cond_2b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_28

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_28

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_20

    :cond_2c
    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v5, v0, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_4

    and-int/lit8 v1, p3, 0x40

    if-nez v1, :cond_2e

    :goto_21
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2f

    move v1, v2

    :goto_22
    if-nez v1, :cond_33

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_6

    const-string/jumbo v1, "maxExclusive-valid-restriction.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2d
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "maxExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_2e
    :try_start_6
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_21

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "maxExclusive"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_2f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_31

    :cond_30
    :goto_23
    if-eqz v1, :cond_32

    move v1, v2

    goto/16 :goto_22

    :cond_31
    if-eqz v1, :cond_30

    const-string/jumbo v5, "FixedFacetValue"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "maxExclusive"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_23

    :cond_32
    const/4 v1, 0x0

    goto/16 :goto_22

    :cond_33
    :try_start_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_7

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->maxExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "maxExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_34
    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_35

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_8
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v5, v0, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_6

    and-int/lit16 v1, p3, 0x80

    if-nez v1, :cond_36

    :goto_24
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_37

    move v1, v2

    :goto_25
    if-nez v1, :cond_3b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_7

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_7

    const-string/jumbo v1, "minExclusive-valid-restriction.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_35
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_36
    :try_start_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_9
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_24

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v5, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "minExclusive"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_24

    :cond_37
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_39

    :cond_38
    :goto_26
    if-eqz v1, :cond_3a

    move v1, v2

    goto/16 :goto_25

    :cond_39
    if-eqz v1, :cond_38

    const-string/jumbo v5, "FixedFacetValue"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "minExclusive"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v8, v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget-object v8, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_26

    :cond_3a
    const/4 v1, 0x0

    goto/16 :goto_25

    :cond_3b
    :try_start_a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_a
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_a .. :try_end_a} :catch_7

    goto/16 :goto_8

    :catch_7
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minExclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "minExclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3c
    and-int/lit16 v1, v4, 0x100

    if-eqz v1, :cond_3e

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    :try_start_b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p5

    invoke-direct {v1, v2, v0, v3, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S
    :try_end_b
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_b .. :try_end_b} :catch_9

    and-int/lit16 v1, p3, 0x100

    if-nez v1, :cond_3f

    :goto_27
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_40

    :cond_3d
    :goto_28
    :try_start_c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0, v3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    :try_end_c
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_c .. :try_end_c} :catch_8

    goto/16 :goto_9

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v5, "minInclusive"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3e
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "minInclusive"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_9

    :cond_3f
    :try_start_d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S
    :try_end_d
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_27

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string/jumbo v1, "FacetValueFromBase"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "minInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_40
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v5}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_3d

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "minInclusive"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    iget-object v6, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->minInclusive:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v6, v2, v5

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_28

    :cond_41
    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_42

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->totalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, p3, 0x200

    if-eqz v1, :cond_8

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_a

    :cond_42
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v5, "totalDigits"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v5, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_43
    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_44

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/XSFacets;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, p3, 0x400

    if-eqz v1, :cond_9

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    goto/16 :goto_b

    :cond_44
    const-string/jumbo v1, "cos-applicable-facets"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_45
    move/from16 v0, p4

    int-to-short v1, v0

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    goto/16 :goto_c

    :cond_46
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5c

    :cond_47
    :goto_29
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_5d

    :cond_48
    :goto_2a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_5e

    :cond_49
    :goto_2b
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_5f

    :cond_4a
    :goto_2c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_60

    :cond_4b
    :goto_2d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_61

    :cond_4c
    :goto_2e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_62

    :cond_4d
    :goto_2f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_63

    :cond_4e
    :goto_30
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_64

    :cond_4f
    :goto_31
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_69

    :cond_50
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_6a

    :cond_51
    :goto_32
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_6d

    :cond_52
    :goto_33
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_70

    :cond_53
    :goto_34
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_74

    :cond_54
    :goto_35
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_75

    :cond_55
    :goto_36
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_78

    :cond_56
    :goto_37
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7b

    :cond_57
    :goto_38
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7c

    :cond_58
    :goto_39
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_82

    :cond_59
    :goto_3a
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eqz v1, :cond_83

    :cond_5a
    :goto_3b
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-eq v1, v2, :cond_84

    :cond_5b
    :goto_3c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-nez v1, :cond_a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    const-string/jumbo v1, "whiteSpace-valid-restriction.2"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_5c
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_47

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_47

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_29

    :cond_5d
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_48

    const-string/jumbo v1, "maxInclusive-maxExclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2a

    :cond_5e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_49

    const-string/jumbo v1, "minInclusive-minExclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2b

    :cond_5f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4a

    if-eqz v1, :cond_4a

    const-string/jumbo v1, "minInclusive-less-than-equal-to-maxInclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2c

    :cond_60
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4b

    if-eqz v1, :cond_4b

    const-string/jumbo v1, "minExclusive-less-than-equal-to-maxExclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2d

    :cond_61
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4c

    const-string/jumbo v1, "minExclusive-less-than-maxInclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2e

    :cond_62
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v1, v1, v2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4d

    const-string/jumbo v1, "minInclusive-less-than-maxExclusive"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2f

    :cond_63
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_4e

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_4e

    const-string/jumbo v1, "fractionDigits-totalDigits"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_30

    :cond_64
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_67

    :cond_65
    :goto_3d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_68

    :cond_66
    :goto_3e
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_4f

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v2, :cond_4f

    const-string/jumbo v1, "length-valid-restriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_31

    :cond_67
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_65

    const-string/jumbo v1, "length-minLength-maxLength.1.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3d

    :cond_68
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_66

    const-string/jumbo v1, "length-minLength-maxLength.2.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3e

    :cond_69
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_50

    goto/16 :goto_33

    :cond_6a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-lt v1, v2, :cond_6b

    :goto_3f
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6c

    :goto_40
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v2, :cond_51

    const-string/jumbo v1, "length-minLength-maxLength.1.2.b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_32

    :cond_6b
    const-string/jumbo v1, "length-minLength-maxLength.1.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3f

    :cond_6c
    const-string/jumbo v1, "length-minLength-maxLength.1.2.a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_40

    :cond_6d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-gt v1, v2, :cond_6e

    :goto_41
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6f

    :goto_42
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v2, :cond_52

    const-string/jumbo v1, "length-minLength-maxLength.2.2.b"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_33

    :cond_6e
    const-string/jumbo v1, "length-minLength-maxLength.2.1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    :cond_6f
    const-string/jumbo v1, "length-minLength-maxLength.2.2.a"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_70
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_72

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_53

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_73

    :cond_71
    :goto_43
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_53

    const-string/jumbo v1, "minLength-valid-restriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_72
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_53

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_34

    :cond_73
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v2, :cond_71

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "minLength"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_43

    :cond_74
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_54

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-ge v1, v2, :cond_54

    const-string/jumbo v1, "minLength-less-than-equal-to-maxLength"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_35

    :cond_75
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_55

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_77

    :cond_76
    :goto_44
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-le v1, v2, :cond_55

    const-string/jumbo v1, "maxLength-valid-restriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_36

    :cond_77
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v2, :cond_76

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "maxLength"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_44

    :cond_78
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_56

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_7a

    :cond_79
    :goto_45
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_56

    const-string/jumbo v1, "totalDigits-valid-restriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_37

    :cond_7a
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v2, :cond_79

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "totalDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_45

    :cond_7b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_57

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-le v1, v2, :cond_57

    const-string/jumbo v1, "fractionDigits-totalDigits"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_38

    :cond_7c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7d

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-ne v1, v2, :cond_58

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eqz v1, :cond_58

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "0"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_39

    :cond_7d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_7f

    :cond_7e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_81

    :goto_46
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-le v1, v2, :cond_58

    const-string/jumbo v1, "fractionDigits-valid-restriction"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_39

    :cond_7f
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v2, :cond_7e

    :cond_80
    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "fractionDigits"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    :cond_81
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-nez v1, :cond_80

    goto :goto_46

    :cond_82
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    if-eq v1, v2, :cond_59

    const-string/jumbo v1, "FixedFacetValue"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "whiteSpace"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-short v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v4, v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceValue(S)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3a

    :cond_83
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5a

    const-string/jumbo v1, "whiteSpace-valid-restriction.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "preserve"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3b

    :cond_84
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5b

    const-string/jumbo v1, "whiteSpace-valid-restriction.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "replace"

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->reportError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3c

    :cond_85
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_b

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_e

    :cond_86
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_c

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_f

    :cond_87
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_d

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_10

    :cond_88
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_89

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_47
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_8a

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_47

    :cond_89
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_11

    :cond_8a
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v1, :cond_8b

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_11

    :cond_8b
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v1

    :goto_48
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_e

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v3, v1}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_48

    :cond_8c
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_f

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_12

    :cond_8d
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_10

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto/16 :goto_13

    :cond_8e
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_11

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_11

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_14

    :cond_8f
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_12

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_12

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_15

    :cond_90
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_13

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_13

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_16

    :cond_91
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_14

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_14

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_17

    :cond_92
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_15

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_18

    :cond_93
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_16

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    goto/16 :goto_19

    :cond_94
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v1, :cond_17

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v1, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v1, v1

    iput-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    goto/16 :goto_1a
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V
    .locals 6

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V
    .locals 6

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDummyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    return-void

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    :goto_0
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v0, :cond_6

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const-string/jumbo v0, "anyType"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_4
    if-eqz p1, :cond_7

    :cond_5
    if-eqz p1, :cond_1

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_6
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-ne p0, v0, :cond_8

    return v1

    :cond_7
    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_8
    return v2
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move-object v0, p1

    :goto_0
    instance-of v1, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    if-eqz v1, :cond_1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    if-eq v1, v0, :cond_3

    :goto_1
    if-ne p0, v0, :cond_4

    :cond_2
    if-eq p0, v0, :cond_5

    return v2

    :cond_3
    return v3

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq p0, v1, :cond_2

    invoke-interface {p0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    goto :goto_1

    :cond_5
    return v3
.end method

.method protected getActualEnumValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActualEnumeration()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$3;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0
.end method

.method public getAnonymous()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    return v1
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBounded:Z

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return v0
.end method

.method public getDefinedFacets()S
    .locals 3

    const/4 v2, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    return v0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    return v0

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    or-int/lit8 v0, v0, 0x8

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0
.end method

.method public getEnumerationItemTypeList()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$4;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getEnumerationTypeList()Lmf/org/apache/xerces/xs/ShortList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v2, v2, v0

    iget-short v2, v2, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->actualValueType:S

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    return-object v0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/ShortListImpl;-><init>([SI)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x800

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSMultiValueFacet;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSMultiValueFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/XSObjectList;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-interface {v2, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSFacet;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSFacet;->getFacetKind()S

    move-result v3

    if-eq v3, p1, :cond_3

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_1b

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    return-object v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_2

    :cond_1
    const/16 v0, 0xa

    new-array v8, v0, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const/4 v0, 0x0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_3

    move v7, v0

    :goto_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    :goto_3
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    :goto_4
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    :goto_5
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    :goto_6
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_f

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    :goto_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-nez v0, :cond_12

    :goto_8
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-nez v0, :cond_14

    :goto_9
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-nez v0, :cond_16

    :goto_a
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-nez v0, :cond_18

    :goto_b
    if-gtz v7, :cond_1a

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_c
    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v1, :cond_4

    move v7, v0

    goto :goto_2

    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_5

    move v7, v0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v2, v1, v2

    const/4 v3, 0x0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_6

    const/4 v5, 0x0

    :goto_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x10

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    const/4 v0, 0x1

    move v7, v0

    goto :goto_2

    :cond_6
    const/4 v5, 0x1

    goto :goto_d

    :cond_7
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_8

    const/4 v5, 0x0

    :goto_e
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    const/4 v5, 0x1

    goto :goto_e

    :cond_9
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_a

    const/4 v5, 0x0

    :goto_f
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_a
    const/4 v5, 0x1

    goto :goto_f

    :cond_b
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_c

    const/4 v5, 0x0

    :goto_10
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/4 v1, 0x4

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_c
    const/4 v5, 0x1

    goto :goto_10

    :cond_d
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x200

    if-nez v1, :cond_e

    const/4 v5, 0x0

    :goto_11
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x200

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_6

    :cond_e
    const/4 v5, 0x1

    goto :goto_11

    :cond_f
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x400

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_10
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_11

    const/4 v5, 0x0

    :goto_12
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x400

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_11
    const/4 v5, 0x1

    goto :goto_12

    :cond_12
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_13

    const/4 v5, 0x0

    :goto_13
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x20

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_13
    const/4 v5, 0x1

    goto :goto_13

    :cond_14
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_15

    const/4 v5, 0x0

    :goto_14
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x40

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_9

    :cond_15
    const/4 v5, 0x1

    goto :goto_14

    :cond_16
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_17

    const/4 v5, 0x0

    :goto_15
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x80

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_a

    :cond_17
    const/4 v5, 0x1

    goto :goto_15

    :cond_18
    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_19

    const/4 v5, 0x0

    :goto_16
    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    const/16 v1, 0x100

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;-><init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V

    aput-object v0, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    :cond_19
    const/4 v5, 0x1

    goto :goto_16

    :cond_1a
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0, v8, v7}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto/16 :goto_c

    :cond_1b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto/16 :goto_1
.end method

.method public getFinal()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    return v0
.end method

.method public getFinite()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinite:Z

    return v0
.end method

.method public getFixedFacets()S
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    or-int/lit16 v0, v0, 0x400

    int-to-short v0, v0

    return v0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    return-object v0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-eqz v0, :cond_1

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    new-array v2, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->normalizedValue:Ljava/lang/String;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_2
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    invoke-direct {v0, v2, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    return-object v0

    :sswitch_0
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    if-eq v1, v3, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :sswitch_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    if-eq v1, v3, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0

    :sswitch_2
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    if-eq v1, v3, :cond_2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :sswitch_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v1, :cond_4

    :cond_3
    return-object v0

    :cond_4
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_3

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->WS_FACET_STRING:[Ljava/lang/String;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    aget-object v0, v0, v1

    return-object v0

    :sswitch_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_5
    return-object v0

    :sswitch_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_6

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :sswitch_6
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    return-object v0

    :sswitch_7
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    return-object v0

    :sswitch_8
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    if-eq v1, v3, :cond_9

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0

    :sswitch_9
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_b

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    if-eq v1, v3, :cond_a

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_a
    return-object v0

    :cond_b
    const-string/jumbo v0, "0"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
        0x80 -> :sswitch_6
        0x100 -> :sswitch_7
        0x200 -> :sswitch_8
        0x400 -> :sswitch_9
    .end sparse-switch
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 5

    const/16 v4, 0x18

    const/4 v2, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    return-object v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v1, v0

    :goto_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v0, v4, :cond_7

    new-array v0, v1, [Ljava/lang/String;

    move-object v3, v0

    :goto_2
    if-ge v2, v1, :cond_8

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\c+"

    aput-object v3, v0, v1

    move-object v3, v0

    goto :goto_2

    :cond_5
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\i\\c*"

    aput-object v3, v0, v1

    move-object v3, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v0, v1, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\\i\\c*"

    aput-object v3, v0, v1

    add-int/lit8 v3, v1, 0x1

    const-string/jumbo v4, "[\\i-[:]][\\c-[:]]*"

    aput-object v4, v0, v3

    move-object v3, v0

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "[\\-+]?[0-9]+"

    aput-object v3, v0, v1

    move-object v3, v0

    goto :goto_2

    :cond_8
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    array-length v1, v3

    invoke-direct {v0, v3, v1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    goto :goto_0
.end method

.method public getMaxExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMaxInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-object v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    return-object v0
.end method

.method public getMinExclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinInclusiveValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 7

    const/16 v3, 0x18

    const/4 v6, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-eqz v1, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    if-nez v0, :cond_6

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    return-object v0

    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_3

    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    :cond_2
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/16 v5, 0x8

    invoke-direct {v2, v5, v3, v6, v4}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    if-nez v2, :cond_5

    :goto_3
    new-instance v2, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0

    :cond_3
    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v1, :cond_1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_4
    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v2, :cond_2

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_5
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v3

    new-instance v4, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget v6, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    invoke-direct {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/util/ObjectListImpl;-><init>([Ljava/lang/Object;I)V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/16 v6, 0x800

    invoke-direct {v2, v6, v3, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;-><init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMultiValueFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getAnonymous()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNumeric:Z

    return v0
.end method

.method public getOrdered()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fOrdered:S

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    if-eq v0, v2, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    :cond_2
    return v2

    :cond_3
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x17

    if-eq v0, v1, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_4

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    return v0

    :cond_4
    const/4 v0, 0x3

    return v0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public getType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariety()S
    .locals 2

    const/4 v0, 0x0

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-eqz v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    :cond_0
    return v0
.end method

.method public getWhitespace()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    return v0

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/dv/DatatypeException;

    const-string/jumbo v1, "dt-whitespace"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_0
    :goto_0
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_a

    :cond_1
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_b

    :cond_2
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_c

    :cond_3
    and-int/lit8 v0, p3, 0x2

    if-nez v0, :cond_d

    :cond_4
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_e

    :cond_5
    return v1

    :cond_6
    return v1

    :cond_7
    const-string/jumbo v0, "anyType"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_9

    :cond_8
    return v2

    :cond_9
    if-eqz p3, :cond_8

    goto :goto_0

    :cond_a
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByRestriction(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_b
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByList(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_c
    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByUnion(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_d
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_4

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_4

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_4

    return v1

    :cond_e
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_5

    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_5

    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDerivedByAny(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;)Z

    move-result v0

    return v0
.end method

.method public isDefinedFacet(S)Z
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    if-nez v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    if-nez v0, :cond_3

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    return v2

    :cond_2
    return v3

    :cond_3
    if-eq p1, v4, :cond_4

    return v2

    :cond_4
    return v3

    :cond_5
    if-ne p1, v4, :cond_7

    :cond_6
    return v3

    :cond_7
    const/16 v0, 0x400

    if-eq p1, v0, :cond_6

    return v2
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinal(S)Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedFacet(S)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    return v2

    :cond_0
    return v3

    :cond_1
    const/16 v0, 0x400

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    return v3
.end method

.method public isIDType()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    :cond_0
    return v1

    :pswitch_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v2, 0x15

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    return v3

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v0

    return v0

    :pswitch_2
    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isIDType()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    iget-short v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isIdentical(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected normalize(Ljava/lang/Object;S)Ljava/lang/String;
    .locals 10

    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v0, 0x1

    const/16 v7, 0x20

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_4

    :cond_0
    instance-of v2, p1, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_6

    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-eqz v5, :cond_7

    if-eqz p2, :cond_8

    if-eq p2, v0, :cond_a

    move v2, v1

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_12

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v4, v8, :cond_d

    :cond_1
    move v4, v3

    :goto_1
    add-int/lit8 v3, v5, -0x1

    if-ge v4, v3, :cond_f

    add-int/lit8 v3, v4, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_e

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    return-object v0

    :cond_4
    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVNormalizeType:[S

    iget-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    aget-short v2, v2, v3

    if-eqz v2, :cond_5

    if-ne v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->normalize(Ljava/lang/String;S)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string/jumbo v0, ""

    return-object v0

    :cond_8
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    const/16 v2, 0xd

    if-eq v0, v2, :cond_b

    :goto_2
    add-int/lit8 v1, v1, 0x1

    :cond_a
    if-ge v1, v5, :cond_13

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_c

    :cond_b
    :goto_3
    invoke-virtual {p1, v1, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    goto :goto_2

    :cond_c
    if-ne v0, v9, :cond_9

    goto :goto_3

    :cond_d
    if-eq v4, v9, :cond_1

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1

    if-eq v4, v7, :cond_1

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2, v4}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v2, v0

    move v0, v1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_e
    if-eq v3, v9, :cond_2

    const/16 v6, 0xd

    if-eq v3, v6, :cond_2

    if-eq v3, v7, :cond_2

    :cond_f
    add-int/lit8 v3, v5, -0x1

    if-lt v4, v3, :cond_11

    :cond_10
    move v3, v4

    goto :goto_4

    :cond_11
    if-nez v0, :cond_10

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2, v7}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    move v2, v3

    move v3, v4

    goto :goto_4

    :cond_12
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_13
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalPattern:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLexicalEnumeration:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fActualEnumeration:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationTypeList:Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationItemTypeList:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->lengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxLengthAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->whiteSpaceAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->totalDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fractionDigitsAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->patternAnnotations:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->enumerationAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->maxExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minInclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->minExclusiveAnnotation:Lmf/org/apache/xerces/xs/XSAnnotation;

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacets:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    return-void

    :cond_0
    return-void
.end method

.method public setAnonymous(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    return-void
.end method

.method protected setDVs([Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fDVs:[Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;

    return-void
.end method

.method protected setListValues(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 4

    const/16 v3, 0x10

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x19

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    iput-short v3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 v0, 0x2c

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fNamespaceItem:Lmf/org/apache/xerces/xs/XSNamespaceItem;

    return-void
.end method

.method protected setRestrictionValues(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p4

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxLength:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPattern:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternStr:Ljava/util/Vector;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumeration:[Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEnumerationSize:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMaxInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinExclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMinInclusive:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTotalDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFractionDigits:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fPatternType:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFixedFacet:S

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    iget-short v0, p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fItemType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected setUnionValues(Ljava/lang/String;Ljava/lang/String;S[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fIsImmutable:Z

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBase:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnonymous:Z

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    int-to-short v0, p3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFinalSet:S

    iput-object p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v0, 0x3

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fVariety:S

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fMemberTypes:[Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v0, 0x1a

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fValidationDV:S

    const/16 v0, 0x10

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/4 v0, 0x2

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fWhiteSpace:S

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->calcFundamentalFacets()V

    const/16 v0, 0x2d

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fBuiltInKind:S

    return-object p0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-eqz p3, :cond_2

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object v0

    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-eqz p3, :cond_2

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object v0

    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-eqz p1, :cond_1

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needFacetChecking()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    invoke-interface {p1}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needExtraChecking()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    return-void

    :cond_1
    sget-object p1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    if-eqz v0, :cond_0

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fFacetsDefined:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkFacets(Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->checkExtraRules(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    goto :goto_2
.end method

.method public validateWithInfo(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Lmf/org/apache/xerces/impl/dv/ValidatedInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    :goto_0
    if-eqz p3, :cond_2

    iput-object v1, p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->memberType:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    :goto_1
    if-nez p2, :cond_3

    :goto_2
    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getActualValue(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;Z)Ljava/lang/Object;

    invoke-virtual {p0, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-object p3

    :cond_1
    sget-object p2, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fEmptyContext:Lmf/org/apache/xerces/impl/dv/ValidationContext;

    goto :goto_0

    :cond_2
    new-instance p3, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {p3}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Lmf/org/apache/xerces/impl/dv/ValidationContext;->needToNormalize()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2
.end method
