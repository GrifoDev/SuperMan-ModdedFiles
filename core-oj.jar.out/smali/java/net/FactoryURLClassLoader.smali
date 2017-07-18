.class final Ljava/net/FactoryURLClassLoader;
.super Ljava/net/URLClassLoader;
.source "URLClassLoader.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/lang/ClassLoader;->registerAsParallelCapable()Z

    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;Ljava/security/AccessControlContext;)V

    return-void
.end method

.method constructor <init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/security/AccessControlContext;)V

    return-void
.end method


# virtual methods
.method public final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v2, 0x2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/SecurityManager;->checkPackageAccess(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2}, Ljava/net/URLClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v2

    return-object v2
.end method
