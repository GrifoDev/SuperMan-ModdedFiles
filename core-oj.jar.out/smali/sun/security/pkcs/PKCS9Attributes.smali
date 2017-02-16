.class public Lsun/security/pkcs/PKCS9Attributes;
.super Ljava/lang/Object;
.source "PKCS9Attributes.java"


# instance fields
.field private final attributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/pkcs/PKCS9Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private final derEncoding:[B

.field private ignoreUnsupportedAttributes:Z

.field private final permittedAttributes:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lsun/security/util/ObjectIdentifier;",
            "Lsun/security/util/ObjectIdentifier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/pkcs/PKCS9Attributes;-><init>(Lsun/security/util/DerInputStream;Z)V

    .line 115
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;Z)V
    .locals 2
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .param p2, "ignoreUnsupportedAttributes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 46
    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 138
    iput-boolean p2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 140
    invoke-direct {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 136
    return-void
.end method

.method public constructor <init>([Lsun/security/pkcs/PKCS9Attribute;)V
    .locals 5
    .param p1, "attribs"    # [Lsun/security/pkcs/PKCS9Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v2, Ljava/util/Hashtable;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/Hashtable;-><init>(I)V

    .line 46
    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v2, 0x0

    iput-boolean v2, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 161
    aget-object v2, p1, v0

    invoke-virtual {v2}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    .line 162
    .local v1, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "PKCSAttribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v0

    invoke-virtual {v4}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 165
    const-string/jumbo v4, " duplicated while constructing "

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 166
    const-string/jumbo v4, "PKCS9Attributes."

    .line 164
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 168
    :cond_0
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    aget-object v3, p1, v0

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    .end local v1    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_1
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 171
    const/4 v2, 0x0

    iput-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 158
    return-void
.end method

.method public constructor <init>([Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerInputStream;)V
    .locals 4
    .param p1, "permittedAttributes"    # [Lsun/security/util/ObjectIdentifier;
    .param p2, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Ljava/util/Hashtable;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 46
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    .line 64
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    .line 86
    if-eqz p1, :cond_0

    .line 88
    new-instance v1, Ljava/util/Hashtable;

    .line 89
    array-length v2, p1

    .line 88
    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 87
    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 92
    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    aget-object v2, p1, v0

    .line 93
    aget-object v3, p1, v0

    .line 92
    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 95
    .end local v0    # "i":I
    :cond_0
    iput-object v3, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    .line 99
    :cond_1
    invoke-direct {p0, p2}, Lsun/security/pkcs/PKCS9Attributes;->decode(Lsun/security/util/DerInputStream;)[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    .line 85
    return-void
.end method

.method static castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;
    .locals 3
    .param p0, "objs"    # [Ljava/lang/Object;

    .prologue
    .line 358
    array-length v2, p0

    new-array v0, v2, [Lsun/security/util/DerEncoder;

    .line 360
    .local v0, "encoders":[Lsun/security/util/DerEncoder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 361
    aget-object v2, p0, v1

    check-cast v2, Lsun/security/util/DerEncoder;

    aput-object v2, v0, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    :cond_0
    return-object v0
.end method

.method private decode(Lsun/security/util/DerInputStream;)[B
    .locals 12
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v8

    .line 191
    .local v8, "val":Lsun/security/util/DerValue;
    invoke-virtual {v8}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v1

    .line 192
    .local v1, "derEncoding":[B
    const/16 v9, 0x31

    const/4 v10, 0x0

    aput-byte v9, v1, v10

    .line 194
    new-instance v2, Lsun/security/util/DerInputStream;

    invoke-direct {v2, v1}, Lsun/security/util/DerInputStream;-><init>([B)V

    .line 195
    .local v2, "derIn":Lsun/security/util/DerInputStream;
    const/4 v9, 0x3

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Lsun/security/util/DerInputStream;->getSet(IZ)[Lsun/security/util/DerValue;

    move-result-object v3

    .line 199
    .local v3, "derVals":[Lsun/security/util/DerValue;
    const/4 v7, 0x1

    .line 201
    .local v7, "reuseEncoding":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, v3

    if-ge v5, v9, :cond_4

    .line 204
    :try_start_0
    new-instance v0, Lsun/security/pkcs/PKCS9Attribute;

    aget-object v9, v3, v5

    invoke-direct {v0, v9}, Lsun/security/pkcs/PKCS9Attribute;-><init>(Lsun/security/util/DerValue;)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .local v0, "attrib":Lsun/security/pkcs/PKCS9Attribute;
    invoke-virtual {v0}, Lsun/security/pkcs/PKCS9Attribute;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v6

    .line 216
    .local v6, "oid":Lsun/security/util/ObjectIdentifier;
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 217
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Duplicate PKCS9 attribute: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 206
    .end local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Lsun/security/pkcs/ParsingException;
    iget-boolean v9, p0, Lsun/security/pkcs/PKCS9Attributes;->ignoreUnsupportedAttributes:Z

    if-eqz v9, :cond_0

    .line 208
    const/4 v7, 0x0

    .line 201
    .end local v4    # "e":Lsun/security/pkcs/ParsingException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    .restart local v4    # "e":Lsun/security/pkcs/ParsingException;
    :cond_0
    throw v4

    .line 219
    .end local v4    # "e":Lsun/security/pkcs/ParsingException;
    .restart local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .restart local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_1
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    if-eqz v9, :cond_2

    .line 220
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->permittedAttributes:Ljava/util/Hashtable;

    invoke-virtual {v9, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 224
    :cond_2
    iget-object v9, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v9, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 221
    :cond_3
    new-instance v9, Ljava/io/IOException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Attribute "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 222
    const-string/jumbo v11, " not permitted in this attribute set"

    .line 221
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 226
    .end local v0    # "attrib":Lsun/security/pkcs/PKCS9Attribute;
    .end local v6    # "oid":Lsun/security/util/ObjectIdentifier;
    :cond_4
    if-eqz v7, :cond_5

    .end local v1    # "derEncoding":[B
    :goto_2
    return-object v1

    .restart local v1    # "derEncoding":[B
    :cond_5
    invoke-direct {p0}, Lsun/security/pkcs/PKCS9Attributes;->generateDerEncoding()[B

    move-result-object v1

    goto :goto_2
.end method

.method private generateDerEncoding()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 245
    .local v1, "out":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, "attribVals":[Ljava/lang/Object;
    invoke-static {v0}, Lsun/security/pkcs/PKCS9Attributes;->castToDerEncoder([Ljava/lang/Object;)[Lsun/security/util/DerEncoder;

    move-result-object v2

    .line 247
    const/16 v3, 0x31

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->putOrderedSetOf(B[Lsun/security/util/DerEncoder;)V

    .line 249
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public encode(BLjava/io/OutputStream;)V
    .locals 3
    .param p1, "tag"    # B
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    iget-object v1, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 238
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;
    .locals 1
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;

    .prologue
    .line 265
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/pkcs/PKCS9Attribute;

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-static {p1}, Lsun/security/pkcs/PKCS9Attribute;->getOID(Ljava/lang/String;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    .line 314
    .local v0, "oid":Lsun/security/util/ObjectIdentifier;
    if-nez v0, :cond_0

    .line 315
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 316
    const-string/jumbo v3, " not recognized or not supported."

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 318
    :cond_0
    invoke-virtual {p0, v0}, Lsun/security/pkcs/PKCS9Attributes;->getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeValue(Lsun/security/util/ObjectIdentifier;)Ljava/lang/Object;
    .locals 5
    .param p1, "oid"    # Lsun/security/util/ObjectIdentifier;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 300
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/pkcs/PKCS9Attribute;->getValue()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    .local v1, "value":Ljava/lang/Object;
    return-object v1

    .line 302
    .end local v1    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 303
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No value found for attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAttributes()[Lsun/security/pkcs/PKCS9Attribute;
    .locals 4

    .prologue
    .line 280
    iget-object v3, p0, Lsun/security/pkcs/PKCS9Attributes;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    move-result v3

    new-array v0, v3, [Lsun/security/pkcs/PKCS9Attribute;

    .line 283
    .local v0, "attribs":[Lsun/security/pkcs/PKCS9Attribute;
    const/4 v2, 0x0

    .line 284
    .local v2, "j":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 285
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 286
    sget-object v3, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v3, v3, v1

    invoke-virtual {p0, v3}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    aput-object v3, v0, v2

    .line 288
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 289
    add-int/lit8 v2, v2, 0x1

    .line 285
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    return-object v0
.end method

.method public getDerEncoding()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lsun/security/pkcs/PKCS9Attributes;->derEncoding:[B

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 326
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v4, 0xc8

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 327
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "PKCS9 Attributes: [\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const/4 v1, 0x1

    .line 333
    .local v1, "first":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 334
    sget-object v4, Lsun/security/pkcs/PKCS9Attribute;->PKCS9_OIDS:[Lsun/security/util/ObjectIdentifier;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lsun/security/pkcs/PKCS9Attributes;->getAttribute(Lsun/security/util/ObjectIdentifier;)Lsun/security/pkcs/PKCS9Attribute;

    move-result-object v3

    .line 336
    .local v3, "value":Lsun/security/pkcs/PKCS9Attribute;
    if-nez v3, :cond_0

    .line 333
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :cond_0
    if-eqz v1, :cond_1

    .line 340
    const/4 v1, 0x0

    .line 344
    :goto_2
    invoke-virtual {v3}, Lsun/security/pkcs/PKCS9Attribute;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 342
    :cond_1
    const-string/jumbo v4, ";\n\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 347
    .end local v3    # "value":Lsun/security/pkcs/PKCS9Attribute;
    :cond_2
    const-string/jumbo v4, "\n\t] (end PKCS9 Attributes)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
