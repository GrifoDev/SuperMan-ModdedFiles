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
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 93
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 98
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 99
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 100
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 101
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 102
    iput-boolean v5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 170
    sget-object v3, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 173
    instance-of v3, p2, [B

    if-nez v3, :cond_0

    .line 174
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Illegal argument type"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 177
    :cond_0
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 178
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    .line 179
    .local v2, "val":Lsun/security/util/DerValue;
    iget-byte v3, v2, Lsun/security/util/DerValue;->tag:B

    const/16 v4, 0x30

    if-eq v3, v4, :cond_1

    .line 180
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Invalid encoding for IssuingDistributionPointExtension."

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_1
    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v3}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-nez v3, :cond_3

    .line 186
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v0, v2, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    .line 190
    .local v0, "in":Lsun/security/util/DerInputStream;
    :goto_0
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->available()I

    move-result v3

    if-eqz v3, :cond_f

    .line 191
    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    .line 193
    .local v1, "opt":Lsun/security/util/DerValue;
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    .line 193
    if-eqz v3, :cond_4

    .line 196
    new-instance v3, Lsun/security/x509/DistributionPointName;

    iget-object v4, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v4}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v4

    invoke-direct {v3, v4}, Lsun/security/x509/DistributionPointName;-><init>(Lsun/security/util/DerValue;)V

    .line 195
    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    goto :goto_0

    .line 197
    :cond_4
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 198
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 201
    :cond_5
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 202
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 205
    :cond_6
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 206
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 208
    :cond_7
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 212
    :cond_8
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 213
    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 217
    :cond_9
    new-instance v3, Ljava/io/IOException;

    .line 218
    const-string/jumbo v4, "Invalid encoding of IssuingDistributionPoint"

    .line 217
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 199
    :cond_a
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 200
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 203
    :cond_b
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 204
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto/16 :goto_0

    .line 207
    :cond_c
    new-instance v3, Lsun/security/x509/ReasonFlags;

    invoke-direct {v3, v1}, Lsun/security/x509/ReasonFlags;-><init>(Lsun/security/util/DerValue;)V

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto/16 :goto_0

    .line 210
    :cond_d
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 211
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto/16 :goto_0

    .line 214
    :cond_e
    invoke-virtual {v1, v6}, Lsun/security/util/DerValue;->resetTag(B)V

    .line 215
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v3

    iput-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    .line 169
    .end local v1    # "opt":Lsun/security/util/DerValue;
    :cond_f
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/DistributionPointName;Lsun/security/x509/ReasonFlags;ZZZZ)V
    .locals 2
    .param p1, "distributionPoint"    # Lsun/security/x509/DistributionPointName;
    .param p2, "revocationReasons"    # Lsun/security/x509/ReasonFlags;
    .param p3, "hasOnlyUserCerts"    # Z
    .param p4, "hasOnlyCACerts"    # Z
    .param p5, "hasOnlyAttributeCerts"    # Z
    .param p6, "isIndirectCRL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 136
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 93
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 98
    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 99
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 100
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 101
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 102
    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 142
    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 143
    :cond_0
    if-eqz p4, :cond_1

    if-nez p3, :cond_2

    .line 142
    if-nez p5, :cond_2

    .line 144
    :cond_1
    if-eqz p5, :cond_3

    if-nez p3, :cond_2

    .line 142
    if-eqz p4, :cond_3

    .line 145
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 146
    const-string/jumbo v1, "Only one of hasOnlyUserCerts, hasOnlyCACerts, hasOnlyAttributeCerts may be set to true"

    .line 145
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_3
    sget-object v0, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 151
    iput-object p1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 152
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    .line 153
    iput-boolean p3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    .line 154
    iput-boolean p4, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    .line 155
    iput-boolean p5, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    .line 156
    iput-boolean p6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    .line 157
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 140
    return-void
.end method

