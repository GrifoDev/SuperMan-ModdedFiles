.class Lsun/security/ssl/X509KeyManagerImpl$KeyType;
.super Ljava/lang/Object;
.source "X509KeyManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/X509KeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeyType"
.end annotation


# instance fields
.field final keyAlgorithm:Ljava/lang/String;

.field final sigKeyAlgorithm:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method matches([Ljava/security/cert/Certificate;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    aget-object v3, p1, v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->keyAlgorithm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    if-nez v3, :cond_1

    return v6

    :cond_1
    array-length v3, p1

    if-le v3, v6, :cond_2

    iget-object v3, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    aget-object v4, p1, v6

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    :cond_2
    aget-object v0, p1, v5

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "WITH"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lsun/security/ssl/X509KeyManagerImpl$KeyType;->sigKeyAlgorithm:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    return v3
.end method
