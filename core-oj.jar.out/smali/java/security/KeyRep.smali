.class public Ljava/security/KeyRep;
.super Ljava/lang/Object;
.source "KeyRep.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyRep$Type;
    }
.end annotation


# static fields
.field private static final PKCS8:Ljava/lang/String; = "PKCS#8"

.field private static final RAW:Ljava/lang/String; = "RAW"

.field private static final X509:Ljava/lang/String; = "X.509"

.field private static final serialVersionUID:J = -0x4206b04c77655abdL


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encoded:[B

.field private format:Ljava/lang/String;

.field private type:Ljava/security/KeyRep$Type;


# direct methods
.method public constructor <init>(Ljava/security/KeyRep$Type;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 2
    .param p1, "type"    # Ljava/security/KeyRep$Type;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "encoded"    # [B

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input(s)"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 138
    iput-object p1, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    .line 139
    iput-object p2, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    .line 140
    invoke-virtual {p3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    .line 141
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Ljava/security/KeyRep;->encoded:[B

    .line 131
    return-void
.end method


# virtual methods
.method protected readResolve()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 170
    :try_start_0
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v4, Ljava/security/KeyRep$Type;->SECRET:Ljava/security/KeyRep$Type;

    if-ne v3, v4, :cond_0

    const-string/jumbo v3, "RAW"

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    iget-object v5, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v3

    .line 172
    :cond_0
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v4, Ljava/security/KeyRep$Type;->PUBLIC:Ljava/security/KeyRep$Type;

    if-ne v3, v4, :cond_1

    const-string/jumbo v3, "X.509"

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    iget-object v3, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 174
    .local v1, "f":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3

    .line 175
    .end local v1    # "f":Ljava/security/KeyFactory;
    :cond_1
    iget-object v3, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    sget-object v4, Ljava/security/KeyRep$Type;->PRIVATE:Ljava/security/KeyRep$Type;

    if-ne v3, v4, :cond_2

    const-string/jumbo v3, "PKCS#8"

    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    iget-object v3, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 177
    .restart local v1    # "f":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    iget-object v4, p0, Ljava/security/KeyRep;->encoded:[B

    invoke-direct {v3, v4}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    return-object v3

    .line 179
    .end local v1    # "f":Ljava/security/KeyFactory;
    :cond_2
    new-instance v3, Ljava/io/NotSerializableException;

    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized type/format combination: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    iget-object v5, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    const-string/jumbo v5, "/"

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 181
    iget-object v5, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-direct {v3, v4}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/NotSerializableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, "nse":Ljava/io/NotSerializableException;
    throw v2

    .line 185
    .end local v2    # "nse":Ljava/io/NotSerializableException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/io/NotSerializableException;

    .line 187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "java.security.Key: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 188
    iget-object v4, p0, Ljava/security/KeyRep;->type:Ljava/security/KeyRep$Type;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 188
    const-string/jumbo v4, "] "

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "["

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    iget-object v4, p0, Ljava/security/KeyRep;->algorithm:Ljava/lang/String;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 189
    const-string/jumbo v4, "] "

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    const-string/jumbo v4, "["

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    iget-object v4, p0, Ljava/security/KeyRep;->format:Ljava/lang/String;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 190
    const-string/jumbo v4, "]"

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 186
    invoke-direct {v2, v3}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v2    # "nse":Ljava/io/NotSerializableException;
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 192
    throw v2
.end method
