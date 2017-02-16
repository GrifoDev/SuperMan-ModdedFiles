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

    .prologue
    const/16 v8, 0xb

    const/4 v7, 0x7

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 1144
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1143
    sput-object v3, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    .line 1151
    const/4 v3, 0x3

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    .line 1152
    filled-new-array {v6, v5, v4, v4}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    .line 1153
    filled-new-array {v6, v5, v4, v5}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    .line 1154
    const/4 v3, 0x6

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    .line 1155
    filled-new-array {v6, v5, v4, v7}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    .line 1156
    const/16 v3, 0x8

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    .line 1157
    const/16 v3, 0x9

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    .line 1158
    const/16 v3, 0xa

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    .line 1159
    filled-new-array {v6, v5, v4, v8}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    .line 1160
    const/16 v3, 0xc

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->title_data:[I

    .line 1161
    const/16 v3, 0x2a

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    .line 1162
    const/16 v3, 0x2b

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    .line 1163
    const/16 v3, 0x2c

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    .line 1164
    const/16 v3, 0x2e

    filled-new-array {v6, v5, v4, v3}, [I

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    .line 1166
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    .line 1168
    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 1167
    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    .line 1170
    new-array v3, v7, [I

    fill-array-data v3, :array_2

    .line 1169
    sput-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    .line 1193
    sget-object v3, Lsun/security/x509/X500Name;->commonName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1198
    sget-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1201
    sget-object v3, Lsun/security/x509/X500Name;->countryName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1204
    sget-object v3, Lsun/security/x509/X500Name;->localityName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1207
    sget-object v3, Lsun/security/x509/X500Name;->orgName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1210
    sget-object v3, Lsun/security/x509/X500Name;->orgUnitName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1213
    sget-object v3, Lsun/security/x509/X500Name;->stateName_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    .line 1216
    sget-object v3, Lsun/security/x509/X500Name;->streetAddress_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1219
    sget-object v3, Lsun/security/x509/X500Name;->title_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    .line 1223
    sget-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1226
    sget-object v3, Lsun/security/x509/X500Name;->SURNAME_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1229
    sget-object v3, Lsun/security/x509/X500Name;->GIVENNAME_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    .line 1232
    sget-object v3, Lsun/security/x509/X500Name;->INITIALS_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    .line 1236
    sget-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    .line 1235
    sput-object v3, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    .line 1243
    sget-object v3, Lsun/security/x509/X500Name;->ipAddress_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    .line 1254
    sget-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_DATA:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    .line 1253
    sput-object v3, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    .line 1257
    sget-object v3, Lsun/security/x509/X500Name;->userid_data:[I

    invoke-static {v3}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-static {v3}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    .line 1408
    new-instance v1, Lsun/security/x509/X500Name$1;

    invoke-direct {v1}, Lsun/security/x509/X500Name$1;-><init>()V

    .line 1420
    .local v1, "pa":Ljava/security/PrivilegedExceptionAction;, "Ljava/security/PrivilegedExceptionAction<[Ljava/lang/Object;>;"
    :try_start_0
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 1421
    .local v2, "result":[Ljava/lang/Object;
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/reflect/Constructor;

    sput-object v3, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    .line 1422
    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/reflect/Field;

    sput-object v3, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-void

    .line 1423
    .end local v2    # "result":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1424
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/InternalError;

    const-string/jumbo v4, "Could not obtain X500Principal access"

    invoke-direct {v3, v4}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/InternalError;

    throw v3

    .line 1166
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

    .line 1168
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

    .line 1170
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
    .param p1, "dname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dname"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    if-nez p1, :cond_0

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_0
    const-string/jumbo v0, "RFC2253"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseRFC2253DN(Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void

    .line 184
    :cond_1
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 187
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
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 212
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v2

    .line 213
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v2

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 214
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 215
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    .line 216
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 217
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 218
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    .line 219
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 220
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 221
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    .line 222
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 223
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 206
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "commonName"    # Ljava/lang/String;
    .param p2, "organizationUnit"    # Ljava/lang/String;
    .param p3, "organizationName"    # Ljava/lang/String;
    .param p4, "localityName"    # Ljava/lang/String;
    .param p5, "stateName"    # Ljava/lang/String;
    .param p6, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    const/4 v0, 0x6

    new-array v0, v0, [Lsun/security/x509/RDN;

    iput-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 250
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 251
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    .line 252
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p1}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 251
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 253
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v8

    .line 254
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v8

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    .line 255
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p2}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 256
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v7

    .line 257
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v7

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    .line 258
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 259
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v6

    .line 260
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v6

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    .line 261
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p4}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 262
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v5

    .line 263
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v5

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    .line 264
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p5}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 265
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v1, Lsun/security/x509/RDN;

    invoke-direct {v1, v5}, Lsun/security/x509/RDN;-><init>(I)V

    aput-object v1, v0, v4

    .line 266
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v0, v0, v4

    iget-object v0, v0, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    new-instance v1, Lsun/security/x509/AVA;

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    .line 267
    new-instance v3, Lsun/security/util/DerValue;

    invoke-direct {v3, p6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-direct {v1, v2, v3}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V

    aput-object v1, v0, v4

    .line 244
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "dname"    # Ljava/lang/String;
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

    .prologue
    .line 164
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-direct {p0, p1, p2}, Lsun/security/x509/X500Name;->parseDN(Ljava/lang/String;Ljava/util/Map;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 0
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "value"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Lsun/security/util/DerValue;->toDerInputStream()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    .line 295
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "name"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance v0, Lsun/security/util/DerInputStream;

    invoke-direct {v0, p1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 318
    .local v0, "in":Lsun/security/util/DerInputStream;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->parseDER(Lsun/security/util/DerInputStream;)V

    .line 316
    return-void
.end method

.method public constructor <init>([Lsun/security/x509/RDN;)V
    .locals 3
    .param p1, "rdnArray"    # [Lsun/security/x509/RDN;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    if-nez p1, :cond_1

    .line 278
    const/4 v1, 0x0

    new-array v1, v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 276
    :cond_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lsun/security/x509/RDN;

    iput-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 282
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    if-nez v1, :cond_2

    .line 283
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Cannot create an X500Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static asX500Name(Ljavax/security/auth/x500/X500Principal;)Lsun/security/x509/X500Name;
    .locals 4
    .param p0, "p"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 1455
    :try_start_0
    sget-object v2, Lsun/security/x509/X500Name;->principalField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/x509/X500Name;

    .line 1456
    .local v1, "name":Lsun/security/x509/X500Name;
    iput-object p0, v1, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1457
    return-object v1

    .line 1458
    .end local v1    # "name":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V
    .locals 4
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 955
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 956
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 957
    .local v0, "c":C
    const/16 v2, 0x20

    if-eq v0, v2, :cond_1

    .line 958
    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 959
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "DN cannot start with newline nor tab"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 955
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 954
    .end local v0    # "c":C
    :cond_2
    return-void
.end method

.method static countQuotes(Ljava/lang/String;II)I
    .locals 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 1023
    const/4 v0, 0x0

    .line 1025
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1026
    .local v1, "escape":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 1027
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_0

    rem-int/lit8 v3, v1, 0x2

    if-nez v3, :cond_0

    .line 1028
    add-int/lit8 v0, v0, 0x1

    .line 1030
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1026
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 1033
    :cond_2
    return v0
.end method

.method private static escaped(IILjava/lang/String;)Z
    .locals 5
    .param p0, "rdnEnd"    # I
    .param p1, "searchOffset"    # I
    .param p2, "dnString"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x5c

    const/4 v1, 0x1

    .line 1039
    if-ne p0, v1, :cond_0

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1044
    return v1

    .line 1046
    :cond_0
    if-le p0, v1, :cond_1

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1047
    add-int/lit8 v3, p0, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1052
    return v1

    .line 1054
    :cond_1
    if-le p0, v1, :cond_5

    add-int/lit8 v3, p0, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1055
    add-int/lit8 v3, p0, -0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, "count":I
    add-int/lit8 p0, p0, -0x1

    .line 1062
    :goto_0
    if-lt p0, p1, :cond_3

    .line 1063
    invoke-virtual {p2, p0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    .line 1064
    add-int/lit8 v0, v0, 0x1

    .line 1066
    :cond_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 1070
    :cond_3
    rem-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_4

    :goto_1
    return v1

    :cond_4
    move v1, v2

    goto :goto_1

    .line 1073
    .end local v0    # "count":I
    :cond_5
    return v2
.end method

.method private findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v3, 0x0

    .line 749
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 750
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 751
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 752
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    .line 753
    return-object v1

    .line 750
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 757
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
    :cond_1
    return-object v3
.end method

.method private generateDN()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1085
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1086
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    .line 1087
    return-void

    .line 1090
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1091
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    .line 1092
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1093
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1094
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1099
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    .line 1084
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

    .prologue
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1112
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1113
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v4

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1117
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_2

    .line 1118
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 1119
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_1

    .line 1120
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1118
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1125
    .end local v0    # "i":I
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

    .prologue
    .line 681
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_0

    .line 682
    const-string/jumbo v2, ""

    return-object v2

    .line 694
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 695
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 696
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 697
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 699
    :cond_1
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getString(Lsun/security/util/DerValue;)Ljava/lang/String;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 428
    if-nez p1, :cond_0

    .line 429
    return-object v1

    .line 430
    :cond_0
    invoke-virtual {p1}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 433
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not a DER string encoding, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 434
    iget-byte v3, p1, Lsun/security/util/DerValue;->tag:B

    .line 433
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_1
    return-object v0
.end method

.method static intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 1135
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/util/ObjectIdentifier;

    .line 1136
    .local v0, "interned":Lsun/security/util/ObjectIdentifier;
    if-eqz v0, :cond_0

    .line 1137
    return-object v0

    .line 1139
    :cond_0
    sget-object v1, Lsun/security/x509/X500Name;->internedOIDs:Ljava/util/Map;

    invoke-interface {v1, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-object p0
.end method

.method private isWithinSubtree(Lsun/security/x509/X500Name;)Z
    .locals 5
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1311
    if-ne p0, p1, :cond_0

    .line 1312
    return v4

    .line 1314
    :cond_0
    if-nez p1, :cond_1

    .line 1315
    return v3

    .line 1317
    :cond_1
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 1318
    return v4

    .line 1320
    :cond_2
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-nez v1, :cond_3

    .line 1321
    return v3

    .line 1323
    :cond_3
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 1324
    return v3

    .line 1326
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 1327
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v1, v1, v0

    iget-object v2, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1328
    return v3

    .line 1326
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1331
    :cond_6
    return v4
.end method

.method private parseDER(Lsun/security/util/DerInputStream;)V
    .locals 8
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x5

    .line 784
    const/4 v4, 0x0

    .line 785
    .local v4, "nameseq":[Lsun/security/util/DerValue;
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->toByteArray()[B

    move-result-object v0

    .line 788
    .local v0, "derBytes":[B
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {p1, v5}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 800
    .end local v4    # "nameseq":[Lsun/security/util/DerValue;
    :goto_0
    if-nez v4, :cond_2

    .line 801
    const/4 v5, 0x0

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 778
    :cond_0
    return-void

    .line 789
    .restart local v4    # "nameseq":[Lsun/security/util/DerValue;
    :catch_0
    move-exception v3

    .line 790
    .local v3, "ioe":Ljava/io/IOException;
    if-nez v0, :cond_1

    .line 791
    const/4 v4, 0x0

    goto :goto_0

    .line 793
    :cond_1
    new-instance v1, Lsun/security/util/DerValue;

    const/16 v5, 0x30

    invoke-direct {v1, v5, v0}, Lsun/security/util/DerValue;-><init>(B[B)V

    .line 795
    .local v1, "derVal":Lsun/security/util/DerValue;
    invoke-virtual {v1}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v0

    .line 796
    new-instance v5, Lsun/security/util/DerInputStream;

    invoke-direct {v5, v0}, Lsun/security/util/DerInputStream;-><init>([B)V

    invoke-virtual {v5, v6}, Lsun/security/util/DerInputStream;->getSequence(I)[Lsun/security/util/DerValue;

    move-result-object v4

    .local v4, "nameseq":[Lsun/security/util/DerValue;
    goto :goto_0

    .line 803
    .end local v1    # "derVal":Lsun/security/util/DerValue;
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "nameseq":[Lsun/security/util/DerValue;
    :cond_2
    array-length v5, v4

    new-array v5, v5, [Lsun/security/x509/RDN;

    iput-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 804
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_0

    .line 805
    iget-object v5, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    new-instance v6, Lsun/security/x509/RDN;

    aget-object v7, v4, v2

    invoke-direct {v6, v7}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    aput-object v6, v5, v2

    .line 804
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private parseDN(Ljava/lang/String;Ljava/util/Map;)V
    .locals 11
    .param p1, "input"    # Ljava/lang/String;
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

    .prologue
    .line 876
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 877
    :cond_0
    const/4 v10, 0x0

    new-array v10, v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 878
    return-void

    .line 881
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->checkNoNewLinesNorTabsAtBeginningOfDN(Ljava/lang/String;)V

    .line 883
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v2, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    .line 887
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    .line 889
    .local v5, "quoteCount":I
    move-object v1, p1

    .line 891
    .local v1, "dnString":Ljava/lang/String;
    const/4 v9, 0x0

    .line 892
    .local v9, "searchOffset":I
    const/16 v10, 0x2c

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 893
    .local v3, "nextComma":I
    const/16 v10, 0x3b

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 894
    .local v4, "nextSemiColon":I
    :goto_0
    if-gez v3, :cond_2

    if-ltz v4, :cond_7

    .line 896
    :cond_2
    if-gez v4, :cond_4

    .line 897
    move v7, v3

    .line 903
    .local v7, "rdnEnd":I
    :goto_1
    invoke-static {p1, v9, v7}, Lsun/security/x509/X500Name;->countQuotes(Ljava/lang/String;II)I

    move-result v10

    add-int/2addr v5, v10

    .line 912
    if-ltz v7, :cond_3

    const/4 v10, 0x1

    if-eq v5, v10, :cond_3

    .line 913
    invoke-static {v7, v9, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 931
    :cond_3
    :goto_2
    add-int/lit8 v9, v7, 0x1

    .line 932
    const/16 v10, 0x2c

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 933
    const/16 v10, 0x3b

    invoke-virtual {p1, v10, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    goto :goto_0

    .line 898
    .end local v7    # "rdnEnd":I
    :cond_4
    if-gez v3, :cond_5

    .line 899
    move v7, v4

    .restart local v7    # "rdnEnd":I
    goto :goto_1

    .line 901
    .end local v7    # "rdnEnd":I
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v7

    .restart local v7    # "rdnEnd":I
    goto :goto_1

    .line 918
    :cond_6
    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 921
    .local v8, "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 922
    .local v6, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    add-int/lit8 v0, v7, 0x1

    .line 928
    const/4 v5, 0x0

    goto :goto_2

    .line 937
    .end local v6    # "rdn":Lsun/security/x509/RDN;
    .end local v7    # "rdnEnd":I
    .end local v8    # "rdnString":Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 938
    .restart local v8    # "rdnString":Ljava/lang/String;
    new-instance v6, Lsun/security/x509/RDN;

    invoke-direct {v6, v8, p2}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 939
    .restart local v6    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 946
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [Lsun/security/x509/RDN;

    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lsun/security/x509/RDN;

    iput-object v10, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 875
    return-void
.end method

.method private parseRFC2253DN(Ljava/lang/String;)V
    .locals 9
    .param p1, "dnString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x2c

    const/4 v7, 0x0

    .line 967
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    .line 968
    new-array v6, v7, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 969
    return-void

    .line 972
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v1, "dnVector":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    const/4 v0, 0x0

    .line 976
    .local v0, "dnOffset":I
    const/4 v5, 0x0

    .line 977
    .local v5, "searchOffset":I
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 978
    .local v3, "rdnEnd":I
    :goto_0
    if-ltz v3, :cond_3

    .line 986
    if-lez v3, :cond_1

    invoke-static {v3, v5, p1}, Lsun/security/x509/X500Name;->escaped(IILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1001
    :cond_1
    :goto_1
    add-int/lit8 v5, v3, 0x1

    .line 1002
    invoke-virtual {p1, v8, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    goto :goto_0

    .line 991
    :cond_2
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 994
    .local v4, "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    .local v2, "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 998
    add-int/lit8 v0, v3, 0x1

    goto :goto_1

    .line 1006
    .end local v2    # "rdn":Lsun/security/x509/RDN;
    .end local v4    # "rdnString":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1007
    .restart local v4    # "rdnString":Ljava/lang/String;
    new-instance v2, Lsun/security/x509/RDN;

    const-string/jumbo v6, "RFC2253"

    invoke-direct {v2, v4, v6}, Lsun/security/x509/RDN;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    .restart local v2    # "rdn":Lsun/security/x509/RDN;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1015
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Lsun/security/x509/RDN;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lsun/security/x509/RDN;

    iput-object v6, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    .line 966
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

    .prologue
    .line 345
    iget-object v1, p0, Lsun/security/x509/X500Name;->allAvaList:Ljava/util/List;

    .line 346
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    if-nez v1, :cond_0

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/AVA;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 349
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/security/x509/RDN;->avas()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 348
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method public asX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 1436
    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    if-nez v2, :cond_0

    .line 1438
    const/4 v2, 0x1

    :try_start_0
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 1440
    .local v0, "args":[Ljava/lang/Object;
    sget-object v2, Lsun/security/x509/X500Name;->principalConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 1439
    iput-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    .end local v0    # "args":[Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->x500Principal:Ljavax/security/auth/x500/X500Principal;

    return-object v2

    .line 1441
    :catch_0
    move-exception v1

    .line 1442
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected exception"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public avaSize()I
    .locals 1

    .prologue
    .line 360
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->allAvas()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public commonAncestor(Lsun/security/x509/X500Name;)Lsun/security/x509/X500Name;
    .locals 11
    .param p1, "other"    # Lsun/security/x509/X500Name;

    .prologue
    const/4 v10, 0x0

    .line 1354
    if-nez p1, :cond_0

    .line 1355
    return-object v10

    .line 1357
    :cond_0
    iget-object v8, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v6, v8

    .line 1358
    .local v6, "otherLen":I
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v7, v8

    .line 1359
    .local v7, "thisLen":I
    if-eqz v7, :cond_1

    if-nez v6, :cond_2

    .line 1360
    :cond_1
    return-object v10

    .line 1362
    :cond_2
    if-ge v7, v6, :cond_3

    move v5, v7

    .line 1366
    .local v5, "minLen":I
    :goto_0
    const/4 v2, 0x0

    .line 1367
    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_5

    .line 1368
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v8, v8, v2

    iget-object v9, p1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lsun/security/x509/RDN;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1369
    if-nez v2, :cond_5

    .line 1370
    return-object v10

    .line 1362
    .end local v2    # "i":I
    .end local v5    # "minLen":I
    :cond_3
    move v5, v6

    .restart local v5    # "minLen":I
    goto :goto_0

    .line 1367
    .restart local v2    # "i":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1378
    :cond_5
    new-array v0, v2, [Lsun/security/x509/RDN;

    .line 1379
    .local v0, "ancestor":[Lsun/security/x509/RDN;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v2, :cond_6

    .line 1380
    iget-object v8, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v8, v8, v4

    aput-object v8, v0, v4

    .line 1379
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1383
    :cond_6
    const/4 v1, 0x0

    .line 1385
    .local v1, "commonAncestor":Lsun/security/x509/X500Name;
    :try_start_0
    new-instance v1, Lsun/security/x509/X500Name;

    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>([Lsun/security/x509/RDN;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1389
    .local v1, "commonAncestor":Lsun/security/x509/X500Name;
    return-object v1

    .line 1386
    .end local v1    # "commonAncestor":Lsun/security/x509/X500Name;
    :catch_0
    move-exception v3

    .line 1387
    .local v3, "ioe":Ljava/io/IOException;
    return-object v10
.end method

.method public constrains(Lsun/security/x509/GeneralNameInterface;)I
    .locals 4
    .param p1, "inputName"    # Lsun/security/x509/GeneralNameInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1280
    if-nez p1, :cond_0

    .line 1281
    const/4 v0, -0x1

    .line 1300
    .local v0, "constraintType":I
    :goto_0
    return v0

    .line 1282
    .end local v0    # "constraintType":I
    :cond_0
    invoke-interface {p1}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 1283
    const/4 v0, -0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .end local v0    # "constraintType":I
    :cond_1
    move-object v1, p1

    .line 1285
    check-cast v1, Lsun/security/x509/X500Name;

    .line 1286
    .local v1, "inputX500":Lsun/security/x509/X500Name;
    invoke-virtual {v1, p0}, Lsun/security/x509/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1287
    const/4 v0, 0x0

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1288
    .end local v0    # "constraintType":I
    :cond_2
    iget-object v2, v1, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_3

    .line 1289
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1290
    .end local v0    # "constraintType":I
    :cond_3
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_4

    .line 1291
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1292
    .end local v0    # "constraintType":I
    :cond_4
    invoke-direct {v1, p0}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1293
    const/4 v0, 0x1

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1294
    .end local v0    # "constraintType":I
    :cond_5
    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->isWithinSubtree(Lsun/security/x509/X500Name;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1295
    const/4 v0, 0x2

    .restart local v0    # "constraintType":I
    goto :goto_0

    .line 1297
    .end local v0    # "constraintType":I
    :cond_6
    const/4 v0, 0x3

    .restart local v0    # "constraintType":I
    goto :goto_0
.end method

.method public emit(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 818
    invoke-virtual {p0, p1}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 817
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 3
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 827
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 828
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 829
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 831
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 826
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 394
    if-ne p0, p1, :cond_0

    .line 395
    const/4 v7, 0x1

    return v7

    .line 397
    :cond_0
    instance-of v7, p1, Lsun/security/x509/X500Name;

    if-nez v7, :cond_1

    .line 398
    return v9

    :cond_1
    move-object v2, p1

    .line 400
    check-cast v2, Lsun/security/x509/X500Name;

    .line 402
    .local v2, "other":Lsun/security/x509/X500Name;
    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 403
    iget-object v7, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    iget-object v8, v2, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7

    .line 406
    :cond_2
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v7

    .line 407
    .local v1, "n":I
    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v7, v7

    if-eq v1, v7, :cond_3

    .line 408
    return v9

    .line 410
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 411
    iget-object v7, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v4, v7, v0

    .line 412
    .local v4, "r1":Lsun/security/x509/RDN;
    iget-object v7, v2, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v5, v7, v0

    .line 413
    .local v5, "r2":Lsun/security/x509/RDN;
    iget-object v7, v4, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v7, v7

    iget-object v8, v5, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v8, v8

    if-eq v7, v8, :cond_4

    .line 414
    return v9

    .line 410
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v4    # "r1":Lsun/security/x509/RDN;
    .end local v5    # "r2":Lsun/security/x509/RDN;
    :cond_5
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "thisCanonical":Ljava/lang/String;
    invoke-virtual {v2}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "otherCanonical":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    return v7
.end method

.method public findMostSpecificAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;
    .locals 4
    .param p1, "attribute"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    const/4 v3, 0x0

    .line 765
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    .line 766
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 767
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lsun/security/x509/RDN;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v1

    .line 768
    .local v1, "value":Lsun/security/util/DerValue;
    if-eqz v1, :cond_0

    .line 769
    return-object v1

    .line 766
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    .end local v1    # "value":Lsun/security/util/DerValue;
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

    .prologue
    .line 492
    sget-object v1, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 494
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 453
    sget-object v1, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 455
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 541
    sget-object v1, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 543
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 529
    sget-object v1, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 531
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 858
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

    .prologue
    .line 840
    iget-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    if-nez v3, :cond_1

    .line 841
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 842
    .local v1, "out":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 843
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 844
    iget-object v3, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    .line 843
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 846
    :cond_0
    const/16 v3, 0x30

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 847
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/X500Name;->encoded:[B

    .line 849
    .end local v0    # "i":I
    .end local v1    # "out":Lsun/security/util/DerOutputStream;
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
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

    .prologue
    .line 589
    sget-object v1, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 591
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 565
    sget-object v1, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 567
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 601
    sget-object v1, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 603
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 577
    sget-object v1, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 579
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 505
    sget-object v1, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 507
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 742
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

    .prologue
    .line 466
    sget-object v1, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 468
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 479
    sget-object v1, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 481
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRFC1779Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
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

    .prologue
    .line 636
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    .line 641
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    .line 642
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc1779Dn:Ljava/lang/String;

    return-object v0

    .line 645
    :cond_1
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC1779DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRFC2253CanonicalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 706
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 707
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2

    .line 713
    :cond_0
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 714
    const-string/jumbo v2, ""

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 715
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2

    .line 727
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x30

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 728
    .local v0, "fullname":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 729
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 730
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    :cond_2
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lsun/security/x509/RDN;->toRFC2253String(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    .line 735
    iget-object v2, p0, Lsun/security/x509/X500Name;->canonicalDn:Ljava/lang/String;

    return-object v2
.end method

.method public getRFC2253Name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 654
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

    .prologue
    .line 665
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    .line 669
    :cond_0
    invoke-direct {p0, p1}, Lsun/security/x509/X500Name;->generateRFC2253DN(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    .line 670
    iget-object v0, p0, Lsun/security/x509/X500Name;->rfc2253Dn:Ljava/lang/String;

    return-object v0

    .line 673
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

    .prologue
    .line 517
    sget-object v1, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 519
    .local v0, "attr":Lsun/security/util/DerValue;
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

    .prologue
    .line 553
    sget-object v1, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {p0, v1}, Lsun/security/x509/X500Name;->findAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/DerValue;

    move-result-object v0

    .line 555
    .local v0, "attr":Lsun/security/util/DerValue;
    invoke-direct {p0, v0}, Lsun/security/x509/X500Name;->getString(Lsun/security/util/DerValue;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x4

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 385
    invoke-virtual {p0}, Lsun/security/x509/X500Name;->getRFC2253CanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 368
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v1, v2

    .line 369
    .local v1, "n":I
    if-nez v1, :cond_0

    .line 370
    return v4

    .line 372
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 373
    iget-object v2, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    aget-object v2, v2, v0

    iget-object v2, v2, Lsun/security/x509/RDN;->assertion:[Lsun/security/x509/AVA;

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 374
    return v3

    .line 372
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
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

    .prologue
    .line 325
    iget-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 326
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/x509/RDN;>;"
    if-nez v0, :cond_0

    .line 327
    iget-object v1, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 328
    iput-object v0, p0, Lsun/security/x509/X500Name;->rdnList:Ljava/util/List;

    .line 330
    :cond_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 337
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

    .prologue
    .line 1343
    iget-object v0, p0, Lsun/security/x509/X500Name;->names:[Lsun/security/x509/RDN;

    array-length v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 614
    invoke-direct {p0}, Lsun/security/x509/X500Name;->generateDN()V

    .line 616
    :cond_0
    iget-object v0, p0, Lsun/security/x509/X500Name;->dn:Ljava/lang/String;

    return-object v0
.end method
