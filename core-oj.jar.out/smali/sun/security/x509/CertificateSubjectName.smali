.class public Lsun/security/x509/CertificateSubjectName;
.super Ljava/lang/Object;
.source "CertificateSubjectName.java"

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
.field public static final DN_NAME:Ljava/lang/String; = "dname"

.field public static final DN_PRINCIPAL:Ljava/lang/String; = "x500principal"

.field public static final IDENT:Ljava/lang/String; = "x509.info.subject"

.field public static final NAME:Ljava/lang/String; = "subject"


# instance fields
.field private dnName:Lsun/security/x509/X500Name;

.field private dnPrincipal:Ljavax/security/auth/x500/X500Principal;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lsun/security/util/DerValue;

    invoke-direct {v0, p1}, Lsun/security/util/DerValue;-><init>(Ljava/io/InputStream;)V

    .line 93
    .local v0, "derVal":Lsun/security/util/DerValue;
    new-instance v1, Lsun/security/x509/X500Name;

    invoke-direct {v1, v0}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerValue;)V

    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 91
    return-void
.end method

.method public constructor <init>(Lsun/security/util/DerInputStream;)V
    .locals 1
    .param p1, "in"    # Lsun/security/util/DerInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lsun/security/x509/X500Name;

    invoke-direct {v0, p1}, Lsun/security/x509/X500Name;-><init>(Lsun/security/util/DerInputStream;)V

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 81
    return-void
.end method

.method public constructor <init>(Lsun/security/x509/X500Name;)V
    .locals 0
    .param p1, "name"    # Lsun/security/x509/X500Name;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 71
    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    const-string/jumbo v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 156
    iput-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 153
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

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
    .line 111
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 112
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v1, v0}, Lsun/security/x509/X500Name;->encode(Lsun/security/util/DerOutputStream;)V

    .line 114
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 110
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const-string/jumbo v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    return-object v0

    .line 139
    :cond_0
    const-string/jumbo v0, "x500principal"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->asX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 143
    :cond_1
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    return-object v0

    .line 145
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

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
    .line 168
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 169
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "dname"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 171
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    const-string/jumbo v0, "subject"

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    instance-of v0, p2, Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type X500Name."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    const-string/jumbo v0, "dname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnPrincipal:Ljavax/security/auth/x500/X500Principal;

    .line 120
    return-void

    .line 128
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:CertificateSubjectName."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lsun/security/x509/CertificateSubjectName;->dnName:Lsun/security/x509/X500Name;

    invoke-virtual {v0}, Lsun/security/x509/X500Name;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
