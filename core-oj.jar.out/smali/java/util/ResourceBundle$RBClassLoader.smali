.class Ljava/util/ResourceBundle$RBClassLoader;
.super Ljava/lang/ClassLoader;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ResourceBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RBClassLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$RBClassLoader$1;
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

.field private static final loader:Ljava/lang/ClassLoader;


# direct methods
.method static synthetic -get0()Ljava/util/ResourceBundle$RBClassLoader;
    .locals 1

    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 441
    new-instance v0, Ljava/util/ResourceBundle$RBClassLoader$1;

    invoke-direct {v0}, Ljava/util/ResourceBundle$RBClassLoader$1;-><init>()V

    .line 440
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ResourceBundle$RBClassLoader;

    sput-object v0, Ljava/util/ResourceBundle$RBClassLoader;->INSTANCE:Ljava/util/ResourceBundle$RBClassLoader;

    .line 446
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    .line 439
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/ResourceBundle$RBClassLoader;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/ResourceBundle$RBClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 458
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0

    .line 460
    :cond_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 464
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 466
    :cond_0
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 451
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Ljava/util/ResourceBundle$RBClassLoader;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
