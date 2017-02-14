.class public Lsun/security/x509/CRLReasonCodeExtension;
.super Lsun/security/x509/Extension;
.source "CRLReasonCodeExtension.java"

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
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFLIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final NAME:Ljava/lang/String; = "CRLReasonCode"

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REASON:Ljava/lang/String; = "reason"

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I

.field private static values:[Ljava/security/cert/CRLReason;


# instance fields
.field private reasonCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/security/cert/CRLReason;->values()[Ljava/security/cert/CRLReason;

    move-result-object v0

    sput-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/CRLReasonCodeExtension;-><init>(ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v0}, Lsun/security/util/DerValue;->getEnumerated()I

    move-result v1

    iput v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v0, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    iput-boolean p1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    iput p2, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    return-void
.end method

.method private encodeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    return-void

    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putEnumerated(I)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

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

    iget-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun/security/x509/PKIXExtensions;->ReasonCode_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->critical:Z

    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

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

    const-string/jumbo v1, "reason"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "CRLReasonCode"

    return-object v0
.end method

.method public getReasonCode()Ljava/security/cert/CRLReason;
    .locals 2

    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    if-lez v0, :cond_0

    iget v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    sget-object v1, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    iget v1, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Ljava/security/cert/CRLReason;->UNSPECIFIED:Ljava/security/cert/CRLReason;

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "reason"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    invoke-direct {p0}, Lsun/security/x509/CRLReasonCodeExtension;->encodeThis()V

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Name not supported by CRLReasonCodeExtension"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    Reason Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lsun/security/x509/CRLReasonCodeExtension;->values:[Ljava/security/cert/CRLReason;

    iget v2, p0, Lsun/security/x509/CRLReasonCodeExtension;->reasonCode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
