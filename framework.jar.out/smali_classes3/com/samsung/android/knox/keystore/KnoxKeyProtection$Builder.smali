.class public final Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
.super Ljava/lang/Object;
.source "KnoxKeyProtection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/keystore/KnoxKeyProtection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mAccessorIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdministratorIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyProtection:Landroid/security/keystore/KeyProtection;

.field private mKnoxObjectProtectionRequired:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mKnoxObjectProtectionRequired:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAccessorIdsSet:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    return-void
.end method

.method private splitIds(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const-string/jumbo v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v2, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method


# virtual methods
.method public build()Lcom/samsung/android/knox/keystore/KnoxKeyProtection;
    .locals 6

    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;

    iget-object v1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    iget-boolean v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mKnoxObjectProtectionRequired:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection;-><init>(Landroid/security/keystore/KeyProtection;ZLjava/util/List;Ljava/util/List;Lcom/samsung/android/knox/keystore/KnoxKeyProtection;)V

    return-object v0
.end method

.method public setAccessorIds(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessor ids must be printable characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setAccessorIds(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessor ids must be printable characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs setAccessorIds([Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAccessorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setAdministratorIds(Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessor ids must be printable characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setAdministratorIds(Ljava/util/List;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "accessor id must be printable characters"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public varargs setAdministratorIds([Ljava/lang/String;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 5

    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/knox/keystore/KnoxSecurityUtils;->isPrintable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "accessor ids must be printable characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mAdministratorIdsSet:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->splitIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public setKeyProtection(Landroid/security/keystore/KeyProtection;)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mKeyProtection:Landroid/security/keystore/KeyProtection;

    return-object p0
.end method

.method public setKnoxObjectProtectionRequired(Z)Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/keystore/KnoxKeyProtection$Builder;->mKnoxObjectProtectionRequired:Z

    return-object p0
.end method
