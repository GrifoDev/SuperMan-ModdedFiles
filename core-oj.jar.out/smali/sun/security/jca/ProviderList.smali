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

    const/4 v2, 0x0

    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "ProviderList"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    sput-object v0, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    new-array v0, v2, [Ljava/security/Provider;

    sput-object v0, Lsun/security/jca/ProviderList;->P0:[Ljava/security/Provider;

    new-instance v0, Lsun/security/jca/ProviderList;

    sget-object v1, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY:Lsun/security/jca/ProviderList;

    new-instance v0, Lsun/security/jca/ProviderList$1;

    const-string/jumbo v1, "##Empty##"

    const-string/jumbo v2, "initialization in progress"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v4, v5, v2}, Lsun/security/jca/ProviderList$1;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    sput-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v7, Lsun/security/jca/ProviderList$2;

    invoke-direct {v7, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v7, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x1

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

    if-nez v4, :cond_1

    :goto_1
    sget-object v7, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lsun/security/jca/ProviderConfig;

    iput-object v7, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    sget-object v7, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v7, :cond_0

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

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

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

    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v4}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, v1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Lsun/security/jca/ProviderList;)V
    .locals 0

    invoke-direct {p0}, Lsun/security/jca/ProviderList;-><init>()V

    return-void
.end method

.method private constructor <init>([Lsun/security/jca/ProviderConfig;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/security/jca/ProviderList$2;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderList$2;-><init>(Lsun/security/jca/ProviderList;)V

    iput-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    iput-object p1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    iput-boolean p2, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    return-void
.end method

.method public static add(Lsun/security/jca/ProviderList;Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Lsun/security/jca/ProviderList;->insertAt(Lsun/security/jca/ProviderList;Ljava/security/Provider;I)Lsun/security/jca/ProviderList;

    move-result-object v0

    return-object v0
.end method

.method static fromSecurityProperties()Lsun/security/jca/ProviderList;
    .locals 1

    new-instance v0, Lsun/security/jca/ProviderList$3;

    invoke-direct {v0}, Lsun/security/jca/ProviderList$3;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/jca/ProviderList;

    return-object v0
.end method

.method private getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;
    .locals 2

    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getIndex(Ljava/lang/String;)I

    move-result v0

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

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    :cond_1
    move p2, v1

    :cond_2
    new-instance v2, Lsun/security/jca/ProviderConfig;

    invoke-direct {v2, p1}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    invoke-interface {v0, p2, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

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

    iget-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    return v3

    :cond_0
    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_1

    sget-object v3, Lsun/security/jca/ProviderList;->debug:Lsun/security/util/Debug;

    const-string/jumbo v4, "Loading all providers"

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "Call trace"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ne v1, v3, :cond_4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lsun/security/jca/ProviderList;->allLoaded:Z

    :cond_4
    return v1
.end method

.method public static varargs newList([Ljava/security/Provider;)Lsun/security/jca/ProviderList;
    .locals 4

    array-length v2, p0

    new-array v0, v2, [Lsun/security/jca/ProviderConfig;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    new-instance v2, Lsun/security/jca/ProviderConfig;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/security/Provider;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lsun/security/jca/ProviderList;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v2
.end method

.method public static remove(Lsun/security/jca/ProviderList;Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 8

    invoke-virtual {p0, p1}, Lsun/security/jca/ProviderList;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v4

    if-nez v4, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lsun/security/jca/ProviderList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    new-array v1, v4, [Lsun/security/jca/ProviderConfig;

    const/4 v2, 0x0

    iget-object v5, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    const/4 v4, 0x0

    array-length v6, v5

    move v3, v2

    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v0, v5, v4

    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v2, v3, 0x1

    aput-object v0, v1, v3

    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    new-instance v4, Lsun/security/jca/ProviderList;

    const/4 v5, 0x1

    invoke-direct {v4, v1, v5}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v4

    :cond_2
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method getJarList([Ljava/lang/String;)Lsun/security/jca/ProviderList;
    .locals 12

    const/4 v6, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v0, p1, v7

    new-instance v3, Lsun/security/jca/ProviderConfig;

    invoke-direct {v3, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v10, v9

    move v5, v6

    :goto_1
    if-ge v5, v10, :cond_0

    aget-object v1, v9, v5

    invoke-virtual {v1, v3}, Lsun/security/jca/ProviderConfig;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v3, v1

    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    sget-object v5, Lsun/security/jca/ProviderList;->PC0:[Lsun/security/jca/ProviderConfig;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lsun/security/jca/ProviderConfig;

    new-instance v5, Lsun/security/jca/ProviderList;

    invoke-direct {v5, v2, v6}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v5
.end method

.method getProvider(I)Ljava/security/Provider;
    .locals 2

    iget-object v1, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lsun/security/jca/ProviderConfig;->getProvider()Ljava/security/Provider;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lsun/security/jca/ProviderList;->EMPTY_PROVIDER:Ljava/security/Provider;

    goto :goto_0
.end method

.method public getProvider(Ljava/lang/String;)Ljava/security/Provider;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lsun/security/jca/ProviderList;->getProviderConfig(Ljava/lang/String;)Lsun/security/jca/ProviderConfig;

    move-result-object v0

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

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Lsun/security/jca/ProviderList;->getProvider(I)Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public getServices(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    new-instance v0, Lsun/security/jca/ProviderList$ServiceList;

    invoke-direct {v0, p0, p1, p2}, Lsun/security/jca/ProviderList$ServiceList;-><init>(Lsun/security/jca/ProviderList;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getServices(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lsun/security/jca/ServiceId;

    invoke-direct {v3, p1, v0}, Lsun/security/jca/ServiceId;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

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

    iget-object v0, p0, Lsun/security/jca/ProviderList;->userList:Ljava/util/List;

    return-object v0
.end method

.method removeInvalid()Lsun/security/jca/ProviderList;
    .locals 8

    invoke-direct {p0}, Lsun/security/jca/ProviderList;->loadAll()I

    move-result v4

    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ne v4, v6, :cond_0

    return-object p0

    :cond_0
    new-array v5, v4, [Lsun/security/jca/ProviderConfig;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    aget-object v0, v6, v1

    invoke-virtual {v0}, Lsun/security/jca/ProviderConfig;->isLoaded()Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v3, v2, 0x1

    aput-object v0, v5, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v6, Lsun/security/jca/ProviderList;

    const/4 v7, 0x1

    invoke-direct {v6, v5, v7}, Lsun/security/jca/ProviderList;-><init>([Lsun/security/jca/ProviderConfig;Z)V

    return-object v6
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Ljava/security/Provider;
    .locals 2

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

    iget-object v0, p0, Lsun/security/jca/ProviderList;->configs:[Lsun/security/jca/ProviderConfig;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
