.class public Lsun/security/x509/BasicConstraintsExtension;
.super Lsun/security/x509/Extension;
.source "BasicConstraintsExtension.java"

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
.field public static final IDENT:Ljava/lang/String; = "x509.info.extensions.BasicConstraints"

.field public static final IS_CA:Ljava/lang/String; = "is_ca"

.field public static final NAME:Ljava/lang/String; = "BasicConstraints"

.field public static final PATH_LEN:Ljava/lang/String; = "path_len"


# instance fields
.field private ca:Z

.field private pathLen:I


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 4
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 122
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 68
    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 69
    const/4 v2, -0x1

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 125
    sget-object v2, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 126
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 128
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    .line 129
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 130
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    .line 131
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 134
    :cond_0
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_2

    .line 136
    :cond_1
    return-void

    .line 138
    :cond_2
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 139
    .local v0, "opt":Lsun/security/util/DerValue;
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 141
    return-void

    .line 144
    :cond_3
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 145
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-nez v2, :cond_4

    .line 149
    const v2, 0x7fffffff

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 150
    return-void

    .line 153
    :cond_4
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 154
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_5

    .line 155
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of BasicConstraints"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 157
    :cond_5
    invoke-virtual {v0}, Lsun/security/util/DerValue;->getInteger()I

    move-result v2

    iput v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 123
    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;ZI)V
    .locals 1
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "ca"    # Z
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 107
    iput-boolean p2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 108
    iput p3, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    .line 109
    sget-object v0, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 111
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 106
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .param p1, "ca"    # Z
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lsun/security/x509/BasicConstraintsExtension;-><init>(Ljava/lang/Boolean;ZI)V

    .line 94
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
    .line 73
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 74
    .local v0, "out":Lsun/security/util/DerOutputStream;
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 76
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v2, :cond_0

    .line 77
    iget-boolean v2, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putBoolean(Z)V

    .line 79
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v2, :cond_0

    .line 80
    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 83
    :cond_0
    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 84
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    .line 72
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
    .line 245
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 253
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 244
    return-void

    .line 247
    :cond_0
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0

    .line 250
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

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
    .line 191
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 192
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 193
    sget-object v1, Lsun/security/x509/PKIXExtensions;->BasicConstraints_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/BasicConstraintsExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 194
    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v1, :cond_1

    .line 195
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    .line 199
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 201
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 203
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 190
    return-void

    .line 197
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->critical:Z

    goto :goto_0
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
    .line 231
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 233
    :cond_0
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 236
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

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
    .line 261
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 262
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "is_ca"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 263
    const-string/jumbo v1, "path_len"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 265
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    const-string/jumbo v0, "BasicConstraints"

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
    .line 210
    const-string/jumbo v0, "is_ca"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    instance-of v0, p2, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Boolean."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    .line 224
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/BasicConstraintsExtension;->encodeThis()V

    .line 209
    return-void

    .line 215
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v0, "path_len"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 216
    instance-of v0, p2, Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 217
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute value should be of type Integer."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_2
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    goto :goto_0

    .line 221
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:BasicConstraints."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lsun/security/x509/Extension;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "BasicConstraints:[\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lsun/security/x509/BasicConstraintsExtension;->ca:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "  CA:true"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    iget v1, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    if-ltz v1, :cond_1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  PathLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lsun/security/x509/BasicConstraintsExtension;->pathLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 176
    :cond_0
    const-string/jumbo v1, "  CA:false"

    goto :goto_0

    .line 180
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  PathLen: undefined\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
