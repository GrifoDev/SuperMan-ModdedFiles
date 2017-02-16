.class Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;
.super Ljava/lang/Object;
.source "SSLAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SupportedSignatureAlgorithmConstraints"
.end annotation


# instance fields
.field private supportedAlgorithms:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "supportedAlgorithms"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    .line 199
    :goto_0
    return-void

    .line 203
    :cond_0
    iput-object v0, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 7
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v3, 0x0

    .line 210
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 211
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 212
    const-string/jumbo v3, "No algorithm name specified"

    .line 211
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 216
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 217
    const-string/jumbo v3, "No cryptographic primitive specified"

    .line 216
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    :cond_3
    iget-object v2, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 221
    iget-object v2, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    array-length v2, v2

    if-nez v2, :cond_5

    .line 222
    :cond_4
    return v3

    .line 226
    :cond_5
    const-string/jumbo v2, "and"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 227
    .local v0, "position":I
    if-lez v0, :cond_6

    .line 228
    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 231
    :cond_6
    iget-object v4, p0, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->supportedAlgorithms:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_8

    aget-object v1, v4, v2

    .line 232
    .local v1, "supportedAlgorithm":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 233
    const/4 v2, 0x1

    return v2

    .line 231
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "supportedAlgorithm":Ljava/lang/String;
    :cond_8
    return v3
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 248
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 249
    const-string/jumbo v1, "No algorithm name specified"

    .line 248
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    invoke-virtual {p0, p1, p2, p4}, Lsun/security/ssl/SSLAlgorithmConstraints$SupportedSignatureAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    move-result v0

    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 1
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v0, 0x1

    return v0
.end method