.method private encodeThis()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v4, -0x80

    .line 379
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-nez v3, :cond_0

    .line 380
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-nez v3, :cond_0

    .line 381
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v3, :cond_7

    .line 391
    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 393
    .local v1, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v3, :cond_1

    .line 394
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 395
    .local v2, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v3, v2}, Lsun/security/x509/DistributionPointName;->encode(Lsun/security/util/DerOutputStream;)V

    .line 396
    invoke-static {v4, v7, v5}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 400
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v3, :cond_2

    .line 401
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 402
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 403
    invoke-static {v4, v5, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 407
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_2
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v3, :cond_3

    .line 408
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 409
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 411
    const/4 v3, 0x2

    .line 410
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 414
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_3
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v3, :cond_4

    .line 415
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 416
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v3, v2}, Lsun/security/x509/ReasonFlags;->encode(Lsun/security/util/DerOutputStream;)V

    .line 418
    const/4 v3, 0x3

    .line 417
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 421
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_4
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v3, :cond_5

    .line 422
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 423
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 425
    const/4 v3, 0x4

    .line 424
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 428
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_5
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v3, :cond_6

    .line 429
    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 430
    .restart local v2    # "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-virtual {v2, v3}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 432
    const/4 v3, 0x5

    .line 431
    invoke-static {v4, v5, v3}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v3

    invoke-virtual {v1, v3, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    .line 435
    .end local v2    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_6
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 436
    .local v0, "seq":Lsun/security/util/DerOutputStream;
    const/16 v3, 0x30

    invoke-virtual {v0, v3, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 437
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 377
    return-void

    .line 382
    .end local v0    # "seq":Lsun/security/util/DerOutputStream;
    .end local v1    # "tagged":Lsun/security/util/DerOutputStream;
    :cond_7
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-nez v3, :cond_0

    .line 383
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-nez v3, :cond_0

    .line 384
    iget-boolean v3, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-nez v3, :cond_0

    .line 386
    iput-object v6, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    .line 387
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 335
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 358
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 334
    return-void

    .line 338
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    .line 341
    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iput-object v2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    goto :goto_0

    .line 344
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 347
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 348
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    .line 350
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto :goto_0

    .line 354
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 355
    const-string/jumbo v2, "] not recognized by "

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 356
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    .line 354
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 239
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 240
    sget-object v1, Lsun/security/x509/PKIXExtensions;->IssuingDistributionPoint_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 241
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->critical:Z

    .line 242
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 244
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 245
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 237
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 306
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    return-object v0

    .line 309
    :cond_0
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 310
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 312
    :cond_1
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    iget-object v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    return-object v0

    .line 315
    :cond_2
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 318
    :cond_3
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 321
    :cond_4
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 322
    iget-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 325
    :cond_5
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 326
    const-string/jumbo v2, "] not recognized by "

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    .line 325
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

    .prologue
    .line 366
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 367
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "point"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 368
    const-string/jumbo v1, "reasons"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 369
    const-string/jumbo v1, "only_user_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 370
    const-string/jumbo v1, "only_ca_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 371
    const-string/jumbo v1, "only_attribute_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 372
    const-string/jumbo v1, "indirect_crl"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 373
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "IssuingDistributionPoint"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 252
    const-string/jumbo v0, "point"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 253
    instance-of v0, p2, Lsun/security/x509/DistributionPointName;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/io/IOException;

    .line 255
    const-string/jumbo v1, "Attribute value should be of type DistributionPointName."

    .line 254
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    check-cast p2, Lsun/security/x509/DistributionPointName;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    .line 299
    :cond_1
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/IssuingDistributionPointExtension;->encodeThis()V

    .line 251
    return-void

    .line 259
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v0, "reasons"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    instance-of v0, p2, Lsun/security/x509/ReasonFlags;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Ljava/io/IOException;

    .line 262
    const-string/jumbo v1, "Attribute value should be of type ReasonFlags."

    .line 261
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_3
    const-string/jumbo v0, "indirect_crl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 266
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    .line 267
    new-instance v0, Ljava/io/IOException;

    .line 268
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    .line 267
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_4
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    goto :goto_0

    .line 272
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    const-string/jumbo v0, "only_user_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 273
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    .line 274
    new-instance v0, Ljava/io/IOException;

    .line 275
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    .line 274
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_6
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    goto :goto_0

    .line 279
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_7
    const-string/jumbo v0, "only_ca_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 280
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_8

    .line 281
    new-instance v0, Ljava/io/IOException;

    .line 282
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    .line 281
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_8
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    goto :goto_0

    .line 286
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_9
    const-string/jumbo v0, "only_attribute_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 287
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 288
    new-instance v0, Ljava/io/IOException;

    .line 289
    const-string/jumbo v1, "Attribute value should be of type Boolean."

    .line 288
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_a
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    goto/16 :goto_0

    .line 295
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Attribute name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 296
    const-string/jumbo v2, "] not recognized by "

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    const-string/jumbo v2, "CertAttrSet:IssuingDistributionPointExtension."

    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 446
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "IssuingDistributionPoint [\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    if-eqz v1, :cond_0

    .line 449
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->distributionPoint:Lsun/security/x509/DistributionPointName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    :cond_0
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->revocationReasons:Lsun/security/x509/ReasonFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 456
    :cond_1
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyUserCerts:Z

    if-eqz v1, :cond_2

    .line 457
    const-string/jumbo v1, "  Only contains user certs: true"

    .line 456
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 458
    const-string/jumbo v2, "\n"

    .line 456
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyCACerts:Z

    if-eqz v1, :cond_3

    .line 461
    const-string/jumbo v1, "  Only contains CA certs: true"

    .line 460
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 462
    const-string/jumbo v2, "\n"

    .line 460
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->hasOnlyAttributeCerts:Z

    if-eqz v1, :cond_4

    .line 465
    const-string/jumbo v1, "  Only contains attribute certs: true"

    .line 464
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 466
    const-string/jumbo v2, "\n"

    .line 464
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-boolean v1, p0, Lsun/security/x509/IssuingDistributionPointExtension;->isIndirectCRL:Z

    if-eqz v1, :cond_5

    .line 469
    const-string/jumbo v1, "  Indirect CRL: true"

    .line 468
    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 470
    const-string/jumbo v2, "\n"

    .line 468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    const-string/jumbo v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 458
    :cond_2
    const-string/jumbo v1, "  Only contains user certs: false"

    goto :goto_0

    .line 462
    :cond_3
    const-string/jumbo v1, "  Only contains CA certs: false"

    goto :goto_1

    .line 466
    :cond_4
    const-string/jumbo v1, "  Only contains attribute certs: false"

    goto :goto_2

    .line 470
    :cond_5
    const-string/jumbo v1, "  Indirect CRL: false"

    goto :goto_3
.end method
