.class public final Lsun/security/x509/AccessDescription;
.super Ljava/lang/Object;
.source "AccessDescription.java"


# static fields
.field public static final Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

.field public static final Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;


# instance fields
.field private accessLocation:Lsun/security/x509/GeneralName;

.field private accessMethod:Lsun/security/util/ObjectIdentifier;

.field private myhash:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    invoke-static {v0}, Lsun/security/util/ObjectIdentifier;->newInternal([I)Lsun/security/util/ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x5
        0x5
        0x7
        0x30
        0x5
    .end array-data
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, p0, Lsun/security/x509/AccessDescription;->myhash:I

    invoke-virtual {p1}, Lsun/security/util/DerValue;->getData()Lsun/security/util/DerInputStream;

    move-result-object v0

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getOID()Lsun/security/util/ObjectIdentifier;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    new-instance v1, Lsun/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v2

    invoke-direct {v1, v2}, Lsun/security/x509/GeneralName;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/ObjectIdentifier;Lsun/security/x509/GeneralName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    iput-object p1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    iput-object p2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    return-void
.end method


# virtual methods
.method public encode(Lsun/security/util/DerOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putOID(Lsun/security/util/ObjectIdentifier;)V

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1, v0}, Lsun/security/x509/GeneralName;->encode(Lsun/security/util/DerOutputStream;)V

    const/16 v1, 0x30

    invoke-virtual {p1, v1, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v2, p1, Lsun/security/x509/AccessDescription;

    if-eqz v2, :cond_0

    move-object v0, p1

    check-cast v0, Lsun/security/x509/AccessDescription;

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessMethod()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v0}, Lsun/security/x509/AccessDescription;->getAccessLocation()Lsun/security/x509/GeneralName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method public getAccessLocation()Lsun/security/x509/GeneralName;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    return-object v0
.end method

.method public getAccessMethod()Lsun/security/util/ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v0}, Lsun/security/util/ObjectIdentifier;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v1}, Lsun/security/x509/GeneralName;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    :cond_0
    iget v0, p0, Lsun/security/x509/AccessDescription;->myhash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAISSUERS_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "caIssuers"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n   accessMethod: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n   accessLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/x509/AccessDescription;->accessLocation:Lsun/security/x509/GeneralName;

    invoke-virtual {v2}, Lsun/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_CAREPOSITORY_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "caRepository"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_TIMESTAMPING_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "timeStamping"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    sget-object v2, Lsun/security/x509/AccessDescription;->Ad_OCSP_Id:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1, v2}, Lsun/security/util/ObjectIdentifier;->equals(Lsun/security/util/ObjectIdentifier;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v0, "ocsp"

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lsun/security/x509/AccessDescription;->accessMethod:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {v1}, Lsun/security/util/ObjectIdentifier;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
