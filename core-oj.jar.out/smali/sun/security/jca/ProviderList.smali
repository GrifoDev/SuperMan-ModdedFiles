.class public final Lsun/security/jca/ProviderList;
.super Ljava/lang/Object;
.source "ProviderList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/jca/ProviderList$1;,
        Lsun/security/jca/ProviderList$2;,
        Lsun/security/jca/ProviderList$ServiceList;
    }
.end annotation


# static fields
.field static final EMPTY:Lsun/security/jca/ProviderList;

.field private static final EMPTY_PROVIDER:Ljava/security/Provider;

.field private static final P0:[Ljava/security/Provider;

.field private static final PC0:[Lsun/security/jca/ProviderConfig;

.field static final debug:Lsun/security/util/Debug;


# instance fields
.field private volatile allLoaded:Z

.field private final configs:[Lsun/security/jca/ProviderConfig;

.field private final userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lsun/security/jca/ProviderList;)[Lsun/security/jca/ProviderConfig;
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 59
    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "ProviderList"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    .line 58
    sput-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    .line 61
    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    sput-object v0, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    .line 63
    new-array v0, v2, [Ljava/security/Provider;

    sput-object v0, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    .line 66
    new-instance v0, Lsun/security/jca/ProviderList;

    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    .line 71
    new-instance v0, Lsun/security/jca/ProviderList$1;

    const-string/jumbo v1, "##Empty##"

    const-string/jumbo v2, "initialization in progress"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v4, v5, v2}, Lsun/security/jca/ProviderList$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 70
    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v7, Lsun/security/jca/ProviderList$2;

    invoke-direct {v7, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v7, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 163
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .local v3, "configList":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    const/4 v5, 0x1

    .line 165
    .local v5, "i":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "security.provider."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "entry":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 190
    :goto_1
    sget-object v7, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lsun/security/jca/ProviderConfig;

    iput-object v7, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 191
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

    .line 192
    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "provider configuration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void

    .line 169
    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 170
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 171
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid entry for security.provider."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 175
    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 177
    .local v6, "k":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    .line 178
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v4}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .line 186
    .local v2, "config":Lsun/security/jca/ProviderConfig;
    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 187
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "config":Lsun/security/jca/ProviderConfig;
    :cond_4
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "className":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "argument":Ljava/lang/String;
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "config":Lsun/security/jca/ProviderConfig;
    goto :goto_2
.end method

.method synthetic constructor <init>(Lsun/security/jca/ProviderList;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lsun/security/jca/ProviderList;-><init>()V

    return-void
.end method

.method private constructor <init>([Lsun/security/jca/ProviderConfig;Z)V
    .locals 1
    .param p1, "configs"    # [Lsun/security/jca/ProviderConfig;
    .param p2, "allLoaded"    # Z

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lsun/security/jca/ProviderList$2;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    .line 155
    iput-object p1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    .line 156
    iput-boolean p2, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 154
    return-void
.end method

.method public static add(Lsun/security/jca/ProviderList;Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 1
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;

    .prologue
    .line 91
    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static fromSecurityProperties()Lsun/security/jca/ProviderList;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lsun/security/jca/ProviderList$3;

    invoke-direct {v0}, Lsun/security/jca/ProviderList$3;-><init>()V

    .line 82
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method private getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;
    .locals 5
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "p"    # Ljava/security/Provider;
    .param p2, "position"    # I

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 97
    return-object p0

    .line 99
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 100
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 99
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 102
    .local v1, "n":I
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 103
    :cond_1
    move p2, v1

    .line 105
    :cond_2
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, p1}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    invoke-interface {v0, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 106
    new-instance v3, Lsun/security/jca/ProviderList;

    sget-object v2, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v3
.end method

.method private loadAll()I
    .locals 5

    .prologue
    .line 272
    iget-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    if-eqz v3, :cond_0

    .line 273
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    return v3

    .line 275
    :cond_0
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    .line 276
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "Loading all providers"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    .line 277
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Call trace"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    :cond_1
    const/4 v1, 0x0

    .line 280
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 281
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v2

    .line 282
    .local v2, "p":Ljava/security/Provider;
    if-eqz v2, :cond_2

    .line 283
    add-int/lit8 v1, v1, 0x1

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    .end local v2    # "p":Ljava/security/Provider;
    :cond_3
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ne v1, v3, :cond_4

    .line 287
    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    .line 289
    :cond_4
    return v1
.end method

.method public static varargs newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 4
    .param p0, "providers"    # [Ljava/security/Provider;

    .prologue
    .line 128
    array-length v2, p0

    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    .line 129
    .local v0, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 130
    new-instance v2, Lsun/security/jca/ProviderConfig;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    aput-object v2, v0, v1

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v2, Lsun/security/jca/ProviderList;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v2
.end method

.method public static remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 8
    .param p0, "providerList"    # Lsun/security/jca/ProviderList;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-nez v4, :cond_0

    .line 112
    return-object p0

    .line 115
    :cond_0
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lsun/security/jca/ProviderConfig;

    .line 116
    .local v1, "configs":[Lsun/security/jca/ProviderConfig;
    const/4 v2, 0x0

    .line 117
    .local v2, "j":I
    iget-object v5, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x0

    array-length v6, v5

    move v3, v2

    .end local v2    # "j":I
    .local v3, "j":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    .line 118
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 119
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    aput-object v0, v1, v3

    .line 117
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    .end local v2    # "j":I
    .restart local v3    # "j":I
    goto :goto_0

    .line 122
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_1
    new-instance v4, Lsun/security/jca/ProviderList;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v4

    .restart local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_2
    move v2, v3

    .end local v3    # "j":I
    .restart local v2    # "j":I
    goto :goto_1
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 263
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    return v0

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "p":Ljava/security/Provider;
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 12
    .param p1, "jarClassNames"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 203
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v4, "newConfigs":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ProviderConfig;>;"
    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p1, v7

    .line 205
    .local v0, "className":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ProviderConfig;

    invoke-direct {v3, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    .line 206
    .local v3, "newConfig":Lsun/security/jca/ProviderConfig;
    iget-object v9, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v10, v9

    move v5, v6

    :goto_1
    if-ge v5, v10, :cond_0

    aget-object v1, v9, v5

    .line 212
    .local v1, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v1, v3}, Lsun/security/jca/ProviderConfig;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 213
    move-object v3, v1

    .line 217
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 206
    .restart local v1    # "config":Lsun/security/jca/ProviderConfig;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "config":Lsun/security/jca/ProviderConfig;
    .end local v3    # "newConfig":Lsun/security/jca/ProviderConfig;
    :cond_2
    sget-object v5, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/jca/ProviderConfig;

    .line 220
    .local v2, "configArray":[Lsun/security/jca/ProviderConfig;
    new-instance v5, Lsun/security/jca/ProviderList;

    invoke-direct {v5, v2, v6}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v5
.end method

.method getProvider(I)Ljava/security/Provider;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v0

    .line 233
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_0

    .end local v0    # "p":Ljava/security/Provider;
    :goto_0
    return-object v0

    .restart local v0    # "p":Ljava/security/Provider;
    :cond_0
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList;->getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;

    move-result-object v0

    .line 253
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v1

    goto :goto_0
.end method

.method public getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 329
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 330
    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    .line 331
    .local v1, "p":Ljava/security/Provider;
    invoke-virtual {v1, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    .line 332
    .local v2, "s":Ljava/security/Provider$Service;
    if-eqz v2, :cond_0

    .line 333
    return-object v2

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "p":Ljava/security/Provider;
    .end local v2    # "s":Ljava/security/Provider$Service;
    :cond_1
    return-object v4
.end method

.method public getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;
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
    .line 349
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;
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
    .line 359
    .local p2, "algorithms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "alg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 361
    .local v0, "alg":Ljava/lang/String;
    new-instance v3, Lsun/security/jca/ServiceId;

    invoke-direct {v3, p1, v0}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .end local v0    # "alg":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getServices(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public getServices(Ljava/util/List;)Ljava/util/List;
    .locals 1
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
    .line 367
    .local p1, "ids":Ljava/util/List;, "Ljava/util/List<Lsun/security/jca/ServiceId;>;"
    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/util/List;)V

    return-object v0
.end method

.method public providers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Provider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 242
    iget-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    return-object v0
.end method

.method removeInvalid()Lsun/security/jca/ProviderList;
    .locals 8

    .prologue
    .line 298
    invoke-direct {p0}, Lsun/security/jca/ProviderList;->loadAll()I

    move-result v4

    .line 299
    .local v4, "n":I
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    .line 300
    return-object p0

    .line 302
    :cond_0
    new-array v5, v4, [Lsun/security/jca/ProviderConfig;

    .line 303
    .local v5, "newConfigs":[Lsun/security/jca/ProviderConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 304
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v0, v6, v1

    .line 305
    .local v0, "config":Lsun/security/jca/ProviderConfig;
    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 306
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    aput-object v0, v5, v2

    move v2, v3

    .line 303
    .end local v3    # "j":I
    .restart local v2    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "config":Lsun/security/jca/ProviderConfig;
    :cond_2
    new-instance v6, Lsun/security/jca/ProviderList;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v6
.end method

.method public size()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/security/Provider;
    .locals 2

    .prologue
    .line 314
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->providers()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/Provider;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
