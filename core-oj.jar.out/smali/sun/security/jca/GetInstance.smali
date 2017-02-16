.class public Lsun/security/jca/GetInstance;
.super Ljava/lang/Object;
.source "GetInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/GetInstance$Instance;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "subClass"    # Ljava/lang/Class;
    .param p2, "superClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p2, :cond_0

    .line 255
    return-void

    .line 257
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "class configured for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    const-string/jumbo v2, " not a "

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Ljava/security/Provider$Service;->getType()Ljava/lang/String;

    move-result-object v2

    .line 259
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 9
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v3

    .line 157
    .local v3, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v3, p0, p2}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 158
    .local v2, "firstService":Ljava/security/Provider$Service;
    if-nez v2, :cond_0

    .line 159
    new-instance v6, Ljava/security/NoSuchAlgorithmException;

    .line 160
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 159
    invoke-direct {v6, v7}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 164
    :cond_0
    :try_start_0
    invoke-static {v2, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .line 170
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3, p0, p2}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 171
    .local v4, "s":Ljava/security/Provider$Service;
    if-eq v4, v2, :cond_1

    .line 176
    :try_start_1
    invoke-static {v4, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    return-object v6

    .line 177
    :catch_1
    move-exception v0

    .line 178
    move-object v1, v0

    goto :goto_0

    .line 181
    .end local v4    # "s":Ljava/security/Provider$Service;
    :cond_2
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .locals 8
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {p0, p2}, Lsun/security/jca/GetInstance;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 187
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider$Service;>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/Provider$Service;

    .line 190
    .local v2, "s":Ljava/security/Provider$Service;
    :try_start_0
    invoke-static {v2, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v0

    .local v1, "failure":Ljava/security/NoSuchAlgorithmException;
    goto :goto_0

    .line 195
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "failure":Ljava/security/NoSuchAlgorithmException;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_0
    if-eqz v1, :cond_1

    .line 196
    throw v1

    .line 198
    :cond_1
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not available"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 212
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/Object;
    .param p4, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p0, p2, p4}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/security/Provider;)Lsun/security/jca/GetInstance$Instance;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {p0, p2, p3}, Lsun/security/jca/GetInstance;->getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;

    move-result-object v0

    invoke-static {v0, p1}, Lsun/security/jca/GetInstance;->getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;)Lsun/security/jca/GetInstance$Instance;
    .locals 4
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 236
    invoke-virtual {p0, v3}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 237
    .local v0, "instance":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 238
    new-instance v1, Lsun/security/jca/GetInstance$Instance;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V

    return-object v1
.end method

.method public static getInstance(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Object;)Lsun/security/jca/GetInstance$Instance;
    .locals 4
    .param p0, "s"    # Ljava/security/Provider$Service;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "param"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-virtual {p0, p2}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "instance":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lsun/security/jca/GetInstance;->checkSuperClass(Ljava/security/Provider$Service;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 245
    new-instance v1, Lsun/security/jca/GetInstance$Instance;

    invoke-virtual {p0}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lsun/security/jca/GetInstance$Instance;-><init>(Ljava/security/Provider;Ljava/lang/Object;Lsun/security/jca/GetInstance$Instance;)V

    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 67
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 68
    .local v1, "s":Ljava/security/Provider$Service;
    if-nez v1, :cond_0

    .line 69
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_0
    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 78
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_1
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v2

    invoke-virtual {v2, p2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 82
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_2

    .line 83
    new-instance v2, Ljava/security/NoSuchProviderException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_2
    invoke-virtual {v0, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v1

    .line 86
    .local v1, "s":Ljava/security/Provider$Service;
    if-nez v1, :cond_3

    .line 87
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no such algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    const-string/jumbo v4, " for provider "

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_3
    return-object v1
.end method

.method public static getService(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Provider$Service;
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_0
    invoke-virtual {p2, p0, p1}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v0

    .line 99
    .local v0, "s":Ljava/security/Provider$Service;
    if-nez v0, :cond_1

    .line 100
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    const-string/jumbo v3, " for provider "

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 101
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    return-object v0
.end method

.method public static getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 114
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    .local p1, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 126
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0, p1}, Lsun/security/jca/ProviderList;->getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getServices(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lsun/security/jca/ServiceId;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider$Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p0, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-static {}, Lsun/security/jca/Providers;->getProviderList()Lsun/security/jca/ProviderList;

    move-result-object v0

    .line 135
    .local v0, "list":Lsun/security/jca/ProviderList;
    invoke-virtual {v0, p0}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
