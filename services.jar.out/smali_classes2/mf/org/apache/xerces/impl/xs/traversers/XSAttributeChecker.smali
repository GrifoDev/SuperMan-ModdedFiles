.class public Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;
.super Ljava/lang/Object;
.source "XSAttributeChecker.java"


# static fields
.field public static final ATTIDX_ABSTRACT:I

.field public static final ATTIDX_AFORMDEFAULT:I

.field public static final ATTIDX_BASE:I

.field public static final ATTIDX_BLOCK:I

.field public static final ATTIDX_BLOCKDEFAULT:I

.field private static ATTIDX_COUNT:I = 0x0

.field public static final ATTIDX_DEFAULT:I

.field public static final ATTIDX_EFORMDEFAULT:I

.field public static final ATTIDX_ENUMNSDECLS:I

.field public static final ATTIDX_FINAL:I

.field public static final ATTIDX_FINALDEFAULT:I

.field public static final ATTIDX_FIXED:I

.field public static final ATTIDX_FORM:I

.field public static final ATTIDX_FROMDEFAULT:I

.field public static final ATTIDX_ID:I

.field public static final ATTIDX_ISRETURNED:I

.field public static final ATTIDX_ITEMTYPE:I

.field public static final ATTIDX_MAXOCCURS:I

.field public static final ATTIDX_MEMBERTYPES:I

.field public static final ATTIDX_MINOCCURS:I

.field public static final ATTIDX_MIXED:I

.field public static final ATTIDX_NAME:I

.field public static final ATTIDX_NAMESPACE:I

.field public static final ATTIDX_NAMESPACE_LIST:I

.field public static final ATTIDX_NILLABLE:I

.field public static final ATTIDX_NONSCHEMA:I

.field public static final ATTIDX_PROCESSCONTENTS:I

.field public static final ATTIDX_PUBLIC:I

.field public static final ATTIDX_REF:I

.field public static final ATTIDX_REFER:I

.field public static final ATTIDX_SCHEMALOCATION:I

.field public static final ATTIDX_SOURCE:I

.field public static final ATTIDX_SUBSGROUP:I

.field public static final ATTIDX_SYSTEM:I

.field public static final ATTIDX_TARGETNAMESPACE:I

.field public static final ATTIDX_TYPE:I

.field public static final ATTIDX_USE:I

.field public static final ATTIDX_VALUE:I

.field public static final ATTIDX_VERSION:I

.field public static final ATTIDX_XML_LANG:I

.field public static final ATTIDX_XPATH:I

.field private static final ATTRIBUTE_N:Ljava/lang/String; = "attribute_n"

.field private static final ATTRIBUTE_R:Ljava/lang/String; = "attribute_r"

.field protected static final DT_ANYURI:I = 0x0

.field protected static final DT_BLOCK:I = -0x1

.field protected static final DT_BLOCK1:I = -0x2

.field protected static final DT_BOOLEAN:I = -0xf

.field protected static final DT_COUNT:I = 0x9

.field protected static final DT_FINAL:I = -0x3

.field protected static final DT_FINAL1:I = -0x4

.field protected static final DT_FINAL2:I = -0x5

.field protected static final DT_FORM:I = -0x6

.field protected static final DT_ID:I = 0x1

.field protected static final DT_LANGUAGE:I = 0x8

.field protected static final DT_MAXOCCURS:I = -0x7

.field protected static final DT_MAXOCCURS1:I = -0x8

.field protected static final DT_MEMBERTYPES:I = -0x9

.field protected static final DT_MINOCCURS1:I = -0xa

.field protected static final DT_NAMESPACE:I = -0xb

.field protected static final DT_NCNAME:I = 0x5

.field protected static final DT_NONNEGINT:I = -0x10

.field protected static final DT_POSINT:I = -0x11

.field protected static final DT_PROCESSCONTENTS:I = -0xc

.field protected static final DT_QNAME:I = 0x2

.field protected static final DT_STRING:I = 0x3

.field protected static final DT_TOKEN:I = 0x4

.field protected static final DT_USE:I = -0xd

.field protected static final DT_WHITESPACE:I = -0xe

.field protected static final DT_XPATH:I = 0x6

.field protected static final DT_XPATH1:I = 0x7

