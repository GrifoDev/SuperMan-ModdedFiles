.class public Ljava/security/cert/CertPathValidatorException;
.super Ljava/security/GeneralSecurityException;
.source "CertPathValidatorException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/CertPathValidatorException$BasicReason;,
        Ljava/security/cert/CertPathValidatorException$Reason;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2ac9a7e362fbb593L


# instance fields
.field private certPath:Ljava/security/cert/CertPath;

.field private index:I

.field private reason:Ljava/security/cert/CertPathValidatorException$Reason;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 129
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I

    .prologue
    .line 151
    sget-object v5, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;ILjava/security/cert/CertPathValidatorException$Reason;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "certPath"    # Ljava/security/cert/CertPath;
    .param p4, "index"    # I
    .param p5, "reason"    # Ljava/security/cert/CertPathValidatorException$Reason;

    .prologue
    const/4 v1, -0x1

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    iput v1, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 81
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    iput-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 178
    if-nez p3, :cond_0

    if-eq p4, v1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 181
    :cond_0
    if-lt p4, v1, :cond_1

    .line 182
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p4, v0, :cond_2

    .line 183
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 185
    :cond_2
    if-nez p5, :cond_3

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "reason can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_3
    iput-object p3, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    .line 189
    iput p4, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    .line 190
    iput-object p5, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 176
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 116
    if-nez p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 233
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 234
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    if-nez v0, :cond_0

    .line 235
    sget-object v0, Ljava/security/cert/CertPathValidatorException$BasicReason;->UNSPECIFIED:Ljava/security/cert/CertPathValidatorException$BasicReason;

    iput-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    .line 237
    :cond_0
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    if-nez v0, :cond_1

    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    if-eq v0, v1, :cond_1

    .line 238
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "certpath is null and index != -1"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_1
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    if-lt v0, v1, :cond_2

    .line 241
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    if-eqz v0, :cond_3

    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    iget-object v1, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 242
    :cond_2
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string/jumbo v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_3
    return-void
.end method


# virtual methods
.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 213
    iget v0, p0, Ljava/security/cert/CertPathValidatorException;->index:I

    return v0
.end method

.method public getReason()Ljava/security/cert/CertPathValidatorException$Reason;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Ljava/security/cert/CertPathValidatorException;->reason:Ljava/security/cert/CertPathValidatorException$Reason;

    return-object v0
.end method
