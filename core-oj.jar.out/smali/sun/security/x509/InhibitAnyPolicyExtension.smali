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

    .prologue
    .line 67
    const-string/jumbo v1, "certpath"

    invoke-static {v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v1

    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->debug:Lsun/security/util/Debug;

    .line 81
    :try_start_0
    new-instance v1, Lsun/security/util/ObjectIdentifier;

    const-string/jumbo v2, "2.5.29.32.0"

    invoke-direct {v1, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v1, Lsun/security/x509/InhibitAnyPolicyExtension;->AnyPolicy_Id:Lsun/security/util/ObjectIdentifier;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 82
    .end local v0    # "ioe":Ljava/io/IOException;
    :catch_0
    move-exception v0

    .restart local v0    # "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "skipCerts"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 109
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 94
    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    .line 110
    if-ge p1, v0, :cond_0

    .line 111
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Invalid value for skipCerts"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    if-ne p1, v0, :cond_1

    .line 113
    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    .line 116
    :goto_0
    sget-object v0, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    .line 118
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    .line 109
    return-void

    .line 115
    :cond_1
    iput p1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Object;)V
    .locals 6
    .param p1, "critical"    # Ljava/lang/Boolean;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v4, -0x1

    .line 130
    invoke-direct {p0}, Lsun/security/x509/Extension;-><init>()V

    .line 94
    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    .line 133
    sget-object v2, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 135
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Criticality cannot be false for InhibitAnyPolicy"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    .line 140
    check-cast p2, [B

    .end local p2    # "value":Ljava/lang/Object;
    iput-object p2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    .line 141
    new-instance v1, Lsun/security/util/DerValue;

    iget-object v2, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    invoke-direct {v1, v2}, Lsun/security/util/DerValue;-><init>([B)V

    .line 142
    .local v1, "val":Lsun/security/util/DerValue;
    iget-byte v2, v1, Lsun/security/util/DerValue;->tag:B

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 143
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: data not integer"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :cond_1
    iget-object v2, v1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of InhibitAnyPolicy: null data"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 149
    :cond_2
    invoke-virtual {v1}, Lsun/security/util/DerValue;->getInteger()I

    move-result v0

    .line 150
    .local v0, "skipCertsValue":I
    if-ge v0, v4, :cond_3

    .line 151
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid value for skipCerts"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_3
    if-ne v0, v4, :cond_4

    .line 153
    iput v5, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    .line 131
    :goto_0
    return-void

    .line 155
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

    .prologue
    .line 98
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 99
    .local v0, "out":Lsun/security/util/DerOutputStream;
    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-virtual {v0, v1}, Lsun/security/util/DerOutputStream;->putInteger(I)V

    .line 100
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    .line 97
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
    .line 235
    const-string/jumbo v0, "skip_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute skip_certs may not be deleted."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

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
    .line 173
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 174
    .local v0, "tmp":Lsun/security/util/DerOutputStream;
    iget-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionValue:[B

    if-nez v1, :cond_0

    .line 175
    sget-object v1, Lsun/security/x509/PKIXExtensions;->InhibitAnyPolicy_Id:Lsun/security/util/ObjectIdentifier;

    iput-object v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->extensionId:Lsun/security/util/ObjectIdentifier;

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->critical:Z

    .line 177
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    .line 179
    :cond_0
    invoke-super {p0, v0}, Lsun/security/x509/Extension;->encode(Lsun/security/util/DerOutputStream;)V

    .line 181
    invoke-virtual {v0}, Lsun/security/util/DerOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 172
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const-string/jumbo v0, "skip_certs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 222
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
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

    .prologue
    .line 250
    new-instance v0, Lsun/security/x509/AttributeNameEnumeration;

    invoke-direct {v0}, Lsun/security/x509/AttributeNameEnumeration;-><init>()V

    .line 251
    .local v0, "elements":Lsun/security/x509/AttributeNameEnumeration;
    const-string/jumbo v1, "skip_certs"

    invoke-virtual {v0, v1}, Lsun/security/x509/AttributeNameEnumeration;->addElement(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0}, Lsun/security/x509/AttributeNameEnumeration;->elements()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    const-string/jumbo v0, "InhibitAnyPolicy"

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
    const/4 v2, -0x1

    .line 193
    const-string/jumbo v1, "skip_certs"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    instance-of v1, p2, Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 195
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute value should be of type Integer."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 196
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 197
    .local v0, "skipCertsValue":I
    if-ge v0, v2, :cond_1

    .line 198
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Invalid value for skipCerts"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    :cond_1
    if-ne v0, v2, :cond_2

    .line 200
    const v1, 0x7fffffff

    iput v1, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    .line 207
    :goto_0
    invoke-direct {p0}, Lsun/security/x509/InhibitAnyPolicyExtension;->encodeThis()V

    .line 192
    return-void

    .line 202
    :cond_2
    iput v0, p0, Lsun/security/x509/InhibitAnyPolicyExtension;->skipCerts:I

    goto :goto_0

    .line 205
    .end local v0    # "skipCertsValue":I
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Attribute name not recognized by CertAttrSet:InhibitAnyPolicy."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
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

    .line 164
    .local v0, "s":Ljava/lang/String;
    return-object v0
.end method
