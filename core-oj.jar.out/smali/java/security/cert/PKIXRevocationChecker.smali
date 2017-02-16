.class public abstract Ljava/security/cert/PKIXRevocationChecker;
.super Ljava/security/cert/PKIXCertPathChecker;
.source "PKIXRevocationChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/cert/PKIXRevocationChecker$Option;
    }
.end annotation


# instance fields
.field private ocspExtensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation
.end field

.field private ocspResponder:Ljava/net/URI;

.field private ocspResponderCert:Ljava/security/cert/X509Certificate;

.field private ocspResponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation
.end field

.field private options:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/security/cert/PKIXCertPathChecker;-><init>()V

    .line 95
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 96
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 97
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 102
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Ljava/security/cert/PKIXRevocationChecker;->clone()Ljava/security/cert/PKIXRevocationChecker;

    move-result-object v0

    return-object v0
.end method

.method public clone()Ljava/security/cert/PKIXRevocationChecker;
    .locals 6

    .prologue
    .line 259
    invoke-super {p0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXRevocationChecker;

    .line 260
    .local v0, "copy":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 261
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 264
    iget-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 263
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 266
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 267
    .local v1, "encoded":[B
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v2, v4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 269
    .end local v1    # "encoded":[B
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    iget-object v5, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v4, v0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 270
    return-object v0
.end method

.method public getOcspExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOcspResponder()Ljava/net/URI;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    return-object v0
.end method

.method public getOcspResponderCert()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getOcspResponses()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;"
        }
    .end annotation

    .prologue
    .line 212
    new-instance v0, Ljava/util/HashMap;

    iget-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 213
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    iget-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 216
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_0
    return-object v0
.end method

.method public getOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSoftFailExceptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertPathValidatorException;",
            ">;"
        }
    .end annotation
.end method

.method public setOcspExtensions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Extension;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Extension;>;"
    if-nez p1, :cond_0

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 164
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspExtensions:Ljava/util/List;

    .line 162
    return-void

    .line 166
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public setOcspResponder(Ljava/net/URI;)V
    .locals 0
    .param p1, "uri"    # Ljava/net/URI;

    .prologue
    .line 113
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponder:Ljava/net/URI;

    .line 112
    return-void
.end method

.method public setOcspResponderCert(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 138
    iput-object p1, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponderCert:Ljava/security/cert/X509Certificate;

    .line 137
    return-void
.end method

.method public setOcspResponses(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/security/cert/X509Certificate;",
            "[B>;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "responses":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    if-nez p1, :cond_0

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    .line 188
    :goto_0
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 194
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "e$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 195
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/security/cert/X509Certificate;[B>;"
    :cond_1
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->ocspResponses:Ljava/util/Map;

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/PKIXRevocationChecker$Option;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "options":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/PKIXRevocationChecker$Option;>;"
    if-nez p1, :cond_0

    .line 227
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    .line 226
    :goto_0
    iput-object v0, p0, Ljava/security/cert/PKIXRevocationChecker;->options:Ljava/util/Set;

    .line 225
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method
