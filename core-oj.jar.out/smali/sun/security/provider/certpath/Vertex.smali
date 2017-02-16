.class public Lsun/security/provider/certpath/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


# static fields
.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private index:I

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string/jumbo v0, "certpath"

    invoke-static {v0}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    .line 49
    return-void
.end method

.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    .line 62
    return-void
.end method


# virtual methods
.method public certToString()Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 135
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .local v8, "sb":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 139
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :try_start_0
    iget-object v10, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    invoke-static {v10}, Lsun/security/x509/X509CertImpl;->toImpl(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 148
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    const-string/jumbo v10, "Issuer:     "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 149
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    .line 148
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 149
    const-string/jumbo v13, "\n"

    .line 148
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v10, "Subject:    "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 151
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13

    .line 150
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 151
    const-string/jumbo v13, "\n"

    .line 150
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string/jumbo v10, "SerialNum:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 153
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v13

    const/16 v14, 0x10

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v13

    .line 152
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 153
    const-string/jumbo v13, "\n"

    .line 152
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string/jumbo v10, "Expires:    "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getNotAfter()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v13

    .line 154
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 155
    const-string/jumbo v13, "\n"

    .line 154
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getIssuerUniqueID()[Z

    move-result-object v4

    .line 157
    .local v4, "iUID":[Z
    if-eqz v4, :cond_3

    .line 158
    const-string/jumbo v10, "IssuerUID:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    array-length v14, v4

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_2

    aget-boolean v1, v4, v13

    .line 160
    .local v1, "b":Z
    if-eqz v1, :cond_1

    move v10, v11

    :goto_1
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    goto :goto_0

    .line 140
    .end local v1    # "b":Z
    .end local v4    # "iUID":[Z
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :catch_0
    move-exception v2

    .line 141
    .local v2, "ce":Ljava/security/cert/CertificateException;
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_0

    .line 142
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "Vertex.certToString() unexpected exception"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 145
    :cond_0
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v1    # "b":Z
    .restart local v4    # "iUID":[Z
    .local v9, "x509Cert":Lsun/security/x509/X509CertImpl;
    :cond_1
    move v10, v12

    .line 160
    goto :goto_1

    .line 162
    .end local v1    # "b":Z
    :cond_2
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    :cond_3
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectUniqueID()[Z

    move-result-object v7

    .line 165
    .local v7, "sUID":[Z
    if-eqz v7, :cond_6

    .line 166
    const-string/jumbo v10, "SubjectUID: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    array-length v14, v7

    move v13, v12

    :goto_2
    if-ge v13, v14, :cond_5

    aget-boolean v1, v7, v13

    .line 168
    .restart local v1    # "b":Z
    if-eqz v1, :cond_4

    move v10, v11

    :goto_3
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    add-int/lit8 v10, v13, 0x1

    move v13, v10

    goto :goto_2

    :cond_4
    move v10, v12

    .line 168
    goto :goto_3

    .line 170
    .end local v1    # "b":Z
    :cond_5
    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :cond_6
    :try_start_1
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getSubjectKeyIdentifierExtension()Lsun/security/x509/SubjectKeyIdentifierExtension;

    move-result-object v6

    .line 175
    .local v6, "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    if-eqz v6, :cond_7

    .line 177
    const-string/jumbo v10, "key_id"

    .line 176
    invoke-virtual {v6, v10}, Lsun/security/x509/SubjectKeyIdentifierExtension;->get(Ljava/lang/String;)Lsun/security/x509/KeyIdentifier;

    move-result-object v5

    .line 178
    .local v5, "keyID":Lsun/security/x509/KeyIdentifier;
    const-string/jumbo v10, "SubjKeyID:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .end local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    :cond_7
    invoke-virtual {v9}, Lsun/security/x509/X509CertImpl;->getAuthorityKeyIdentifierExtension()Lsun/security/x509/AuthorityKeyIdentifierExtension;

    move-result-object v0

    .line 182
    .local v0, "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    if-eqz v0, :cond_8

    .line 184
    const-string/jumbo v10, "key_id"

    .line 183
    invoke-virtual {v0, v10}, Lsun/security/x509/AuthorityKeyIdentifierExtension;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/security/x509/KeyIdentifier;

    .line 185
    .restart local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    const-string/jumbo v10, "AuthKeyID:  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lsun/security/x509/KeyIdentifier;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    .end local v0    # "aKeyID":Lsun/security/x509/AuthorityKeyIdentifierExtension;
    .end local v5    # "keyID":Lsun/security/x509/KeyIdentifier;
    .end local v6    # "sKeyID":Lsun/security/x509/SubjectKeyIdentifierExtension;
    :cond_8
    :goto_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 187
    :catch_1
    move-exception v3

    .line 188
    .local v3, "e":Ljava/io/IOException;
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    if-eqz v10, :cond_8

    .line 189
    sget-object v10, Lsun/security/provider/certpath/Vertex;->debug:Lsun/security/util/Debug;

    const-string/jumbo v11, "Vertex.certToString() unexpected exception"

    invoke-virtual {v10, v11}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lsun/security/provider/certpath/Vertex;->index:I

    return v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public indexToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Index:      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public moreToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Last cert?  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "Yes"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 221
    :cond_0
    const-string/jumbo v1, "No"

    goto :goto_0
.end method

.method setIndex(I)V
    .locals 0
    .param p1, "ndx"    # I

    .prologue
    .line 95
    iput p1, p0, Lsun/security/provider/certpath/Vertex;->index:I

    .line 94
    return-void
.end method

.method setThrowable(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 115
    iput-object p1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    .line 114
    return-void
.end method

.method public throwableToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Exception:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lsun/security/provider/certpath/Vertex;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    :goto_0
    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 207
    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lsun/security/provider/certpath/Vertex;->indexToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
