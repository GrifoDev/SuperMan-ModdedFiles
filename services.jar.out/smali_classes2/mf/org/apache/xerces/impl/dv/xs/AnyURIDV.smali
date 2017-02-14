.class public Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;
.super Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;
.source "AnyURIDV.java"


# static fields
.field private static final BASE_URI:Lmf/org/apache/xerces/util/URI;

.field private static gAfterEscaping1:[C

.field private static gAfterEscaping2:[C

.field private static gHexChs:[C

.field private static gNeedEscaping:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v6, 0x2

    const/16 v4, 0x80

    const/16 v5, 0x7f

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    const-string/jumbo v3, "abc://def.ghi.jkl"

    invoke-direct {v0, v3}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    new-array v0, v4, [Z

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    new-array v0, v4, [C

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    new-array v0, v4, [C

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v0, 0x10

    new-array v0, v0, [C

    const/16 v1, 0x30

    aput-char v1, v0, v2

    const/16 v1, 0x31

    aput-char v1, v0, v7

    const/16 v1, 0x32

    aput-char v1, v0, v6

    const/4 v1, 0x3

    const/16 v3, 0x33

    aput-char v3, v0, v1

    const/4 v1, 0x4

    const/16 v3, 0x34

    aput-char v3, v0, v1

    const/4 v1, 0x5

    const/16 v3, 0x35

    aput-char v3, v0, v1

    const/4 v1, 0x6

    const/16 v3, 0x36

    aput-char v3, v0, v1

    const/4 v1, 0x7

    const/16 v3, 0x37

    aput-char v3, v0, v1

    const/16 v1, 0x8

    const/16 v3, 0x38

    aput-char v3, v0, v1

    const/16 v1, 0x9

    const/16 v3, 0x39

    aput-char v3, v0, v1

    const/16 v1, 0xa

    const/16 v3, 0x41

    aput-char v3, v0, v1

    const/16 v1, 0xb

    const/16 v3, 0x42

    aput-char v3, v0, v1

    const/16 v1, 0xc

    const/16 v3, 0x43

    aput-char v3, v0, v1

    const/16 v1, 0xd

    const/16 v3, 0x44

    aput-char v3, v0, v1

    const/16 v1, 0xe

    const/16 v3, 0x45

    aput-char v3, v0, v1

    const/16 v1, 0xf

    const/16 v3, 0x46

    aput-char v3, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    move v0, v2

    :goto_1
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v7, v1, v0

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v4, v0, 0x4

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v0

    sget-object v1, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v3, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v4, v0, 0xf

    aget-char v3, v3, v4

    int-to-char v3, v3

    aput-char v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto/16 :goto_0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v7, v0, v5

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    const/16 v1, 0x37

    aput-char v1, v0, v5

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    const/16 v1, 0x46

    aput-char v1, v0, v5

    const/16 v0, 0xb

    new-array v1, v0, [C

    const/16 v0, 0x20

    aput-char v0, v1, v2

    const/16 v0, 0x3c

    aput-char v0, v1, v7

    const/16 v0, 0x3e

    aput-char v0, v1, v6

    const/4 v0, 0x3

    const/16 v3, 0x22

    aput-char v3, v1, v0

    const/4 v0, 0x4

    const/16 v3, 0x7b

    aput-char v3, v1, v0

    const/4 v0, 0x5

    const/16 v3, 0x7d

    aput-char v3, v1, v0

    const/4 v0, 0x6

    const/16 v3, 0x7c

    aput-char v3, v1, v0

    const/4 v0, 0x7

    const/16 v3, 0x5c

    aput-char v3, v1, v0

    const/16 v0, 0x8

    const/16 v3, 0x5e

    aput-char v3, v1, v0

    const/16 v0, 0x9

    const/16 v3, 0x7e

    aput-char v3, v1, v0

    const/16 v0, 0xa

    const/16 v3, 0x60

    aput-char v3, v1, v0

    array-length v3, v1

    move v0, v2

    :goto_2
    if-ge v0, v3, :cond_1

    aget-char v2, v1, v0

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aput-boolean v7, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v6, v2, 0x4

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v6, v2, 0xf

    aget-char v5, v5, v6

    int-to-char v5, v5

    aput-char v5, v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x25

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, v0, 0x3

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x80

    if-ge v4, v5, :cond_1

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_0

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    if-lt v2, v0, :cond_3

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ne v1, v0, :cond_6

    return-object p0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    array-length v0, v2

    :goto_2
    if-ge v1, v0, :cond_2

    aget-byte v4, v2, v1

    if-ltz v4, :cond_4

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gNeedEscaping:[Z

    aget-boolean v5, v5, v4

    if-nez v5, :cond_5

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    return-object p0

    :cond_4
    add-int/lit16 v4, v4, 0x100

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    shr-int/lit8 v6, v4, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gHexChs:[C

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping1:[C

    aget-char v5, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v5, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->gAfterEscaping2:[C

    aget-char v4, v5, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {p1}, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/util/URI;

    sget-object v2, Lmf/org/apache/xerces/impl/dv/xs/AnyURIDV;->BASE_URI:Lmf/org/apache/xerces/util/URI;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/util/URI;-><init>(Lmf/org/apache/xerces/util/URI;Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string/jumbo v1, "cvc-datatype-valid.1.2.1"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "anyURI"

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getAllowedFacets()S
    .locals 1

    const/16 v0, 0x81f

    return v0
.end method
