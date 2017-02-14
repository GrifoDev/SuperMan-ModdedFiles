.class public Lsun/security/x509/X500Name;
.super Ljava/lang/Object;
.source "X500Name.java"

# interfaces
.implements Lsun/security/x509/GeneralNameInterface;
.implements Ljava/security/Principal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/x509/X500Name$1;
    }
.end annotation


# static fields
.field private static final DNQUALIFIER_DATA:[I

.field public static final DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final DOMAIN_COMPONENT_DATA:[I

.field public static final DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GENERATIONQUALIFIER_DATA:[I

.field public static final GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final GIVENNAME_DATA:[I

.field public static final GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final INITIALS_DATA:[I

.field public static final INITIALS_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SERIALNUMBER_DATA:[I

.field public static final SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

.field private static final SURNAME_DATA:[I

.field public static final SURNAME_OID:Lsun/security/util/ObjectIdentifier;

.field private static final commonName_data:[I

.field public static final commonName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final countryName_data:[I

.field public static final countryName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final internedOIDs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private static final ipAddress_data:[I

.field public static final ipAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final localityName_data:[I

.field public static final localityName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgName_data:[I

.field public static final orgName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final orgUnitName_data:[I

.field public static final orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final principalConstructor:Ljava/lang/reflect/Constructor;

.field private static final principalField:Ljava/lang/reflect/Field;

.field private static final stateName_data:[I

.field public static final stateName_oid:Lsun/security/util/ObjectIdentifier;

.field private static final streetAddress_data:[I

.field public static final streetAddress_oid:Lsun/security/util/ObjectIdentifier;

.field private static final title_data:[I

.field public static final title_oid:Lsun/security/util/ObjectIdentifier;

.field private static final userid_data:[I

.field public static final userid_oid:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private volatile allAvaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field

.field private canonicalDn:Ljava/lang/String;

.field private dn:Ljava/lang/String;

.field private encoded:[B

.field private names:[Lsun/security/x509/RDN;

.field private volatile rdnList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation
.end field

.field private rfc1779Dn:Ljava/lang/String;

.field private rfc2253Dn:Ljava/lang/String;

.field private x500Principal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    const/4 v3, 0x3

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    filled-new-array {v6, v5, v4, v4}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    filled-new-array {v6, v5, v4, v5}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    const/4 v3, 0x6

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    filled-new-array {v6, v5, v4, v7}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    const/16 v3, 0x8

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    const/16 v3, 0x9

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    const/16 v3, 0xa

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    filled-new-array {v6, v5, v4, v8}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    const/16 v3, 0xc

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->title_data:[I

    const/16 v3, 0x2a

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    const/16 v3, 0x2b

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    const/16 v3, 0x2c

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    const/16 v3, 0x2e

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    new-array v3, v7, [I

    fill-array-data v3, :array_2

    sput-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    sget-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->title_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    sget-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v1, Lsun/security/x509/X500Name$1;

    invoke-direct {v1}, Lsun/security/x509/X500Name$1;-><init>()V

    :try_start_0
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    sput-object v3, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/reflect/Field;

    sput-object v3, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/InternalError;

    const-string/jumbo v4, "Could not obtain X500Principal access"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/InternalError;

    throw v3

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x4
        0x1
        0x2a
        0x2
        0xb
        0x2
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x19
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x9
        0x926
        0x124f92c
        0x64
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseRFC2253DN(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v2

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v8

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v8

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v7

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v7

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    return-void
.end method

.method public constructor <init>([Lsun/security/x509/RDN;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot create an X500Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .locals 4

    :try_start_0
    sget-object v2, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X500Name;

    iput-object p0, v1, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "DN cannot start with newline nor tab"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static countQuotes(Ljava/lang/String;II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    return v0
.end method

.method private static escaped(IILjava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/16 v4, 0x5c

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    return v1

    :cond_0
    if-le p0, v1, :cond_1

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, p0, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    return v1

    :cond_1
    if-le p0, v1, :cond_5

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    add-int/lit8 v3, p0, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    const/4 v0, 0x0

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-lt p0, p1, :cond_3

    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_3
    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    :goto_1
    return v1

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    return v2
.end method

.method private findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private generateDN()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-void
.end method

.method private generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getString(Lsun/security/util/DerValue;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not a DER string encoding, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    return-object v0
.end method

.method static intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .locals 2

    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private isWithinSubtree(Lsun/security/x509/X500Name;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v3

    :cond_1
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_2

    return v4

    :cond_2
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    return v3

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    return v4
.end method

.method private parseDER(Lsun/security/util/DerInputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v0

    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {p1, v5}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    if-nez v4, :cond_2

    const/4 v5, 0x0

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    :cond_0
    return-void

    :catch_0
    move-exception v3

    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v1, v5, v0}, Lsun/security/util/DerValue;-><init>(B[B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    goto :goto_0

    :cond_2
    array-length v5, v4

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v2, 0x0

    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v6, Lsun/security/x509/RDN;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    const/4 v10, 0x0

    new-array v10, v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    const/4 v9, 0x0

    const/16 v10, 0x2c

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/16 v10, 0x3b

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    :goto_0
    if-gez v3, :cond_2

    if-ltz v4, :cond_7

    :cond_2
    if-gez v4, :cond_4

    move v7, v3

    :goto_1
    invoke-static {p1, v9, v7}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v5, v10

    if-ltz v7, :cond_3

    const/4 v10, 0x1

    if-eq v5, v10, :cond_3

    invoke-static {v7, v9, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_3
    :goto_2
    add-int/lit8 v9, v7, 0x1

    const/16 v10, 0x2c

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    const/16 v10, 0x3b

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    :cond_4
    if-gez v3, :cond_5

    move v7, v4

    goto :goto_1

    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_6
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lsun/security/x509/RDN;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    return-void
.end method

.method private parseRFC2253DN(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x2c

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    new-array v6, v7, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    :goto_0
    if-ltz v3, :cond_3

    if-lez v3, :cond_1

    invoke-static {v3, v5, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lsun/security/x509/RDN;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    return-void
.end method


# virtual methods
.method public allAvas()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    sget-object v2, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    iput-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v2

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public avaSize()I
    .locals 1

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .locals 11

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return-object v10

    :cond_0
    iget-object v8, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v6, v8

    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v7, v8

    if-eqz v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    return-object v10

    :cond_2
    if-ge v7, v6, :cond_3

    move v5, v7

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_5

    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v8, v8, v2

    iget-object v9, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v2, :cond_5

    return-object v10

    :cond_3
    move v5, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-array v0, v2, [Lsun/security/x509/RDN;

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v2, :cond_6

    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v8, v8, v4

    aput-object v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v3

    return-object v10
.end method

.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    move-object v1, p1

    check-cast v1, Lsun/security/x509/X500Name;

    invoke-virtual {v1, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, v1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {v1, p0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public emit(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v9, 0x0

    if-ne p0, p1, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    instance-of v7, p1, Lsun/security/x509/X500Name;

    if-nez v7, :cond_1

    return v9

    :cond_1
    move-object v2, p1

    check-cast v2, Lsun/security/x509/X500Name;

    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v8, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    :cond_2
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v7

    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v7, v7

    if-eq v1, v7, :cond_3

    return v9

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v7, v0

    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v5, v7, v0

    iget-object v7, v4, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v7, v7

    iget-object v8, v5, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v8, v8

    if-eq v7, v8, :cond_4

    return v9

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method public findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCountry()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDNQualifier()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getEncodedInternal()[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getEncodedInternal()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    if-nez v3, :cond_1

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    :cond_1
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    return-object v3
.end method

.method public getGeneration()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getIP()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInitials()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLocality()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOrganization()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOrganizationalUnit()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRFC1779Name()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC1779Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2

    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_1

    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/X500Name;->getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253Name(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSurname()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v1, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v2

    if-nez v1, :cond_0

    return v4

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    iget-object v2, v2, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-eqz v2, :cond_1

    return v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public rdns()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lsun/security/x509/RDN;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public subtreeDepth()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object v0
.end method
