.class public Lsun/security/x509/IssuingDistributionPointExtension;
.super Lsun/security/x509/Extension;
.source "IssuingDistributionPointExtension.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lsun/security/x509/Extension;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.IssuingDistributionPoint"

.field public static final INDIRECT_CRL:Ljava/lang/String; = "indirect_crl"

.field public static final NAME:Ljava/lang/String; = "IssuingDistributionPoint"

.field public static final ONLY_ATTRIBUTE_CERTS:Ljava/lang/String; = "only_attribute_certs"

.field public static final ONLY_CA_CERTS:Ljava/lang/String; = "only_ca_certs"

.field public static final ONLY_USER_CERTS:Ljava/lang/String; = "only_user_certs"

.field public static final POINT:Ljava/lang/String; = "point"

.field public static final REASONS:Ljava/lang/String; = "reasons"

.field private static final TAG_DISTRIBUTION_POINT:B = 0x0t

.field private static final TAG_INDIRECT_CRL:B = 0x4t

.field private static final TAG_ONLY_ATTRIBUTE_CERTS:B = 0x5t

.field private static final TAG_ONLY_CA_CERTS:B = 0x2t

.field private static final TAG_ONLY_SOME_REASONS:B = 0x3t

.field private static final TAG_ONLY_USER_CERTS:B = 0x1t


# instance fields
.field private distributionPoint:Lsun/security/x509/DistributionPointName;

.field private hasOnlyAttributeCerts:Z

.field private hasOnlyCACerts:Z

.field private hasOnlyUserCerts:Z

.field private isIndirectCRL:Z

.field private revocationReasons:Lsun/security/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    sget-object v3, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    instance-of v3, p2, [B

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Illegal argument type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for IssuingDistributionPointExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    :goto_0
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lsun/security/x509/DistributionPointName;

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/DistributionPointName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_6
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_8
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_9
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding of IssuingDistributionPoint"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_a
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    :cond_b
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto/16 :goto_0

    :cond_c
    new-instance v3, Lsun/security/x509/ReasonFlags;

    invoke-direct {v3, v1}, Lsun/security/x509/ReasonFlags;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/DistributionPointName;Lsun/security/x509/ReasonFlags;ZZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_2

    if-nez p5, :cond_2

    :cond_1
    if-eqz p5, :cond_3

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    iput-object p1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    iput-boolean p3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    iput-boolean p4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    iput-boolean p5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    iput-boolean p6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, -0x80

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-nez v3, :cond_0

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v3, :cond_7

    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v3, :cond_1

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v3, v2}, Lsun/security/x509/DistributionPointName;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-static {v4, v7, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_1
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v3, :cond_2

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    invoke-static {v4, v5, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_2
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v3, :cond_3

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v3, 0x2

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_3
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v3, :cond_4

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v3, v2}, Lsun/security/x509/ReasonFlags;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v3, 0x3

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_4
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v3, :cond_5

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v3, 0x4

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_5
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v3, :cond_6

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    const/4 v3, 0x5

    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_6
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    return-void

    :cond_7
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-nez v3, :cond_0

    iput-object v6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    return-void

    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    return-object v0

    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    return-object v0

    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getElements()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "reasons"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "only_user_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "only_ca_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "only_attribute_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    const-string/jumbo v1, "indirect_crl"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "IssuingDistributionPoint"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lsun/security/x509/DistributionPointName;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type DistributionPointName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lsun/security/x509/DistributionPointName;

    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    :cond_1
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    return-void

    :cond_2
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Lsun/security/x509/ReasonFlags;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type ReasonFlags."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    :cond_9
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] not recognized by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "IssuingDistributionPoint [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "  Only contains user certs: true"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "  Only contains CA certs: true"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "  Only contains attribute certs: true"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "  Indirect CRL: true"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    const-string/jumbo v1, "  Only contains user certs: false"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "  Only contains CA certs: false"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "  Only contains attribute certs: false"

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "  Indirect CRL: false"

    goto :goto_3
.end method
