.class public Lsun/security/x509/GeneralName;
.super Ljava/lang/Object;
.source "GeneralName.java"


# instance fields
.field private name:Lsun/security/x509/GeneralNameInterface;


# direct methods
.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;Z)V

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x30

    const/16 v2, 0x16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    iget-byte v1, p1, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    int-to-short v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unrecognized GeneralName tag, ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/OtherName;

    invoke-direct {v1, p1}, Lsun/security/x509/OtherName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of Other-Name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of RFC822 name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/RFC822Name;

    invoke-direct {v1, p1}, Lsun/security/x509/RFC822Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of DNS name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/DNSName;

    invoke-direct {v1, p1}, Lsun/security/x509/DNSName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of URI"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-virtual {p1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    if-eqz p2, :cond_7

    invoke-static {p1}, Lsun/security/x509/URIName;->nameConstraint(Lsun/security/util/DerValue;)Lsun/security/x509/URIName;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto :goto_0

    :cond_7
    new-instance v1, Lsun/security/x509/URIName;

    invoke-direct {v1, p1}, Lsun/security/x509/URIName;-><init>(Lsun/security/util/DerValue;)V

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of IP address"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/IPAddressName;

    invoke-direct {v1, p1}, Lsun/security/x509/IPAddressName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of OID name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/OIDName;

    invoke-direct {v1, p1}, Lsun/security/x509/OIDName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lsun/security/x509/X500Name;

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of Directory name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_8
    invoke-virtual {p1}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p1, v3}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v1, Lsun/security/x509/EDIPartyName;

    invoke-direct {v1, p1}, Lsun/security/x509/EDIPartyName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    goto/16 :goto_0

    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid encoding of EDI name"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNameInterface;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "GeneralName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0x80

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v2, v1}, Lsun/security/x509/GeneralNameInterface;->encode(Lsun/security/util/DerOutputStream;)V

    iget-object v2, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v2}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    int-to-byte v2, v0

    invoke-static {v3, v5, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    int-to-byte v2, v0

    invoke-static {v3, v5, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    goto :goto_0

    :cond_2
    int-to-byte v2, v0

    invoke-static {v3, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {p1, v2, v1}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    instance-of v4, p1, Lsun/security/x509/GeneralName;

    if-nez v4, :cond_1

    return v3

    :cond_1
    check-cast p1, Lsun/security/x509/GeneralName;

    iget-object v1, p1, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    :try_start_0
    iget-object v4, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v4, v1}, Lsun/security/x509/GeneralNameInterface;->constrains(Lsun/security/x509/GeneralNameInterface;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    return v3
.end method

.method public getName()Lsun/security/x509/GeneralNameInterface;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-interface {v0}, Lsun/security/x509/GeneralNameInterface;->getType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/GeneralName;->name:Lsun/security/x509/GeneralNameInterface;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
