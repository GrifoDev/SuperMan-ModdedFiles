.class public Lsun/security/x509/DistributionPoint;
.super Ljava/lang/Object;
.source "DistributionPoint.java"


# static fields
.field public static final AA_COMPROMISE:I = 0x8

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x7

.field private static final REASON_STRINGS:[Ljava/lang/String;

.field public static final SUPERSEDED:I = 0x4

.field private static final TAG_DIST_PT:B = 0x0t

.field private static final TAG_FULL_NAME:B = 0x0t

.field private static final TAG_ISSUER:B = 0x2t

.field private static final TAG_REASONS:B = 0x1t

.field private static final TAG_REL_NAME:B = 0x1t


# instance fields
.field private crlIssuer:Lsun/security/x509/GeneralNames;

.field private fullName:Lsun/security/x509/GeneralNames;

.field private volatile hashCode:I

.field private reasonFlags:[Z

.field private relativeName:Lsun/security/x509/RDN;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "key compromise"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "CA compromise"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "affiliation changed"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "superseded"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "cessation of operation"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "certificate hold"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "privilege withdrawn"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "AA compromise"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/16 v4, 0x30

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    if-eq v2, v4, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v0}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_b

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v1

    invoke-virtual {v1, v3}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate DistributionPointName in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v0, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x31

    invoke-virtual {v0, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun/security/x509/RDN;

    invoke-direct {v2, v0}, Lsun/security/x509/RDN;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid DistributionPointName in DistributionPoint"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    invoke-virtual {v1, v5}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->isContextSpecific(B)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_9

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate CRLIssuer in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_8

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate Reasons in DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lsun/security/util/DerValue;->resetTag(B)V

    invoke-virtual {v1}, Lsun/security/util/DerValue;->getUnalignedBitString()Lsun/security/util/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/BitArray;->toBooleanArray()[Z

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v1, v4}, Lsun/security/util/DerValue;->resetTag(B)V

    new-instance v2, Lsun/security/x509/GeneralNames;

    invoke-direct {v2, v1}, Lsun/security/x509/GeneralNames;-><init>(Lsun/security/util/DerValue;)V

    iput-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of DistributionPoint."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_b
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_c

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v2, :cond_c

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-nez v2, :cond_c

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "One of fullName, relativeName,  and crlIssuer has to be set"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_c
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/GeneralNames;[ZLsun/security/x509/GeneralNames;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "fullName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/RDN;[ZLsun/security/x509/GeneralNames;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "relativeName and crlIssuer may not both be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    iput-object p2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iput-object p3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-void
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static reasonToString(I)Ljava/lang/String;
    .locals 2

    if-lez p0, :cond_0

    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lsun/security/x509/DistributionPoint;->REASON_STRINGS:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown reason "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x0

    const/16 v8, -0x80

    const/4 v7, 0x1

    new-instance v5, Lsun/security/util/DerOutputStream;

    invoke-direct {v5}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-nez v6, :cond_0

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_2

    :cond_0
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_5

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v0}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_1
    :goto_0
    invoke-static {v8, v7, v9}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_2
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v6, :cond_3

    new-instance v3, Lsun/security/util/DerOutputStream;

    invoke-direct {v3}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v4, Lsun/security/util/BitArray;

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-direct {v4, v6}, Lsun/security/util/BitArray;-><init>([Z)V

    invoke-virtual {v3, v4}, Lsun/security/util/DerOutputStream;->putTruncatedUnalignedBitString(Lsun/security/util/BitArray;)V

    invoke-static {v8, v9, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v3}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_3
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v6, :cond_4

    new-instance v2, Lsun/security/util/DerOutputStream;

    invoke-direct {v2}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v6, v2}, Lsun/security/x509/GeneralNames;->encode(Lsun/security/util/DerOutputStream;)V

    const/4 v6, 0x2

    invoke-static {v8, v7, v6}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v5, v6, v2}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    :cond_4
    const/16 v6, 0x30

    invoke-virtual {p1, v6, v5}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void

    :cond_5
    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v6, :cond_1

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v6, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v6, v0}, Lsun/security/x509/RDN;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-static {v8, v7, v7}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v6

    invoke-virtual {v1, v6, v0}, Lsun/security/util/DerOutputStream;->writeImplicit(BLsun/security/util/DerOutputStream;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    instance-of v2, p1, Lsun/security/x509/DistributionPoint;

    if-nez v2, :cond_1

    return v0

    :cond_1
    move-object v1, p1

    check-cast v1, Lsun/security/x509/DistributionPoint;

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-static {v2, v3}, Lsun/security/x509/DistributionPoint;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    iget-object v3, v1, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v0

    :cond_2
    return v0
.end method

.method public getCRLIssuer()Lsun/security/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getFullName()Lsun/security/x509/GeneralNames;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    return-object v0
.end method

.method public getReasonFlags()[Z
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    return-object v0
.end method

.method public getRelativeName()Lsun/security/x509/RDN;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2}, Lsun/security/x509/RDN;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2}, Lsun/security/x509/GeneralNames;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_3

    add-int/2addr v0, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput v0, p0, Lsun/security/x509/DistributionPoint;->hashCode:I

    :cond_5
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DistributionPoint:\n     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->fullName:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "DistributionPoint:\n     "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->relativeName:Lsun/security/x509/RDN;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "   ReasonFlags:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->reasonFlags:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    const-string/jumbo v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lsun/security/x509/DistributionPoint;->reasonToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "   CRLIssuer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lsun/security/x509/DistributionPoint;->crlIssuer:Lsun/security/x509/GeneralNames;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
