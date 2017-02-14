.class final Lsun/security/jca/ProviderConfig;
.super Ljava/lang/Object;
.source "ProviderConfig.java"


# static fields
.field private static final CL_STRING:[Ljava/lang/Class;

.field private static final MAX_LOAD_TRIES:I = 0x1e

.field private static final P11_SOL_ARG:Ljava/lang/String; = "${java.home}/lib/security/sunpkcs11-solaris.cfg"

.field private static final P11_SOL_NAME:Ljava/lang/String; = "sun.security.pkcs11.SunPKCS11"

.field private static final debug:Lsun/security/util/Debug;


# instance fields
.field private final argument:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private isLoading:Z

.field private volatile provider:Ljava/security/Provider;

.field private tries:I


# direct methods
.method static synthetic -get0(Lsun/security/jca/ProviderConfig;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Lsun/security/util/Debug;
    .locals 1

    sget-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    return-object v0
.end method

.method static synthetic -wrap0(Lsun/security/jca/ProviderConfig;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .locals 1

    invoke-direct {p0, p1, p2}, Lsun/security/jca/ProviderConfig;->initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lsun/security/jca/ProviderConfig;)V
    .locals 0

    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "jca"

    const-string/jumbo v1, "ProviderConfig"

    invoke-static {v0, v1}, Lsun/security/util/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/util/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lsun/security/jca/ProviderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sun.security.pkcs11.SunPKCS11"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "${java.home}/lib/security/sunpkcs11-solaris.cfg"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->checkSunPKCS11Solaris()V

    :cond_0
    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-static {p2}, Lsun/security/jca/ProviderConfig;->expand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/security/Provider;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/Provider;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    iput-object p1, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    return-void
.end method

.method private checkSunPKCS11Solaris()V
    .locals 2

    new-instance v1, Lsun/security/jca/ProviderConfig$1;

    invoke-direct {v1, p0}, Lsun/security/jca/ProviderConfig$1;-><init>(Lsun/security/jca/ProviderConfig;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    const/16 v1, 0x1e

    iput v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    :cond_0
    return-void
.end method

.method private disableLoad()V
    .locals 1

    const/16 v0, 0x1e

    iput v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    return-void
.end method

.method private doLoadProvider()Ljava/security/Provider;
    .locals 1

    new-instance v0, Lsun/security/jca/ProviderConfig$2;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$2;-><init>(Lsun/security/jca/ProviderConfig;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    return-object v0
.end method

.method private static expand(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "${"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lsun/security/jca/ProviderConfig$3;

    invoke-direct {v0, p0}, Lsun/security/jca/ProviderConfig$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private hasArgument()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private initProvider(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/security/Provider;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    :goto_1
    instance-of v3, v1, Ljava/security/Provider;

    if-eqz v3, :cond_3

    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_0

    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Loaded provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_0
    check-cast v1, Ljava/security/Provider;

    return-object v1

    :cond_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object v3, Lsun/security/jca/ProviderConfig;->CL_STRING:[Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    :cond_3
    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v3, :cond_4

    sget-object v3, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is not a provider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->disableLoad()V

    return-object v6
.end method

.method private shouldLoad()Z
    .locals 2

    iget v0, p0, Lsun/security/jca/ProviderConfig;->tries:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    instance-of v2, p1, Lsun/security/jca/ProviderConfig;

    if-nez v2, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lsun/security/jca/ProviderConfig;

    iget-object v2, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    iget-object v3, v0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    iget-object v2, v0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method

.method declared-synchronized getProvider()Ljava/security/Provider;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->shouldLoad()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_1

    monitor-exit p0

    return-object v4

    :cond_1
    :try_start_2
    iget-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    if-eqz v1, :cond_3

    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    if-eqz v1, :cond_2

    sget-object v1, Lsun/security/jca/ProviderConfig;->debug:Lsun/security/util/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Recursion loading provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/security/util/Debug;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "Call trace"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-object v4

    :cond_3
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    iget v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lsun/security/jca/ProviderConfig;->tries:I

    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->doLoadProvider()Ljava/security/Provider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    iput-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    const/4 v2, 0x0

    :try_start_5
    iput-boolean v2, p0, Lsun/security/jca/ProviderConfig;->isLoading:Z

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method isLoaded()Z
    .locals 1

    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->provider:Ljava/security/Provider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lsun/security/jca/ProviderConfig;->hasArgument()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/jca/ProviderConfig;->argument:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lsun/security/jca/ProviderConfig;->className:Ljava/lang/String;

    return-object v0
.end method
