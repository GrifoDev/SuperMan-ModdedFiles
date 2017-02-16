.class public Lsun/security/x509/AVA;
.super Ljava/lang/Object;
.source "AVA.java"

# interfaces
.implements Lsun/security/util/DerEncoder;


# static fields
.field static final DEFAULT:I = 0x1

.field private static final PRESERVE_OLD_DC_ENCODING:Z

.field static final RFC1779:I = 0x2

.field static final RFC2253:I = 0x3

.field private static final debug:Lsun/security/util/Debug;

.field private static final hexDigits:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final specialChars:Ljava/lang/String; = ",+=\n<>#;"

.field private static final specialChars2253:Ljava/lang/String; = ",+\"\\<>;"

.field private static final specialCharsAll:Ljava/lang/String; = ",=\n+<>#;\\\" "


# instance fields
.field final oid:Lsun/security/util/ObjectIdentifier;

.field final value:Lsun/security/util/DerValue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string/jumbo v0, "x509"

    const-string/jumbo v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    .line 69
    new-instance v0, Lsun/security/action/GetBooleanAction;

    .line 70
    const-string/jumbo v1, "com.sun.security.preserveOldDCEncoding"

    .line 69
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 68
    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    .line 132
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 155
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .locals 5
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "I",
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
    .local p3, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v4, 0x20

    const/4 v3, 0x3

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .local v1, "temp":Ljava/lang/StringBuilder;
    :goto_0
    const-string/jumbo v2, "Incorrect AVA format"

    invoke-static {p1, v2}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 187
    .local v0, "c":I
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 200
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    if-ne p2, v3, :cond_1

    .line 203
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 204
    if-ne v0, v4, :cond_2

    .line 205
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 190
    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 212
    if-eq v0, v4, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    .line 214
    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 216
    new-instance v2, Lsun/security/util/DerValue;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 217
    return-void

    .line 220
    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    .line 221
    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 175
    :goto_1
    return-void

    .line 222
    :cond_4
    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    if-eq p2, v3, :cond_5

    .line 223
    invoke-direct {p0, p1, v1}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1

    .line 225
    :cond_5
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
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
    .line 146
    .local p2, "keywordMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    .line 145
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 633
    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    .line 632
    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .param p1, "derval"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 621
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 624
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 626
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 628
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    .line 627
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1
    .param p1, "type"    # Lsun/security/util/ObjectIdentifier;
    .param p2, "val"    # Lsun/security/util/DerValue;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 119
    :cond_1
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    .line 120
    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    .line 115
    return-void
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .locals 6
    .param p0, "c1"    # I
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x10

    .line 533
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 534
    const-string/jumbo v3, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v3}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 537
    .local v0, "c2":I
    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 538
    int-to-char v3, p0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 539
    .local v1, "hi":I
    int-to-char v3, v0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 540
    .local v2, "lo":I
    new-instance v3, Ljava/lang/Byte;

    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    return-object v3

    .line 542
    .end local v1    # "hi":I
    .end local v2    # "lo":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    .line 543
    const-string/jumbo v4, "escaped hex value must include two valid digits"

    .line 542
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 546
    .end local v0    # "c2":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 551
    .local p0, "hexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 552
    .local v2, "n":I
    new-array v0, v2, [B

    .line 553
    .local v0, "hexBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 554
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private static isDerString(Lsun/security/util/DerValue;Z)Z
    .locals 3
    .param p0, "value"    # Lsun/security/util/DerValue;
    .param p1, "canonical"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1027
    if-eqz p1, :cond_0

    .line 1028
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_0

    .line 1033
    return v1

    .line 1031
    :sswitch_0
    return v2

    .line 1036
    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_1

    .line 1045
    return v1

    .line 1043
    :sswitch_1
    return v2

    .line 1028
    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

    .line 1036
    :sswitch_data_1
    .sparse-switch
        0xc -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x1b -> :sswitch_1
        0x1e -> :sswitch_1
    .end sparse-switch
.end method

.method private static isTerminator(II)Z
    .locals 3
    .param p0, "ch"    # I
    .param p1, "format"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 560
    sparse-switch p0, :sswitch_data_0

    .line 569
    return v1

    .line 564
    :sswitch_0
    return v0

    .line 567
    :sswitch_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 560
    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_1
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method private static parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;
    .locals 10
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    .line 266
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 267
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .line 268
    .local v0, "b":B
    const/4 v3, 0x0

    .line 270
    .end local v0    # "b":B
    .local v3, "cNdx":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 272
    .local v2, "c":I
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 304
    :cond_0
    if-nez v3, :cond_7

    .line 305
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, zero hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_1
    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_4

    .line 279
    :cond_2
    :goto_1
    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_3

    .line 280
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 282
    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 283
    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 287
    :cond_4
    const-string/jumbo v5, "0123456789ABCDEF"

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 289
    .local v4, "cVal":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 290
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AVA parse, invalid hex digit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 291
    int-to-char v7, v2

    .line 290
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 294
    :cond_5
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_6

    .line 295
    mul-int/lit8 v5, v0, 0x10

    int-to-byte v6, v4

    add-int/2addr v5, v6

    int-to-byte v0, v5

    .line 296
    .local v0, "b":B
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 300
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "b":B
    :cond_6
    int-to-byte v0, v4

    .restart local v0    # "b":B
    goto :goto_2

    .line 309
    .end local v0    # "b":B
    .end local v4    # "cVal":I
    :cond_7
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_8

    .line 310
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, odd number of hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>([B)V

    return-object v5
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 9
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x5c

    const/16 v7, 0x22

    .line 324
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 326
    .local v0, "c":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 327
    .local v1, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v4, 0x1

    .line 328
    :goto_0
    if-eq v0, v7, :cond_3

    .line 329
    if-ne v0, v8, :cond_1

    .line 330
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {v0, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_0

    .line 337
    const/4 v4, 0x0

    .line 341
    .local v4, "isPrintableString":Z
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    .line 346
    .end local v4    # "isPrintableString":Z
    :cond_0
    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    .line 347
    const-string/jumbo v5, ",+=\n<>#;"

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 348
    new-instance v5, Ljava/io/IOException;

    .line 349
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid escaped character in AVA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 350
    int-to-char v7, v0

    .line 349
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 348
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 356
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 357
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 362
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_2
    int-to-char v5, v0

    invoke-static {v5}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v5

    and-int/2addr v4, v5

    .line 363
    .local v4, "isPrintableString":Z
    int-to-char v5, v0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 368
    .end local v4    # "isPrintableString":Z
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 369
    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 370
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 375
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    .line 376
    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    .line 377
    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    .line 378
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 384
    :cond_5
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 385
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 386
    sget-boolean v5, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v5, :cond_7

    .line 388
    :cond_6
    new-instance v5, Lsun/security/util/DerValue;

    .line 389
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 388
    const/16 v7, 0x16

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5

    .line 390
    :cond_7
    if-eqz v4, :cond_8

    .line 391
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v5

    .line 393
    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    .line 394
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 393
    const/16 v7, 0xc

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 11
    .param p1, "in"    # Ljava/io/Reader;
    .param p2, "c"    # I
    .param p3, "format"    # I
    .param p4, "temp"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "embeddedHex":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v5, 0x1

    .line 403
    .local v5, "isPrintableString":Z
    const/4 v1, 0x0

    .line 404
    .local v1, "escape":Z
    const/4 v6, 0x1

    .line 405
    .local v6, "leadingChar":Z
    const/4 v7, 0x0

    .line 407
    .end local v5    # "isPrintableString":Z
    .local v7, "spaceCount":I
    :cond_0
    const/4 v1, 0x0

    .line 408
    const/16 v8, 0x5c

    if-ne p2, v8, :cond_9

    .line 409
    const/4 v1, 0x1

    .line 410
    const-string/jumbo v8, "Invalid trailing backslash"

    invoke-static {p1, v8}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result p2

    .line 413
    const/4 v2, 0x0

    .line 414
    .local v2, "hexByte":Ljava/lang/Byte;
    invoke-static {p2, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    .local v2, "hexByte":Ljava/lang/Byte;
    if-eqz v2, :cond_1

    .line 417
    const/4 v5, 0x0

    .line 421
    .restart local v5    # "isPrintableString":Z
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 423
    const/4 v6, 0x0

    .line 502
    .end local v2    # "hexByte":Ljava/lang/Byte;
    .end local v5    # "isPrintableString":Z
    :goto_0
    invoke-static {p2, p3}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 504
    const/4 v8, 0x3

    if-ne p3, v8, :cond_e

    if-lez v7, :cond_e

    .line 505
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 428
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_1
    const/4 v8, 0x1

    if-ne p3, v8, :cond_3

    .line 429
    const-string/jumbo v8, ",=\n+<>#;\\\" "

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 434
    :cond_2
    new-instance v8, Ljava/io/IOException;

    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 436
    int-to-char v10, p2

    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 436
    const-string/jumbo v10, "\'"

    .line 435
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 434
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 430
    :cond_3
    const/4 v8, 0x2

    if-ne p3, v8, :cond_4

    .line 431
    const-string/jumbo v8, ",+=\n<>#;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 432
    const/16 v8, 0x5c

    if-eq p2, v8, :cond_4

    const/16 v8, 0x22

    if-ne p2, v8, :cond_2

    .line 438
    :cond_4
    const/4 v8, 0x3

    if-ne p3, v8, :cond_5

    .line 439
    const/16 v8, 0x20

    if-ne p2, v8, :cond_7

    .line 441
    if-nez v6, :cond_5

    invoke-static {p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 474
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b

    .line 476
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v7, :cond_a

    .line 477
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 442
    .end local v4    # "i":I
    .restart local v2    # "hexByte":Ljava/lang/Byte;
    :cond_6
    new-instance v8, Ljava/io/IOException;

    .line 443
    const-string/jumbo v9, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    .line 442
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 447
    :cond_7
    const/16 v8, 0x23

    if-ne p2, v8, :cond_8

    .line 449
    if-nez v6, :cond_5

    .line 450
    new-instance v8, Ljava/io/IOException;

    .line 451
    const-string/jumbo v9, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    .line 450
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 454
    :cond_8
    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 455
    new-instance v8, Ljava/io/IOException;

    .line 456
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 457
    int-to-char v10, p2

    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 457
    const-string/jumbo v10, "\'"

    .line 456
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 455
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 464
    .end local v2    # "hexByte":Ljava/lang/Byte;
    :cond_9
    const/4 v8, 0x3

    if-ne p3, v8, :cond_5

    .line 465
    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    .line 466
    new-instance v8, Ljava/io/IOException;

    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 468
    const-string/jumbo v10, "\' in AVA appears without escape"

    .line 467
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 466
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 479
    .restart local v4    # "i":I
    :cond_a
    const/4 v7, 0x0

    .line 481
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 487
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_b
    int-to-char v8, p2

    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v8

    and-int/2addr v5, v8

    .line 488
    .local v5, "isPrintableString":Z
    const/16 v8, 0x20

    if-ne p2, v8, :cond_c

    if-nez v1, :cond_c

    .line 491
    add-int/lit8 v7, v7, 0x1

    .line 500
    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    .line 501
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 494
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v7, :cond_d

    .line 495
    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 497
    :cond_d
    const/4 v7, 0x0

    .line 498
    int-to-char v8, p2

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 510
    .end local v4    # "i":I
    .end local v5    # "isPrintableString":Z
    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    .line 511
    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 512
    .restart local v3    # "hexString":Ljava/lang/String;
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 518
    .end local v3    # "hexString":Ljava/lang/String;
    :cond_f
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-nez v8, :cond_10

    .line 519
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 520
    sget-boolean v8, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v8, :cond_11

    .line 522
    :cond_10
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x16

    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v8

    .line 523
    :cond_11
    if-eqz v5, :cond_12

    .line 524
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v8

    .line 526
    :cond_12
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0xc

    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v8
.end method

.method private static readChar(Ljava/io/Reader;Ljava/lang/String;)I
    .locals 2
    .param p0, "in"    # Ljava/io/Reader;
    .param p1, "errMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 574
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 575
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 576
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    return v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 684
    .local p2, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    .line 1060
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1062
    .local v13, "retval":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v16

    .line 1068
    .local v16, "valStr":Ljava/lang/String;
    if-nez v16, :cond_0

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    .line 1077
    .local v4, "data":[B
    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_13

    .line 1079
    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1080
    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1078
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1085
    .end local v4    # "data":[B
    .end local v8    # "i":I
    :cond_0
    const/4 v12, 0x0

    .line 1086
    .local v12, "quoteNeeded":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1087
    .local v14, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .line 1088
    .local v11, "previousWhite":Z
    const-string/jumbo v6, ",+=\n<>#;\\\""

    .line 1095
    .local v6, "escapees":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

    .line 1097
    .local v10, "length":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_4

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1098
    add-int/lit8 v18, v10, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v2, 0x1

    .line 1100
    .local v2, "alreadyQuoted":Z
    :goto_1
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_2
    if-ge v8, v10, :cond_10

    .line 1101
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1102
    .local v3, "c":C
    if-eqz v2, :cond_5

    if-eqz v8, :cond_1

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 1103
    :cond_1
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1100
    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1098
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v8    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "alreadyQuoted":Z
    goto :goto_1

    .line 1097
    .end local v2    # "alreadyQuoted":Z
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "alreadyQuoted":Z
    goto :goto_1

    .line 1106
    .restart local v3    # "c":C
    .restart local v8    # "i":I
    :cond_5
    invoke-static {v3}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_6

    .line 1107
    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_e

    .line 1110
    :cond_6
    if-nez v12, :cond_8

    .line 1111
    if-nez v8, :cond_b

    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v3, v0, :cond_b

    .line 1113
    :cond_7
    :goto_4
    const/4 v12, 0x1

    .line 1117
    :cond_8
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    .line 1119
    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v3, v0, :cond_9

    const/16 v18, 0x5c

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    .line 1120
    :cond_9
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1122
    :cond_a
    const/4 v11, 0x0

    .line 1130
    :goto_5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1176
    .end local v2    # "alreadyQuoted":Z
    .end local v3    # "c":C
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 1177
    .local v5, "e":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 1112
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "alreadyQuoted":Z
    .restart local v3    # "c":C
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_b
    :try_start_1
    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_8

    goto :goto_4

    .line 1124
    :cond_c
    if-nez v12, :cond_d

    if-eqz v11, :cond_d

    .line 1125
    const/4 v12, 0x1

    .line 1127
    :cond_d
    const/4 v11, 0x1

    goto :goto_5

    .line 1132
    :cond_e
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_f

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1137
    const/4 v11, 0x0

    .line 1141
    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    .line 1142
    .local v17, "valueBytes":[B
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    .line 1143
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1145
    aget-byte v18, v17, v9

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 1144
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 1146
    .local v7, "hexChar":C
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1148
    aget-byte v18, v17, v9

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 1147
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    .line 1149
    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1142
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1155
    .end local v7    # "hexChar":C
    .end local v9    # "j":I
    .end local v17    # "valueBytes":[B
    :cond_f
    const/4 v11, 0x0

    .line 1156
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1161
    .end local v3    # "c":C
    :cond_10
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_12

    .line 1162
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    .line 1163
    .local v15, "trailChar":C
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v15, v0, :cond_11

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v15, v0, :cond_12

    .line 1164
    :cond_11
    const/4 v12, 0x1

    .line 1170
    .end local v15    # "trailChar":C
    :cond_12
    if-nez v2, :cond_14

    if-eqz v12, :cond_14

    .line 1171
    const-string/jumbo v18, "\""

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1180
    .end local v2    # "alreadyQuoted":Z
    .end local v6    # "escapees":Ljava/lang/String;
    .end local v10    # "length":I
    .end local v11    # "previousWhite":Z
    .end local v12    # "quoteNeeded":Z
    .end local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_13
    :goto_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

    .line 1173
    .restart local v2    # "alreadyQuoted":Z
    .restart local v6    # "escapees":Ljava/lang/String;
    .restart local v10    # "length":I
    .restart local v11    # "previousWhite":Z
    .restart local v12    # "quoteNeeded":Z
    .restart local v14    # "sbuffer":Ljava/lang/StringBuilder;
    :cond_14
    :try_start_2
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7
.end method

.method private static trailingSpace(Ljava/io/Reader;)Z
    .locals 5
    .param p0, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    .line 583
    const/4 v2, 0x0

    .line 585
    .local v2, "trailing":Z
    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    const/4 v3, 0x1

    return v3

    .line 592
    :cond_0
    const/16 v3, 0x270f

    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    .line 594
    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    .line 595
    .local v1, "nextChar":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 596
    const/4 v2, 0x1

    .line 612
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    .line 613
    return v2

    .line 598
    :cond_2
    if-eq v1, v4, :cond_1

    .line 600
    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    .line 601
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    .line 602
    .local v0, "followingChar":I
    if-eq v0, v4, :cond_1

    .line 603
    const/4 v2, 0x0

    .line 604
    goto :goto_0

    .line 607
    .end local v0    # "followingChar":I
    :cond_3
    const/4 v2, 0x0

    .line 608
    goto :goto_0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 675
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 677
    .local v1, "tmp2":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    .line 678
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    .line 679
    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 680
    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 673
    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 661
    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    .line 660
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 637
    if-ne p0, p1, :cond_0

    .line 638
    const/4 v1, 0x1

    return v1

    .line 640
    :cond_0
    instance-of v1, p1, Lsun/security/x509/AVA;

    if-nez v1, :cond_1

    .line 641
    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    .line 643
    check-cast v0, Lsun/security/x509/AVA;

    .line 644
    .local v0, "other":Lsun/security/x509/AVA;
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    .line 645
    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 251
    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "s":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 253
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "AVA string is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v1    # "s":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AVA error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "s":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method hasRFC2253Keyword()Z
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 654
    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC1779String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC1779String(Ljava/util/Map;)Ljava/lang/String;
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
    .line 712
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .locals 15

    .prologue
    .line 890
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v10, "typeAndValue":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {p0, v14, v13}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 891
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 904
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-gt v13, v14, :cond_1

    .line 907
    :cond_0
    const/4 v3, 0x0

    .line 909
    .local v3, "data":[B
    :try_start_0
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 913
    .local v3, "data":[B
    const/16 v13, 0x23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    array-length v13, v3

    if-ge v7, v13, :cond_c

    .line 915
    aget-byte v0, v3, v7

    .line 916
    .local v0, "b":B
    ushr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 917
    and-int/lit8 v13, v0, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 914
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 905
    .end local v0    # "b":B
    .end local v3    # "data":[B
    .end local v7    # "j":I
    :cond_1
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v13

    if-nez v13, :cond_2

    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    iget-byte v13, v13, Lsun/security/util/DerValue;->tag:B

    const/16 v14, 0x14

    if-ne v13, v14, :cond_0

    .line 928
    :cond_2
    const/4 v11, 0x0

    .line 930
    .local v11, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v11, Ljava/lang/String;

    .end local v11    # "valStr":Ljava/lang/String;
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 953
    .local v11, "valStr":Ljava/lang/String;
    const-string/jumbo v4, ",+<>;\"\\"

    .line 954
    .local v4, "escapees":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    .local v9, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 957
    .local v8, "previousWhite":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_b

    .line 958
    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 960
    .local v1, "c":C
    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v13

    if-nez v13, :cond_3

    .line 961
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_6

    .line 965
    :cond_3
    if-nez v5, :cond_8

    const/16 v13, 0x23

    if-ne v1, v13, :cond_8

    .line 966
    :goto_2
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 970
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_9

    .line 971
    const/4 v8, 0x0

    .line 972
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 957
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 910
    .end local v1    # "c":C
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    .local v3, "data":[B
    :catch_0
    move-exception v6

    .line 911
    .local v6, "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 931
    .end local v3    # "data":[B
    .end local v6    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v6

    .line 932
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 962
    .end local v6    # "ie":Ljava/io/IOException;
    .restart local v1    # "c":C
    .restart local v4    # "escapees":Ljava/lang/String;
    .restart local v5    # "i":I
    .restart local v8    # "previousWhite":Z
    .restart local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v11    # "valStr":Ljava/lang/String;
    :cond_6
    if-nez v5, :cond_7

    const/16 v13, 0x23

    if-eq v1, v13, :cond_3

    .line 984
    :cond_7
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_a

    const-string/jumbo v13, "ava"

    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 989
    const/4 v8, 0x0

    .line 991
    const/4 v12, 0x0

    .line 993
    .local v12, "valueBytes":[B
    :try_start_2
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    .line 998
    .local v12, "valueBytes":[B
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_4
    array-length v13, v12

    if-ge v7, v13, :cond_5

    .line 999
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1001
    aget-byte v13, v12, v7

    ushr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 1000
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1003
    aget-byte v13, v12, v7

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    .line 1002
    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 998
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 965
    .end local v7    # "j":I
    .end local v12    # "valueBytes":[B
    :cond_8
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_4

    goto :goto_2

    .line 974
    :cond_9
    if-nez v8, :cond_5

    .line 976
    const/4 v8, 0x1

    .line 977
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 994
    .local v12, "valueBytes":[B
    :catch_2
    move-exception v6

    .line 995
    .restart local v6    # "ie":Ljava/io/IOException;
    new-instance v13, Ljava/lang/IllegalArgumentException;

    .line 996
    const-string/jumbo v14, "DER Value conversion"

    .line 995
    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1009
    .end local v6    # "ie":Ljava/io/IOException;
    .end local v12    # "valueBytes":[B
    :cond_a
    const/4 v8, 0x0

    .line 1010
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1015
    .end local v1    # "c":C
    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1018
    .end local v4    # "escapees":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "previousWhite":Z
    .end local v9    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v11    # "valStr":Ljava/lang/String;
    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1019
    .local v2, "canon":Ljava/lang/String;
    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 1020
    sget-object v13, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v13}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/security/x509/AVA;->toRFC2253String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253String(Ljava/util/Map;)Ljava/lang/String;
    .locals 20
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
    .line 738
    .local p1, "oidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 739
    .local v15, "typeAndValue":Ljava/lang/StringBuilder;
    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x30

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    const/16 v19, 0x39

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 754
    :cond_0
    const/4 v6, 0x0

    .line 756
    .local v6, "data":[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 760
    .local v6, "data":[B
    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 762
    aget-byte v3, v6, v11

    .line 763
    .local v3, "b":B
    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 764
    and-int/lit8 v18, v3, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 752
    .end local v3    # "b":B
    .end local v6    # "data":[B
    .end local v11    # "j":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 775
    const/16 v16, 0x0

    .line 777
    .local v16, "valStr":Ljava/lang/String;
    :try_start_1
    new-instance v16, Ljava/lang/String;

    .end local v16    # "valStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 805
    .local v16, "valStr":Ljava/lang/String;
    const-string/jumbo v7, ",=+<>#;\"\\"

    .line 806
    .local v7, "escapees":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 808
    .local v13, "sbuffer":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    .line 809
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 810
    .local v4, "c":C
    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_2

    .line 811
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_5

    .line 814
    :cond_2
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_3

    .line 815
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 819
    :cond_3
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 808
    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 757
    .end local v4    # "c":C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v16    # "valStr":Ljava/lang/String;
    .local v6, "data":[B
    :catch_0
    move-exception v10

    .line 758
    .local v10, "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 778
    .end local v6    # "data":[B
    .end local v10    # "ie":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 779
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 821
    .end local v10    # "ie":Ljava/io/IOException;
    .restart local v4    # "c":C
    .restart local v7    # "escapees":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .restart local v16    # "valStr":Ljava/lang/String;
    :cond_5
    if-nez v4, :cond_6

    .line 823
    const-string/jumbo v18, "\\00"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 825
    :cond_6
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_7

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 829
    const/16 v17, 0x0

    .line 831
    .local v17, "valueBytes":[B
    :try_start_2
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    .line 836
    .local v17, "valueBytes":[B
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    .line 837
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 839
    aget-byte v18, v17, v11

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 838
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 840
    .local v8, "hexChar":C
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 842
    aget-byte v18, v17, v11

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    .line 841
    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    .line 843
    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 836
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 832
    .end local v8    # "hexChar":C
    .end local v11    # "j":I
    .local v17, "valueBytes":[B
    :catch_2
    move-exception v10

    .line 833
    .restart local v10    # "ie":Ljava/io/IOException;
    new-instance v18, Ljava/lang/IllegalArgumentException;

    .line 834
    const-string/jumbo v19, "DER Value conversion"

    .line 833
    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 848
    .end local v10    # "ie":Ljava/io/IOException;
    .end local v17    # "valueBytes":[B
    :cond_7
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 852
    .end local v4    # "c":C
    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    .line 853
    .local v5, "chars":[C
    new-instance v13, Ljava/lang/StringBuilder;

    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    .restart local v13    # "sbuffer":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .local v12, "lead":I
    :goto_4
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

    .line 858
    aget-char v18, v5, v12

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    aget-char v18, v5, v12

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_d

    .line 863
    :cond_9
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v14, v18, -0x1

    .local v14, "trail":I
    :goto_5
    if-ltz v14, :cond_a

    .line 864
    aget-char v18, v5, v14

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    aget-char v18, v5, v14

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 870
    :cond_a
    const/4 v9, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_f

    .line 871
    aget-char v4, v5, v9

    .line 872
    .restart local v4    # "c":C
    if-lt v9, v12, :cond_b

    if-le v9, v14, :cond_c

    .line 873
    :cond_b
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 875
    :cond_c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 870
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 857
    .end local v4    # "c":C
    .end local v14    # "trail":I
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 863
    .restart local v14    # "trail":I
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    .line 877
    :cond_f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    .end local v5    # "chars":[C
    .end local v7    # "escapees":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v12    # "lead":I
    .end local v13    # "sbuffer":Ljava/lang/StringBuilder;
    .end local v14    # "trail":I
    .end local v16    # "valStr":Ljava/lang/String;
    :cond_10
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 693
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
