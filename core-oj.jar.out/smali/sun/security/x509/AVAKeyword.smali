.class Lsun/security/x509/AVAKeyword;
.super Ljava/lang/Object;
.source "AVA.java"


# static fields
.field private static final keywordMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field

.field private static final oidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/x509/AVAKeyword;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private keyword:Ljava/lang/String;

.field private oid:Lsun/security/util/ObjectIdentifier;

.field private rfc1779Compliant:Z

.field private rfc2253Compliant:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1367
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    .line 1368
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    .line 1372
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "CN"

    sget-object v2, Lsun/security/x509/X500Name;->commonName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1373
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "C"

    sget-object v2, Lsun/security/x509/X500Name;->countryName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1374
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "L"

    sget-object v2, Lsun/security/x509/X500Name;->localityName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1375
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "S"

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1376
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "ST"

    sget-object v2, Lsun/security/x509/X500Name;->stateName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1377
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "O"

    sget-object v2, Lsun/security/x509/X500Name;->orgName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1378
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "OU"

    sget-object v2, Lsun/security/x509/X500Name;->orgUnitName_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1379
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "T"

    sget-object v2, Lsun/security/x509/X500Name;->title_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1380
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "IP"

    sget-object v2, Lsun/security/x509/X500Name;->ipAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1381
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "STREET"

    sget-object v2, Lsun/security/x509/X500Name;->streetAddress_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v4, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1382
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "DC"

    sget-object v2, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1384
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "DNQUALIFIER"

    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1385
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "DNQ"

    sget-object v2, Lsun/security/x509/X500Name;->DNQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1386
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "SURNAME"

    sget-object v2, Lsun/security/x509/X500Name;->SURNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1387
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "GIVENNAME"

    sget-object v2, Lsun/security/x509/X500Name;->GIVENNAME_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1388
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "INITIALS"

    sget-object v2, Lsun/security/x509/X500Name;->INITIALS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1389
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "GENERATION"

    sget-object v2, Lsun/security/x509/X500Name;->GENERATIONQUALIFIER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1391
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "EMAIL"

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1392
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "EMAILADDRESS"

    sget-object v2, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1394
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "UID"

    sget-object v2, Lsun/security/x509/X500Name;->userid_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v4}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1395
    new-instance v0, Lsun/security/x509/AVAKeyword;

    const-string/jumbo v1, "SERIALNUMBER"

    sget-object v2, Lsun/security/x509/X500Name;->SERIALNUMBER_OID:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v0, v1, v2, v3, v3}, Lsun/security/x509/AVAKeyword;-><init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V

    .line 1190
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lsun/security/util/ObjectIdentifier;ZZ)V
    .locals 1
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p3, "rfc1779Compliant"    # Z
    .param p4, "rfc2253Compliant"    # Z

    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    iput-object p1, p0, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    .line 1202
    iput-object p2, p0, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    .line 1203
    iput-boolean p3, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    .line 1204
    iput-boolean p4, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    .line 1207
    sget-object v0, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    return-void
.end method

.method static getKeyword(Lsun/security/util/ObjectIdentifier;I)Ljava/lang/String;
    .locals 1
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    .prologue
    .line 1307
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 1306
    invoke-static {p0, p1, v0}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;
    .locals 11
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lsun/security/util/ObjectIdentifier;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "extraOidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v10, 0x7a

    const/16 v9, 0x61

    const/16 v8, 0x5a

    const/16 v7, 0x41

    const/4 v6, 0x0

    .line 1320
    invoke-virtual {p0}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1321
    .local v4, "oidString":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1322
    .local v3, "keywordString":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1323
    sget-object v5, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AVAKeyword;

    .line 1324
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v0, :cond_a

    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1325
    iget-object v5, v0, Lsun/security/x509/AVAKeyword;->keyword:Ljava/lang/String;

    return-object v5

    .line 1328
    .end local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 1329
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "keyword cannot be empty"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1331
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 1332
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1333
    .local v1, "c":C
    if-lt v1, v7, :cond_2

    if-le v1, v10, :cond_3

    .line 1334
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1335
    const-string/jumbo v6, "keyword does not start with letter"

    .line 1334
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1333
    :cond_3
    if-le v1, v8, :cond_4

    if-lt v1, v9, :cond_2

    .line 1337
    :cond_4
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_9

    .line 1338
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1339
    if-lt v1, v7, :cond_5

    if-le v1, v10, :cond_7

    .line 1340
    :cond_5
    const/16 v5, 0x30

    if-lt v1, v5, :cond_6

    const/16 v5, 0x39

    if-le v1, v5, :cond_8

    :cond_6
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_8

    .line 1341
    new-instance v5, Ljava/lang/IllegalArgumentException;

    .line 1342
    const-string/jumbo v6, "keyword character is not a letter, digit, or underscore"

    .line 1341
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1339
    :cond_7
    if-le v1, v8, :cond_8

    if-lt v1, v9, :cond_5

    .line 1337
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1345
    :cond_9
    return-object v3

    .line 1348
    .end local v1    # "c":C
    .end local v2    # "i":I
    .restart local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_a
    const/4 v5, 0x3

    if-ne p1, v5, :cond_b

    .line 1349
    return-object v4

    .line 1351
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OID."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static getOID(Ljava/lang/String;I)Lsun/security/util/ObjectIdentifier;
    .locals 1
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 1233
    invoke-static {p0, p1, v0}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    return-object v0
