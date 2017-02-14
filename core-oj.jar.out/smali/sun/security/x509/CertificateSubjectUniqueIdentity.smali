.class public Lsun/security/x509/CertificateSubjectUniqueIdentity;
.super Ljava/lang/Object;
.source "CertificateSubjectUniqueIdentity.java"

# interfaces
.implements Lsun/security/x509/CertAttrSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lsun/security/x509/CertAttrSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "id"

.field public static final IDENT:Ljava/lang/String; = "x509.info.subjectID"

.field public static final NAME:Ljava/lang/String; = "subjectID"


# instance fields
.field private id:Lsun/security/x509/UniqueIdentity;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v1, v0}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerValue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/x509/UniqueIdentity;

    invoke-direct {v0, p1}, Lsun/security/x509/UniqueIdentity;-><init>(Lsun/security/util/DerValue;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-void
.end method

.method public constructor <init>(Lsun/security/x509/UniqueIdentity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

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

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v1, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    const/16 v2, -0x80

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v1, v0, v2}, Lsun/security/x509/UniqueIdentity;->encode(Lsun/security/util/DerOutputStream;B)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

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

    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

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

    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "subjectID"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p2, Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type UniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    nop

    nop

    iput-object p2, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    return-void

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet: CertificateSubjectUniqueIdentity."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectUniqueIdentity;->id:Lsun/security/x509/UniqueIdentity;

    invoke-virtual {v0}, Lsun/security/x509/UniqueIdentity;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
