.class public Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thoughtworks/xstream/security/TypePermission;


# static fields
.field public static final PROXIES:Lcom/thoughtworks/xstream/security/TypePermission;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;-><init>()V

    sput-object v0, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;->PROXIES:Lcom/thoughtworks/xstream/security/TypePermission;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allows(Ljava/lang/Class;)Z
    .locals 3

    if-eqz p1, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lnet/sf/cglib/proxy/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lnet/sf/cglib/proxy/Proxy;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/thoughtworks/xstream/security/CGLIBProxyTypePermission;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method
