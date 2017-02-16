.class public Lsun/security/x509/InvalidityDateExtension;
.super Lsun/security/x509/Extension;
.source "InvalidityDateExtension.java"

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
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final NAME:Ljava/lang/String; = "InvalidityDate"


# instance fields
.field private date:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 2
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 115
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 116
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 117
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 118
    new-instance v0, Lsun/security/util/DerValue;

    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    invoke-direct {v0, v1}, Lsun/security/util/DerValue;-><init>([B)V

    .line 119
    .local v0, "val":Lsun/security/util/DerValue;
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getGeneralizedTime()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lsun/security/x509/InvalidityDateExtension;-><init>(ZLjava/util/Date;)V

    .line 87
    return-void
.end method

.method public constructor <init>(ZLjava/util/Date;)V
    .locals 1
    .param p1, "critical"    # Z
    .param p2, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 99
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 100
    iput-boolean p1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 101
    iput-object p2, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    .line 102
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    .line 98
    return-void
.end method

.method private encodeThis()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    if-nez v1, :cond_0

    .line 73
    iput-object v2, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 74
    return-void

    .line 76
    :cond_0
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 77
    .local v0, "dos":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putGeneralizedTime(Ljava/util/Date;)V

    .line 78
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    .line 71
    return-void
.end method

.method public static toImpl(Ljava/security/cert/Extension;)Lsun/security/x509/InvalidityDateExtension;
    .locals 3
    .param p0, "ext"    # Ljava/security/cert/Extension;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    instance-of v0, p0, Lsun/security/x509/InvalidityDateExtension;

    if-eqz v0, :cond_0

    .line 213
    nop

    nop

    .end local p0    # "ext":Ljava/security/cert/Extension;
    return-object p0

    .line 215
    .restart local p0    # "ext":Ljava/security/cert/Extension;
    :cond_0
    new-instance v0, Lsun/security/x509/InvalidityDateExtension;

    .line 216
    invoke-interface {p0}, Ljava/security/cert/Extension;->isCritical()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0}, Ljava/security/cert/Extension;->getValue()[B

    move-result-object v2

    .line 215
    invoke-direct {v0, v1, v2}, Lsun/security/x509/InvalidityDateExtension;-><init>(Ljava/lang/Boolean;Ljava/lang/Object;)V

    return-object v0
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
    .line 158
    const-string/jumbo v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    .line 164
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    .line 157
    return-void

    .line 161
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 162
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    .line 161
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
    .line 181
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 183
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/Extension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 184
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InvalidityDate_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/Extension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 185
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/Extension;->critical:Z

    .line 186
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    .line 188
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 189
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 180
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 142
    const-string/jumbo v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 144
    return-object v1

    .line 146
    :cond_0
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0

    .line 149
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 150
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    .line 149
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
    .line 197
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 198
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "date"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 200
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    const-string/jumbo v0, "InvalidityDate"

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
    .line 126
    instance-of v0, p2, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute must be of type Date."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    const-string/jumbo v0, "date"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    .line 135
    invoke-direct {p0}, Lsun/security/x509/InvalidityDateExtension;->encodeThis()V

    .line 125
    return-void

    .line 132
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 133
    const-string/jumbo v1, "Name not supported by InvalidityDateExtension"

    .line 132
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "    Invalidity Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/x509/InvalidityDateExtension;->date:Ljava/util/Date;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
