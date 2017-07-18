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

    const-string/jumbo v0, "x509"

    const-string/jumbo v1, "\t[AVA]"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    new-instance v0, Lsun/security/action/GetBooleanAction;

    const-string/jumbo v1, "com.sun.security.preserveOldDCEncoding"

    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;ILjava/util/Map;)V
    .locals 5
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

    const/16 v4, 0x20

    const/4 v3, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string/jumbo v2, "Incorrect AVA format"

    invoke-static {p1, v2}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2, p3}, Lsun/security/x509/AVAKeyword;->getOID(Ljava/lang/String;ILjava/util/Map;)Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    if-ne p2, v3, :cond_1

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-ne v0, v4, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Incorrect AVA RFC2253 format - leading space must be escaped"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    :cond_2
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    new-instance v2, Lsun/security/util/DerValue;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-void

    :cond_3
    const/16 v2, 0x23

    if-ne v0, v2, :cond_4

    invoke-static {p1, p2}, Lsun/security/x509/AVA;->parseHexString(Ljava/io/Reader;I)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    :goto_1
    return-void

    :cond_4
    const/16 v2, 0x22

    if-ne v0, v2, :cond_5

    if-eq p2, v3, :cond_5

    invoke-direct {p0, p1, v1}, Lsun/security/x509/AVA;->parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/x509/AVA;->parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    goto :goto_1
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/util/Map;)V
    .locals 1
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

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lsun/security/x509/AVA;-><init>(Ljava/io/Reader;ILjava/util/Map;)V

    return-void
.end method

.method constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;-><init>(Lsun/security/util/DerValue;)V

    return-void
.end method

.method constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "AVA not a sequence"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    invoke-static {v0}, Lsun/security/x509/X500Name;->intern(Lsun/security/util/ObjectIdentifier;)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    iget-object v0, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AVA, extra bytes = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/util/DerValue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-void
.end method