.end method

.method static getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;
    .locals 7
    .param p0, "keyword"    # Ljava/lang/String;
    .param p1, "standard"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lsun/security/util/ObjectIdentifier;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "extraKeywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1252
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1253
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 1254
    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1255
    :cond_0
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid leading or trailing space in keyword \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1256
    const-string/jumbo v6, "\""

    .line 1255
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1259
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1264
    :cond_2
    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1265
    .local v3, "oidString":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1266
    sget-object v4, Lsun/security/x509/AVAKeyword;->keywordMap:Ljava/util/Map;

    invoke-interface {v4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AVAKeyword;

    .line 1267
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-eqz v0, :cond_4

    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1268
    iget-object v4, v0, Lsun/security/x509/AVAKeyword;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v4

    .line 1271
    .end local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_3
    new-instance v4, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v4, v3}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1277
    .restart local v0    # "ak":Lsun/security/x509/AVAKeyword;
    :cond_4
    const/4 v4, 0x2

    if-ne p1, v4, :cond_8

    .line 1278
    const-string/jumbo v4, "OID."

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1279
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid RFC1779 keyword: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1281
    :cond_5
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1287
    :cond_6
    :goto_0
    const/4 v2, 0x0

    .line 1288
    .local v2, "number":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1289
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1290
    .local v1, "ch":C
    const/16 v4, 0x30

    if-lt v1, v4, :cond_7

    const/16 v4, 0x39

    if-gt v1, v4, :cond_7

    .line 1291
    const/4 v2, 0x1

    .line 1294
    .end local v1    # "ch":C
    :cond_7
    if-nez v2, :cond_9

    .line 1295
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid keyword \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1282
    .end local v2    # "number":Z
    :cond_8
    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    .line 1283
    const-string/jumbo v4, "OID."

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1284
    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1297
    .restart local v2    # "number":Z
    :cond_9
    new-instance v4, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v4, p0}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method static hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z
    .locals 2
    .param p0, "oid"    # Lsun/security/util/ObjectIdentifier;
    .param p1, "standard"    # I

    .prologue
    .line 1359
    sget-object v1, Lsun/security/x509/AVAKeyword;->oidMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/AVAKeyword;

    .line 1360
    .local v0, "ak":Lsun/security/x509/AVAKeyword;
    if-nez v0, :cond_0

    .line 1361
    const/4 v1, 0x0

    return v1

    .line 1363
    :cond_0
    invoke-direct {v0, p1}, Lsun/security/x509/AVAKeyword;->isCompliant(I)Z

    move-result v1

    return v1
.end method

.method private isCompliant(I)Z
    .locals 3
    .param p1, "standard"    # I

    .prologue
    .line 1212
    packed-switch p1, :pswitch_data_0

    .line 1221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid standard "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :pswitch_0
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc1779Compliant:Z

    return v0

    .line 1216
    :pswitch_1
    iget-boolean v0, p0, Lsun/security/x509/AVAKeyword;->rfc2253Compliant:Z

    return v0

    .line 1218
    :pswitch_2
    const/4 v0, 0x1

    return v0

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