.field private static final ELEMENT_N:Ljava/lang/String; = "element_n"

.field private static final ELEMENT_R:Ljava/lang/String; = "element_r"

.field static final INC_POOL_SIZE:I = 0xa

.field static final INIT_POOL_SIZE:I = 0xa

.field private static final INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

.field private static final fEleAttrsMapG:Ljava/util/Hashtable;

.field private static final fEleAttrsMapL:Ljava/util/Hashtable;

.field private static final fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

.field private static fSeenTemp:[Z

.field private static fTempArray:[Ljava/lang/Object;

.field private static final fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;


# instance fields
.field fArrayPool:[[Ljava/lang/Object;

.field protected fNamespaceList:Ljava/util/Vector;

.field protected fNonSchemaAttrs:Ljava/util/Hashtable;

.field fPoolPos:I

.field protected fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

.field protected fSeen:[Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 57

    const/4 v3, 0x0

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    sput v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;-><init>()V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v3

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x1d

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    new-instance v3, Ljava/util/Hashtable;

    const/16 v4, 0x4f

    invoke-direct {v3, v4}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const/16 v3, 0x9

    new-array v3, v3, [Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x0

    const-string/jumbo v3, "anyURI"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x1

    const-string/jumbo v3, "ID"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x2

    const-string/jumbo v3, "QName"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x3

    const-string/jumbo v3, "string"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x4

    const-string/jumbo v3, "token"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x5

    const-string/jumbo v3, "NCName"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x6

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x6

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aput-object v6, v3, v5

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v6, 0x8

    const-string/jumbo v3, "language"

    invoke-virtual {v4, v3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/16 v10, 0x8

    const/16 v11, 0x9

    const/16 v12, 0xa

    const/16 v13, 0xb

    const/16 v14, 0xc

    const/16 v15, 0xd

    const/16 v16, 0xe

    const/16 v17, 0xf

    const/16 v18, 0x10

    const/16 v19, 0x11

    const/16 v20, 0x12

    const/16 v21, 0x13

    const/16 v22, 0x14

    const/16 v23, 0x15

    const/16 v24, 0x16

    const/16 v25, 0x17

    const/16 v26, 0x18

    const/16 v27, 0x19

    const/16 v28, 0x1a

    const/16 v29, 0x1b

    const/16 v30, 0x1c

    const/16 v31, 0x1d

    const/16 v32, 0x1e

    const/16 v33, 0x1f

    const/16 v34, 0x20

    const/16 v35, 0x21

    const/16 v36, 0x22

    const/16 v37, 0x23

    const/16 v38, 0x24

    const/16 v39, 0x25

    const/16 v40, 0x26

    const/16 v41, 0x27

    const/16 v42, 0x28

    const/16 v43, 0x29

    const/16 v44, 0x2a

    const/16 v45, 0x2b

    const/16 v46, 0x2c

    const/16 v47, 0x2d

    const/16 v48, 0x2e

    const/16 v49, 0x2f

    const/16 v50, 0x30

    move/from16 v0, v50

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    new-instance v52, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/16 v54, -0xf

    sget v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ABSTRACT:I

    sget-object v56, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v52 .. v56}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v52, v50, v51

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    const/16 v53, -0x6

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_AFORMDEFAULT:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v3

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v4

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BASE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v5

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v53, -0x1

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v6

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    const/16 v53, -0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCK:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v7

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    const/16 v53, -0x1

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_BLOCKDEFAULT:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v8

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    const/16 v53, 0x3

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_DEFAULT:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v9

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    const/16 v53, -0x6

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_EFORMDEFAULT:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v10

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v53, -0x3

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v11

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    const/16 v53, -0x4

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINAL:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v12

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    const/16 v53, -0x5

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FINALDEFAULT:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_EMPTY_SET:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v13

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v53, 0x3

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v14

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    const/16 v53, -0xf

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FIXED:I

    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v15

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    const/16 v53, -0x6

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FORM:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v16

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/16 v53, 0x1

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ID:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v17

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ITEMTYPE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v18

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v53, -0x7

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v19

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    const/16 v53, -0x8

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v20

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    const/16 v53, -0x9

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MEMBERTYPES:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v21

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v53, -0x10

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v22

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    const/16 v53, -0xa

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/16 v56, 0x1

    invoke-virtual/range {v55 .. v56}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v55

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v23

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v53, -0xf

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v24

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    const/16 v53, -0xf

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MIXED:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v25

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    const/16 v53, 0x5

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAME:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v26

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v53, -0xb

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v27

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v28

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    const/16 v53, -0xf

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NILLABLE:I

    sget-object v55, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v29

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    const/16 v53, -0xc

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PROCESSCONTENTS:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v30

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    const/16 v53, 0x4

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_PUBLIC:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v31

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REF:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v32

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_REFER:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v33

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v34

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SCHEMALOCATION:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v35

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SOURCE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v36

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SUBSGROUP:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v37

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_SYSTEM:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v38

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    const/16 v53, 0x0

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TARGETNAMESPACE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v39

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    const/16 v53, 0x2

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_TYPE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v40

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    const/16 v53, -0xd

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_USE:I

    sget-object v55, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v41

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0x10

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v42

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0x11

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v43

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, 0x3

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v44

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    const/16 v53, -0xe

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VALUE:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v45

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    const/16 v53, 0x4

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_VERSION:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v46

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    const/16 v53, 0x8

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XML_LANG:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v47

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v53, 0x6

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v48

    new-instance v51, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    const/16 v53, 0x7

    sget v54, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_XPATH:I

    const/16 v55, 0x0

    invoke-direct/range {v51 .. v55}, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;-><init>(Ljava/lang/String;IILjava/lang/Object;)V

    aput-object v51, v50, v49

    const/16 v51, 0x5

    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v53, v50, v26

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v53, v50, v40

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v51, 0x7

    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v53, v50, v16

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v53, v50, v26

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v53, v50, v40

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v53, v50, v41

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v53, "attribute_n"

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v51, 0x5

    invoke-static/range {v51 .. v51}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v51

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v53, v50, v9

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v53, v50, v14

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v53, v50, v17

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v53, v50, v32

    invoke-virtual/range {v51 .. v53}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v52, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_USE:Ljava/lang/String;

    aget-object v41, v50, v41

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v41, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v52, "attribute_r"

    move-object/from16 v0, v41

    move-object/from16 v1, v52

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v41, 0xa

    invoke-static/range {v41 .. v41}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v41

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/16 v52, 0x0

    aget-object v52, v50, v52

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v52, v50, v6

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v52, v50, v9

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v52, v50, v11

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v52, v50, v14

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v52, v50, v17

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v52, v50, v26

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v52, v50, v29

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SUBSTITUTIONGROUP:Ljava/lang/String;

    aget-object v37, v50, v37

    move-object/from16 v0, v41

    move-object/from16 v1, v51

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v37, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v51, v50, v40

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v37, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v51, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v51

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v37, 0xa

    invoke-static/range {v37 .. v37}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v37

    sget-object v41, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v6, v50, v6

    move-object/from16 v0, v37

    move-object/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_DEFAULT:Ljava/lang/String;

    aget-object v9, v50, v9

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v9, v50, v14

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FORM:Ljava/lang/String;

    aget-object v9, v50, v16

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v9, v50, v19

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v9, v50, v22

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NILLABLE:Ljava/lang/String;

    aget-object v9, v50, v29

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TYPE:Ljava/lang/String;

    aget-object v9, v50, v40

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v9, "element_n"

    move-object/from16 v0, v37

    invoke-virtual {v6, v9, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v14, v50, v17

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v14, v50, v19

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v14, v50, v22

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v14, v50, v32

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v9, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    const-string/jumbo v14, "element_r"

    invoke-virtual {v9, v14, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ABSTRACT:Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v50, v14

    invoke-virtual {v6, v9, v14}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCK:Ljava/lang/String;

    aget-object v7, v50, v7

    invoke-virtual {v6, v9, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v9, v50, v11

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v9, v50, v24

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x4

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v9, v50, v26

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PUBLIC:Ljava/lang/String;

    aget-object v9, v50, v31

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SYSTEM:Ljava/lang/String;

    aget-object v9, v50, v38

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_NOTATION:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v9, v50, v24

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXTYPE:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v9, v50, v17

    invoke-virtual {v6, v7, v9}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v9, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLECONTENT:Ljava/lang/String;

    invoke-virtual {v7, v9, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    invoke-static {v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v6

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v5, v50, v5

    invoke-virtual {v6, v7, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v7, v50, v17

    invoke-virtual {v6, v5, v7}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_RESTRICTION:Ljava/lang/String;

    invoke-virtual {v5, v7, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    invoke-static {v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v5

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BASE:Ljava/lang/String;

    aget-object v4, v50, v4

    invoke-virtual {v5, v6, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v5, v4, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_EXTENSION:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v50, v32

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v6, v50, v27

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v6, v50, v30

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANYATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MIXED:Ljava/lang/String;

    aget-object v6, v50, v25

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_COMPLEXCONTENT:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTEGROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    aget-object v6, v50, v32

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_GROUP:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v20

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v23

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ALL:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_CHOICE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SEQUENCE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x5

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MAXOCCURS:Ljava/lang/String;

    aget-object v6, v50, v19

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MINOCCURS:Ljava/lang/String;

    aget-object v6, v50, v22

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v6, v50, v27

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_PROCESSCONTENTS:Ljava/lang/String;

    aget-object v6, v50, v30

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANY:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNIQUE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEY:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REFER:Ljava/lang/String;

    aget-object v6, v50, v33

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_KEYREF:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v6, v50, v48

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SELECTOR:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XPATH:Ljava/lang/String;

    aget-object v6, v50, v49

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FIELD:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x1

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v6, v50, v36

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    aget-object v6, v50, v36

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v6, v50, v47

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x3

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v6, v50, v12

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAME:Ljava/lang/String;

    aget-object v6, v50, v26

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINAL:Ljava/lang/String;

    aget-object v6, v50, v12

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SIMPLETYPE:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ITEMTYPE:Ljava/lang/String;

    aget-object v6, v50, v18

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LIST:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x2

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v6, v50, v17

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_MEMBERTYPES:Ljava/lang/String;

    aget-object v6, v50, v21

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v5, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_UNION:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v4

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ATTRIBUTEFORMDEFAULT:Ljava/lang/String;

    aget-object v3, v50, v3

    invoke-virtual {v4, v5, v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_BLOCKDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v8

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ELEMENTFORMDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v10

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FINALDEFAULT:Ljava/lang/String;

    aget-object v5, v50, v13

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_TARGETNAMESPACE:Ljava/lang/String;

    aget-object v5, v50, v39

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VERSION:Ljava/lang/String;

    aget-object v5, v50, v46

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    aget-object v5, v50, v47

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v5, v50, v34

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_INCLUDE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_REDEFINE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_NAMESPACE:Ljava/lang/String;

    aget-object v5, v50, v28

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SCHEMALOCATION:Ljava/lang/String;

    aget-object v5, v50, v35

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_IMPORT:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v42

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_LENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINLENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXLENGTH:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_FRACTIONDIGITS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v43

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_TOTALDIGITS:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_PATTERN:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v45

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_WHITESPACE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->getContainer(I)Lmf/org/apache/xerces/impl/xs/traversers/Container;

    move-result-object v3

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    aget-object v5, v50, v17

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_VALUE:Ljava/lang/String;

    aget-object v5, v50, v44

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_FIXED:Ljava/lang/String;

    aget-object v5, v50, v15

    invoke-virtual {v3, v4, v5}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->put(Ljava/lang/String;Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;)V

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXINCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MAXEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MININCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v5, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_MINEXCLUSIVE:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Z

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    sget v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v3, v3, [Ljava/lang/Object;

    sput-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/16 v3, 0xa

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    return-void
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

.method private validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-static {p3}, Lmf/org/apache/xerces/util/XMLChar;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "false"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "true"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "boolean"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_1
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_7

    :cond_6
    :goto_1
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "nonNegativeInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_7
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_6

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "nonNegativeInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_9

    :cond_8
    :goto_2
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "positiveInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_9
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "positiveInteger"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_3
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string/jumbo v4, "restriction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string/jumbo v4, "substitution"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction | substitution))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_a
    const/16 v0, 0x1f

    :cond_b
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :cond_c
    or-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_d
    or-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_e
    or-int/lit8 v0, v0, 0x4

    goto :goto_3

    :pswitch_4
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    const-string/jumbo v4, "restriction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_f
    const/16 v0, 0x1f

    :cond_10
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :cond_11
    or-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    or-int/lit8 v0, v0, 0x2

    goto :goto_4

    :pswitch_5
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const-string/jumbo v4, "union"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    const-string/jumbo v4, "restriction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (list | union | restriction))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_13
    const/16 v0, 0x1f

    :cond_14
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :cond_15
    or-int/lit8 v0, v0, 0x10

    goto :goto_5

    :cond_16
    or-int/lit8 v0, v0, 0x8

    goto :goto_5

    :cond_17
    or-int/lit8 v0, v0, 0x2

    goto :goto_5

    :pswitch_6
    const/4 v0, 0x0

    const-string/jumbo v1, "#all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " \n\t\r"

    invoke-direct {v1, v3, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "extension"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const-string/jumbo v4, "restriction"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    const-string/jumbo v4, "list"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    const-string/jumbo v4, "union"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(#all | List of (extension | restriction | list | union))"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_18
    const/16 v0, 0x1f

    :cond_19
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :cond_1a
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1b
    or-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_1c
    or-int/lit8 v0, v0, 0x10

    goto :goto_6

    :cond_1d
    or-int/lit8 v0, v0, 0x8

    goto :goto_6

    :pswitch_7
    const-string/jumbo v0, "qualified"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string/jumbo v0, "unqualified"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(qualified | unqualified)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_1e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_QUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_1f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNQUALIFIED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_8
    const-string/jumbo v0, "unbounded"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    const/16 v4, -0x10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    :try_start_4
    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    goto/16 :goto_0

    :cond_20
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_UNBOUNDED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(nonNegativeInteger | unbounded)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :pswitch_9
    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(1)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_21
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_a
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :try_start_5
    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " \n\t\r"

    invoke-direct {v2, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v4, v5, :cond_23

    :cond_22
    :goto_8
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_5
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.2"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(List of QName)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_23
    :try_start_6
    iget-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v4, :cond_22

    iget-boolean v4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v4, :cond_22

    iget-object v4, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v4, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;
    :try_end_6
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_8

    :pswitch_b
    const-string/jumbo v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string/jumbo v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(0 | 1)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_24
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :cond_25
    sget-object v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fXIntPool:Lmf/org/apache/xerces/impl/xs/util/XIntPool;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/util/XIntPool;->getXInt(I)Lmf/org/apache/xerces/impl/xs/util/XInt;

    move-result-object v1

    goto/16 :goto_0

    :pswitch_c
    const-string/jumbo v0, "##any"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    const-string/jumbo v0, "##other"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LIST:Lmf/org/apache/xerces/impl/xs/util/XInt;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    new-instance v2, Ljava/util/StringTokenizer;

    const-string/jumbo v0, " \n\t\r"

    invoke-direct {v2, v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    :goto_9
    :try_start_7
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "##local"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string/jumbo v4, "##targetNamespace"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2a

    sget-object v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v6, 0x0

    invoke-interface {v4, v0, v5, v6}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v4, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_7
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_9

    :catch_4
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.3"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "((##any | ##other) | List of (anyURI | (##targetNamespace | ##local)) )"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_27
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_ANY:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_28
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_NOT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v0, v2

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v0, p1, v2

    goto/16 :goto_0

    :cond_29
    const/4 v0, 0x0

    goto :goto_a

    :cond_2a
    :try_start_8
    iget-object v0, p5, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;
    :try_end_8
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_a

    :cond_2b
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNamespaceList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NAMESPACE_LIST:I

    aput-object v0, p1, v2

    goto/16 :goto_0

    :pswitch_d
    const-string/jumbo v0, "strict"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c

    const-string/jumbo v0, "lax"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo v0, "skip"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(lax | skip | strict)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2c
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_STRICT:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2d
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_LAX:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_2e
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_ANY_SKIP:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_e
    const-string/jumbo v0, "optional"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-string/jumbo v0, "required"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    const-string/jumbo v0, "prohibited"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(optional | prohibited | required)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2f
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_OPTIONAL:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_30
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_REQUIRED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_31
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_USE_PROHIBITED:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_f
    const-string/jumbo v0, "preserve"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    const-string/jumbo v0, "replace"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string/jumbo v0, "collapse"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-enumeration-valid"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string/jumbo v4, "(preserve | replace | collapse)"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_32
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_PRESERVE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_33
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_REPLACE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :cond_34
    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->INT_WS_COLLAPSE:Lmf/org/apache/xerces/impl/xs/util/XInt;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkAttributes(Lmf/org/w3c/dom/Element;ZLmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;Z)[Ljava/lang/Object;
    .locals 17

    if-eqz p1, :cond_4

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getAttrs(Lmf/org/w3c/dom/Element;)[Lmf/org/w3c/dom/Attr;

    move-result-object v13

    move-object/from16 v0, p3

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v13, v2}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v9

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapG:Ljava/util/Hashtable;

    if-eqz p2, :cond_6

    move-object v3, v2

    move-object v2, v9

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;

    if-eqz v8, :cond_b

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->getAvailableArray()[Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v10, 0x0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeenTemp:[Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    const/4 v6, 0x0

    sget v7, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v14, v13

    const/4 v2, 0x0

    move v12, v2

    :goto_2
    if-ge v12, v14, :cond_19

    aget-object v6, v13, v12

    invoke-interface {v6}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getNamespaceURI(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "xml"

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_c

    :cond_0
    :goto_3
    if-nez v2, :cond_f

    :cond_1
    invoke-virtual {v8, v4}, Lmf/org/apache/xerces/impl/xs/traversers/Container;->get(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    move-result-object v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v7, 0x1

    aput-boolean v7, v2, v6

    :try_start_0
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    if-gez v2, :cond_13

    iget v0, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    move/from16 v16, v0

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v7}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->validate([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;ILmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v16
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_4
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ENUMERATION:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_3
    :goto_5
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    return-object v2

    :cond_5
    const-string/jumbo v2, "s4s-elt-schema-ns"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :cond_6
    sget-object v3, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fEleAttrsMapL:Ljava/util/Hashtable;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ELEMENT:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ATTRIBUTE:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v9

    goto/16 :goto_1

    :cond_7
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "element_n"

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v2, "element_r"

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_REF:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lmf/org/apache/xerces/util/DOMUtil;->getAttr(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "attribute_n"

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v2, "attribute_r"

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "s4s-elt-invalid"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v9, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    const/4 v2, 0x0

    return-object v2

    :cond_c
    invoke-static {v6}, Lmf/org/apache/xerces/util/DOMUtil;->getPrefix(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "xmlns"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "xmlns"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_XML_LANG:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_SCHEMA:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_e
    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    goto/16 :goto_3

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    if-eqz v2, :cond_11

    :goto_6
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v2, v3, v2

    check-cast v2, Ljava/util/Vector;

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    :cond_11
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    new-instance v6, Ljava/util/Vector;

    const/4 v7, 0x4

    const/4 v15, 0x2

    invoke-direct {v6, v7, v15}, Ljava/util/Vector;-><init>(II)V

    aput-object v6, v3, v2

    goto :goto_6

    :cond_12
    const-string/jumbo v2, "s4s-att-not-allowed"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v5, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_5

    :cond_13
    :try_start_1
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x3

    if-ne v2, v6, :cond_15

    :cond_14
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "s4s-att-invalid-value"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v6, v7

    const/4 v7, 0x1

    aput-object v4, v6, v7

    const/4 v4, 0x2

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v5, v6, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    iget-object v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v4, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v4, v3, v2

    goto/16 :goto_4

    :cond_15
    :try_start_2
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x6

    if-eq v2, v6, :cond_14

    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x7

    if-eq v2, v6, :cond_14

    sget-object v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fExtraDVs:[Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    iget v6, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    aget-object v2, v2, v6

    move-object/from16 v0, p3

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fValidationContext:Lmf/org/apache/xerces/impl/validation/ValidationState;

    const/4 v7, 0x0

    invoke-interface {v2, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v5

    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dvIndex:I

    const/4 v6, 0x2

    if-eq v2, v6, :cond_17

    :cond_16
    :goto_7
    iget v2, v15, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aput-object v5, v3, v2

    goto/16 :goto_4

    :cond_17
    move-object v0, v5

    check-cast v0, Lmf/org/apache/xerces/xni/QName;

    move-object v2, v0

    iget-object v6, v2, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v6, v7, :cond_16

    iget-object v6, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-nez v6, :cond_16

    move-object/from16 v0, p3

    iget-boolean v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fIsChameleonSchema:Z

    if-eqz v6, :cond_16

    move-object/from16 v0, p3

    iget-object v6, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fTargetNamespace:Ljava/lang/String;

    iput-object v6, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_18
    if-eqz p4, :cond_3

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ENUMNSDECLS:I

    new-instance v4, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    move-object/from16 v0, p3

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;-><init>(Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V

    aput-object v4, v3, v2

    goto/16 :goto_5

    :cond_19
    iget-object v6, v8, Lmf/org/apache/xerces/impl/xs/traversers/Container;->values:[Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;

    const/4 v2, 0x0

    move-wide v4, v10

    :goto_8
    array-length v7, v6

    if-ge v2, v7, :cond_1c

    aget-object v7, v6, v2

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    if-nez v8, :cond_1b

    :cond_1a
    :goto_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v8, v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSeen:[Z

    iget v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    aget-boolean v8, v8, v10

    if-nez v8, :cond_1a

    iget v8, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->dfltValue:Ljava/lang/Object;

    aput-object v10, v3, v8

    iget v7, v7, Lmf/org/apache/xerces/impl/xs/traversers/OneAttr;->valueIndex:I

    const/4 v8, 0x1

    shl-int v7, v8, v7

    int-to-long v10, v7

    or-long/2addr v4, v10

    goto :goto_9

    :cond_1c
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_FROMDEFAULT:I

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v3, v2

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    if-nez v2, :cond_1e

    :cond_1d
    :goto_a
    return-object v3

    :cond_1e
    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v4

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v2, v3, v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/util/XInt;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/util/XInt;->intValue()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1d

    if-le v4, v2, :cond_1d

    const-string/jumbo v2, "p-props-correct.2.1"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    const/4 v5, 0x1

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v6, v3, v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v4, v1}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MINOCCURS:I

    sget v4, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_MAXOCCURS:I

    aget-object v4, v3, v4

    aput-object v4, v3, v2

    goto :goto_a
.end method

.method public checkNonSchemaAttributes(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 14

    const/16 v13, 0x2c

    const/4 v6, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    invoke-virtual {v1, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v8

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, v5, 0x1

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v1, v4, v9, v10}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v5, 0x2

    move v5, v3

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v9, "s4s-att-invalid-value"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v3, v10, v12

    aput-object v2, v10, v6

    const/4 v3, 0x2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-virtual {p0, v9, v10, v11}, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected getAvailableArray()[Ljava/lang/Object;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    sget-object v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fTempArray:[Ljava/lang/Object;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    return-object v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v0, v0, 0xa

    new-array v0, v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    sget v2, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSchemaHandler:Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;Lmf/org/w3c/dom/Element;)V

    return-void
.end method

.method public reset(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fNonSchemaAttrs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public resolveNamespace(Lmf/org/w3c/dom/Element;[Lmf/org/w3c/dom/Attr;Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p3}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->pushContext()V

    array-length v4, p2

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v5, p2, v2

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "xmlns:"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v3, v1

    :goto_1
    if-nez v3, :cond_2

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getLocalName(Lmf/org/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-static {v5}, Lmf/org/apache/xerces/util/DOMUtil;->getValue(Lmf/org/w3c/dom/Attr;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    move-object v0, v1

    :cond_3
    invoke-virtual {p3, v3, v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    return-void
.end method

.method public returnAttrArray([Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;)V
    .locals 2

    if-nez p2, :cond_1

    :goto_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    if-nez v0, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p2, Lmf/org/apache/xerces/impl/xs/traversers/XSDocumentInfo;->fNamespaceSupport:Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/SchemaNamespaceSupport;->popContext()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    array-length v0, p1

    sget v1, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_COUNT:I

    if-ne v0, v1, :cond_0

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_ISRETURNED:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p1, v0

    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    if-nez v0, :cond_3

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fArrayPool:[[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->fPoolPos:I

    aput-object p1, v0, v1

    return-void

    :cond_3
    sget v0, Lmf/org/apache/xerces/impl/xs/traversers/XSAttributeChecker;->ATTIDX_NONSCHEMA:I

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_1
.end method