.method private static getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x10

    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, p0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_1

    const-string/jumbo v3, "unexpected EOF - escaped hex value must include two valid digits"

    invoke-static {p1, v3}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v3, "0123456789ABCDEF"

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_0

    int-to-char v3, p0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    int-to-char v3, v0

    invoke-static {v3, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    new-instance v3, Ljava/lang/Byte;

    shl-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v2

    int-to-byte v4, v4

    invoke-direct {v3, v4}, Ljava/lang/Byte;-><init>(B)V

    return-object v3

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "escaped hex value must include two valid digits"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

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

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3
.end method

.method private static isDerString(Lsun/security/util/DerValue;Z)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    return v2

    :cond_0
    iget-byte v0, p0, Lsun/security/util/DerValue;->tag:B

    sparse-switch v0, :sswitch_data_1

    return v1

    :sswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x13 -> :sswitch_0
    .end sparse-switch

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

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    return v1

    :sswitch_0
    return v0

    :sswitch_1
    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x20

    const/16 v8, 0xa

    const/4 v7, 0x1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    if-nez v3, :cond_7

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, zero hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    if-eq v2, v9, :cond_2

    if-ne v2, v8, :cond_4

    :cond_2
    :goto_1
    if-eq v2, v9, :cond_3

    if-eq v2, v8, :cond_3

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

    :cond_3
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    invoke-static {v2, p1}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "0123456789ABCDEF"

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

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

    :cond_5
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_6

    mul-int/lit8 v5, v0, 0x10

    int-to-byte v6, v4

    add-int/2addr v5, v6

    int-to-byte v0, v5

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    int-to-byte v0, v4

    goto :goto_2

    :cond_7
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v7, :cond_8

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA parse, odd number of hex digits"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>([B)V

    return-object v5
.end method

.method private parseQuotedString(Ljava/io/Reader;Ljava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x5c

    const/16 v7, 0x22

    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    :goto_0
    if-eq v0, v7, :cond_3

    if-ne v0, v8, :cond_1

    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v0, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v4, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    goto :goto_0

    :cond_0
    if-eq v0, v8, :cond_1

    if-eq v0, v7, :cond_1

    const-string/jumbo v5, ",+=\n<>#;"

    int-to-char v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_1

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid escaped character in AVA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    int-to-char v5, v0

    invoke-static {v5}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v5

    and-int/2addr v4, v5

    int-to-char v5, v0

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Quoted string did not end in quote"

    invoke-static {p1, v5}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    invoke-static {v1}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_4
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result v0

    const/16 v5, 0xa

    if-eq v0, v5, :cond_4

    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/4 v5, -0x1

    if-eq v0, v5, :cond_5

    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "AVA had characters other than whitespace after terminating quote"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v6, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v5, v6}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-boolean v5, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v5, :cond_7

    :cond_6
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x16

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5

    :cond_7
    if-eqz v4, :cond_8

    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v5

    :cond_8
    new-instance v5, Lsun/security/util/DerValue;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0xc

    invoke-direct {v5, v7, v6}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v5
.end method

.method private parseString(Ljava/io/Reader;IILjava/lang/StringBuilder;)Lsun/security/util/DerValue;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :cond_0
    const/4 v1, 0x0

    const/16 v8, 0x5c

    if-ne p2, v8, :cond_9

    const/4 v1, 0x1

    const-string/jumbo v8, "Invalid trailing backslash"

    invoke-static {p1, v8}, Lsun/security/x509/AVA;->readChar(Ljava/io/Reader;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x0

    invoke-static {p2, p1}, Lsun/security/x509/AVA;->getEmbeddedHexPair(ILjava/io/Reader;)Ljava/lang/Byte;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v5, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    const/4 v6, 0x0

    :goto_0
    invoke-static {p2, p3}, Lsun/security/x509/AVA;->isTerminator(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    if-ne p3, v8, :cond_e

    if-lez v7, :cond_e

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Incorrect AVA RFC2253 format - trailing space must be escaped"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    const/4 v8, 0x1

    if-ne p3, v8, :cond_3

    const-string/jumbo v8, ",=\n+<>#;\\\" "

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    :cond_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    const/4 v8, 0x2

    if-ne p3, v8, :cond_4

    const-string/jumbo v8, ",+=\n<>#;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    const/16 v8, 0x5c

    if-eq p2, v8, :cond_4

    const/16 v8, 0x22

    if-ne p2, v8, :cond_2

    :cond_4
    const/4 v8, 0x3

    if-ne p3, v8, :cond_5

    const/16 v8, 0x20

    if-ne p2, v8, :cond_7

    if-nez v6, :cond_5

    invoke-static {p1}, Lsun/security/x509/AVA;->trailingSpace(Ljava/io/Reader;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_b

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_a

    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid escaped space character in AVA.  Only a leading or trailing space character can be escaped."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_7
    const/16 v8, 0x23

    if-ne p2, v8, :cond_8

    if-nez v6, :cond_5

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid escaped \'#\' character in AVA.  Only a leading \'#\' can be escaped."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_8
    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid escaped character in AVA: \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_9
    const/4 v8, 0x3

    if-ne p3, v8, :cond_5

    const-string/jumbo v8, ",+\"\\<>;"

    int-to-char v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_5

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Character \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    int-to-char v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\' in AVA appears without escape"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_a
    const/4 v7, 0x0

    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_b
    int-to-char v8, p2

    invoke-static {v8}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v8

    and-int/2addr v5, v8

    const/16 v8, 0x20

    if-ne p2, v8, :cond_c

    if-nez v1, :cond_c

    add-int/lit8 v7, v7, 0x1

    :goto_2
    invoke-virtual {p1}, Ljava/io/Reader;->read()I

    move-result p2

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_d

    const-string/jumbo v8, " "

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    const/4 v7, 0x0

    int-to-char v8, p2

    invoke-virtual {p4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_f

    invoke-static {v0}, Lsun/security/x509/AVA;->getEmbeddedHexString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_f
    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/pkcs/PKCS9Attribute;->EMAIL_ADDRESS_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-nez v8, :cond_10

    iget-object v8, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    sget-object v9, Lsun/security/x509/X500Name;->DOMAIN_COMPONENT_OID:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v8, v9}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v8

    if-eqz v8, :cond_11

    sget-boolean v8, Lsun/security/x509/AVA;->PRESERVE_OLD_DC_ENCODING:Z

    if-nez v8, :cond_11

    :cond_10
    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x16

    invoke-direct {v8, v10, v9}, Lsun/security/util/DerValue;-><init>(BLjava/lang/String;)V

    return-object v8

    :cond_11
    if-eqz v5, :cond_12

    new-instance v8, Lsun/security/util/DerValue;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lsun/security/util/DerValue;-><init>(Ljava/lang/String;)V

    return-object v8

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return v0
.end method

.method private toKeyword(ILjava/util/Map;)Ljava/lang/String;
    .locals 1
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

    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-static {v0, p1, p2}, Lsun/security/x509/AVAKeyword;->getKeyword(Lsun/security/util/ObjectIdentifier;ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 20

    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v18, 0x28

    move/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v18, "="

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v4

    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    :goto_0
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_13

    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    shr-int/lit8 v19, v19, 0x4

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v18, "0123456789ABCDEF"

    aget-byte v19, v4, v8

    and-int/lit8 v19, v19, 0xf

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const-string/jumbo v6, ",+=\n<>#;\\\""

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v10

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

    :goto_1
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_10

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eqz v2, :cond_5

    if-eqz v8, :cond_1

    add-int/lit8 v18, v10, -0x1

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    :cond_1
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    invoke-static {v3}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_6

    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_e

    :cond_6
    if-nez v12, :cond_8

    if-nez v8, :cond_b

    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_7

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v3, v0, :cond_b

    :cond_7
    :goto_4
    const/4 v12, 0x1

    :cond_8
    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    const/16 v18, 0xa

    move/from16 v0, v18

    if-eq v3, v0, :cond_c

    const/16 v18, 0x22

    move/from16 v0, v18

    if-eq v3, v0, :cond_9

    const/16 v18, 0x5c

    move/from16 v0, v18

    if-ne v3, v0, :cond_a

    :cond_9
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_b
    :try_start_1
    const-string/jumbo v18, ",+=\n<>#;\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_8

    goto :goto_4

    :cond_c
    if-nez v12, :cond_d

    if-eqz v11, :cond_d

    const/4 v12, 0x1

    :cond_d
    const/4 v11, 0x1

    goto :goto_5

    :cond_e
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_f

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v17

    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_2

    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v18, v17, v9

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v18, v17, v9

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_f
    const/4 v11, 0x0

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_10
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-lez v18, :cond_12

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    const/16 v18, 0x20

    move/from16 v0, v18

    if-eq v15, v0, :cond_11

    const/16 v18, 0xa

    move/from16 v0, v18

    if-ne v15, v0, :cond_12

    :cond_11
    const/4 v12, 0x1

    :cond_12
    if-nez v2, :cond_14

    if-eqz v12, :cond_14

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

    :cond_13
    :goto_7
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18

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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/io/Reader;->markSupported()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/16 v3, 0x270f

    invoke-virtual {p0, v3}, Ljava/io/Reader;->mark(I)V

    :cond_1
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->reset()V

    return v2

    :cond_2
    if-eq v1, v4, :cond_1

    const/16 v3, 0x5c

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v0

    if-eq v0, v4, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public derEncode(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v2}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2, v0}, Lsun/security/util/DerValue;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v2, 0x30

    invoke-virtual {v1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/x509/AVA;->derEncode(Ljava/io/OutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v1, p1, Lsun/security/x509/AVA;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/security/x509/AVA;

    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDerValue()Lsun/security/util/DerValue;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    return-object v0
.end method

.method public getObjectIdentifier()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 5

    :try_start_0
    iget-object v2, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v2}, Lsun/security/util/DerValue;->getAsString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "AVA string is null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

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

    :cond_0
    return-object v1
.end method

.method hasRFC2253Keyword()Z
    .locals 2

    iget-object v0, p0, Lsun/security/x509/AVA;->oid:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lsun/security/x509/AVAKeyword;->hasKeyword(Lsun/security/util/ObjectIdentifier;I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toRFC1779String()Ljava/lang/String;
    .locals 1

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

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toRFC2253CanonicalString()Ljava/lang/String;
    .locals 15

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x28

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v13

    const/4 v14, 0x3

    invoke-direct {p0, v14, v13}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v13, 0x3d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    const/16 v13, 0x23

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    :goto_0
    array-length v13, v3

    if-ge v7, v13, :cond_c

    aget-byte v0, v3, v7

    ushr-int/lit8 v13, v0, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v13, v0, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

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

    :cond_2
    const/4 v11, 0x0

    :try_start_1
    new-instance v11, Ljava/lang/String;

    iget-object v13, p0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    invoke-virtual {v13}, Lsun/security/util/DerValue;->getDataBytes()[B

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-direct {v11, v13, v14}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v4, ",+<>;\"\\"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v5, v13, :cond_b

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_6

    :cond_3
    if-nez v5, :cond_8

    const/16 v13, 0x23

    if-ne v1, v13, :cond_8

    :goto_2
    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v8, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :catch_1
    move-exception v6

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_6
    if-nez v5, :cond_7

    const/16 v13, 0x23

    if-eq v1, v13, :cond_3

    :cond_7
    sget-object v13, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v13, :cond_a

    const-string/jumbo v13, "ava"

    invoke-static {v13}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/4 v8, 0x0

    const/4 v12, 0x0

    :try_start_2
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "UTF8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v12

    const/4 v7, 0x0

    :goto_4
    array-length v13, v12

    if-ge v7, v13, :cond_5

    const/16 v13, 0x5c

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v13, v12, v7

    ushr-int/lit8 v13, v13, 0x4

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v13, v12, v7

    and-int/lit8 v13, v13, 0xf

    const/16 v14, 0x10

    invoke-static {v13, v14}, Ljava/lang/Character;->forDigit(II)C

    move-result v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    const-string/jumbo v13, ",+<>;\"\\"

    invoke-virtual {v13, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ltz v13, :cond_4

    goto :goto_2

    :cond_9
    if-nez v8, :cond_5

    const/4 v8, 0x1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :catch_2
    move-exception v6

    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "DER Value conversion"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_a
    const/4 v8, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_b
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v13, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v13}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v13, Ljava/text/Normalizer$Form;->NFKD:Ljava/text/Normalizer$Form;

    invoke-static {v2, v13}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v13

    return-object v13
.end method

.method public toRFC2253String()Ljava/lang/String;
    .locals 1

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

    new-instance v15, Ljava/lang/StringBuilder;

    const/16 v18, 0x64

    move/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lsun/security/util/DerValue;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/16 v18, 0x23

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    :goto_0
    array-length v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    aget-byte v3, v6, v11

    ushr-int/lit8 v18, v3, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v18, v3, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/security/x509/AVA;->value:Lsun/security/util/DerValue;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lsun/security/x509/AVA;->isDerString(Lsun/security/util/DerValue;Z)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v16, 0x0

    :try_start_1
    new-instance v16, Ljava/lang/String;

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

    const-string/jumbo v7, ",=+<>#;\"\\"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v9, v0, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lsun/security/util/DerValue;->isPrintableStringChar(C)Z

    move-result v18

    if-nez v18, :cond_2

    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_5

    :cond_2
    const-string/jumbo v18, ",=+<>#;\"\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-ltz v18, :cond_3

    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v10

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :catch_1
    move-exception v10

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_5
    if-nez v4, :cond_6

    const-string/jumbo v18, "\\00"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    sget-object v18, Lsun/security/x509/AVA;->debug:Lsun/security/util/Debug;

    if-eqz v18, :cond_7

    const-string/jumbo v18, "ava"

    invoke-static/range {v18 .. v18}, Lsun/security/util/Debug;->isOn(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    const/16 v17, 0x0

    :try_start_2
    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "UTF8"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v17

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_4

    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v18, v17, v11

    ushr-int/lit8 v18, v18, 0x4

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v18, v17, v11

    and-int/lit8 v18, v18, 0xf

    const/16 v19, 0x10

    invoke-static/range {v18 .. v19}, Ljava/lang/Character;->forDigit(II)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :catch_2
    move-exception v10

    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v19, "DER Value conversion"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_7
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    :goto_4
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

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

    :cond_9
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v14, v18, -0x1

    :goto_5
    if-ltz v14, :cond_a

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

    :cond_a
    const/4 v9, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_f

    aget-char v4, v5, v9

    if-lt v9, v12, :cond_b

    if-le v9, v14, :cond_c

    :cond_b
    const/16 v18, 0x5c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_5

    :cond_f
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    return-object v18
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lsun/security/x509/AVA;->toKeyword(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lsun/security/x509/AVA;->toKeywordValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
