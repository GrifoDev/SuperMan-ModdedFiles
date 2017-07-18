.class public Lsun/security/x509/InhibitAnyPolicyExtension;
.super Lsun/security/x509/Extension;
.source "InhibitAnyPolicyExtension.java"

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
.field public static AnyPolicy_Id:Lsun/security/util/ObjectIdentifier; = null

.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.InhibitAnyPolicy"

.field public static final NAME:Ljava/lang/String; = "InhibitAnyPolicy"

.field public static final SKIP_CERTS:Ljava/lang/String; = "skip_certs"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private skipCerts:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v1, "certpath"

    invoke-static {v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v1

    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->debug:Lsun/security/util/Debug;

    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "2.5.29.32.0"

    invoke-direct {v1, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->AnyPolicy_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v1, 0x7fffffff

    const/4 v0, -0x1

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid value for skipCerts"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p1, v0, :cond_1

    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    :goto_0
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    return-void

    :cond_1
    iput p1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v5, 0x7fffffff

    const/4 v4, -0x1

    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    sget-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Criticality cannot be false for InhibitAnyPolicy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    check-cast p2, [B

    iput-object p2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: data not integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: null data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v0

    if-ge v0, v4, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid value for skipCerts"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-ne v0, v4, :cond_4

    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    :goto_0
    return-void

    :cond_4
    iput v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0
.end method

.method private encodeThis()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

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

    const-string/jumbo v0, "skip_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute skip_certs may not be deleted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

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

    iget-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    if-nez v1, :cond_0

    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "skip_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lsun/security/x509/InhibitAnyPolicyExtension;->get(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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

    const-string/jumbo v1, "skip_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "InhibitAnyPolicy"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    const-string/jumbo v1, "skip_certs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute value should be of type Integer."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid value for skipCerts"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ne v0, v2, :cond_2

    const v1, 0x7fffffff

    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    :goto_0
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    return-void

    :cond_2
    iput v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "InhibitAnyPolicy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
