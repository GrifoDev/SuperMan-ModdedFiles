.class public Lsun/security/provider/certpath/BuildStep;
.super Ljava/lang/Object;
.source "BuildStep.java"


# static fields
.field public static final BACK:I = 0x2

.field public static final FAIL:I = 0x4

.field public static final FOLLOW:I = 0x3

.field public static final POSSIBLE:I = 0x1

.field public static final SUCCEED:I = 0x5


# instance fields
.field private cert:Ljava/security/cert/X509Certificate;

.field private result:I

.field private throwable:Ljava/lang/Throwable;

.field private vertex:Lsun/security/provider/certpath/Vertex;


# direct methods
.method public constructor <init>(Lsun/security/provider/certpath/Vertex;I)V
    .locals 1
    .param p1, "vtx"    # Lsun/security/provider/certpath/Vertex;
    .param p2, "res"    # I

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    .line 86
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    .line 88
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v0}, Lsun/security/provider/certpath/Vertex;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    .line 90
    :cond_0
    iput p2, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    .line 84
    return-void
.end method


# virtual methods
.method public fullToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v1}, Lsun/security/provider/certpath/Vertex;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getIssuerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 132
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 133
    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    return v0
.end method

.method public getSubjectName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/security/provider/certpath/BuildStep;->getSubjectName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "defaultName"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .end local p1    # "defaultName":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 160
    .restart local p1    # "defaultName":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->cert:Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getVertex()Lsun/security/provider/certpath/Vertex;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    return-object v0
.end method

.method public resultToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "res"    # I

    .prologue
    .line 190
    const-string/jumbo v0, ""

    .line 191
    .local v0, "resultString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 210
    const-string/jumbo v0, "Internal error: Invalid step result value.\n"

    .line 212
    :goto_0
    return-object v0

    .line 193
    :pswitch_0
    const-string/jumbo v0, "Certificate to be tried.\n"

    goto :goto_0

    .line 196
    :pswitch_1
    const-string/jumbo v0, "Certificate backed out since path does not satisfy build requirements.\n"

    goto :goto_0

    .line 200
    :pswitch_2
    const-string/jumbo v0, "Certificate satisfies conditions.\n"

    goto :goto_0

    .line 203
    :pswitch_3
    const-string/jumbo v0, "Certificate backed out since path does not satisfy conditions.\n"

    goto :goto_0

    .line 207
    :pswitch_4
    const-string/jumbo v0, "Certificate satisfies conditions.\n"

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 223
    const-string/jumbo v0, "Internal Error\n"

    .line 224
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    packed-switch v1, :pswitch_data_0

    .line 236
    const-string/jumbo v0, "Internal Error: Invalid step result\n"

    .line 238
    :goto_0
    return-object v0

    .line 227
    :pswitch_0
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 233
    :pswitch_1
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public verboseToString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p0}, Lsun/security/provider/certpath/BuildStep;->getResult()I

    move-result v1

    invoke-virtual {p0, v1}, Lsun/security/provider/certpath/BuildStep;->resultToString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "out":Ljava/lang/String;
    iget v1, p0, Lsun/security/provider/certpath/BuildStep;->result:I

    packed-switch v1, :pswitch_data_0

    .line 264
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Certificate contains:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->certToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    return-object v0

    .line 253
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->throwableToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 257
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/BuildStep;->vertex:Lsun/security/provider/certpath/Vertex;

    invoke-virtual {v2}, Lsun/security/provider/certpath/Vertex;->moreToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
