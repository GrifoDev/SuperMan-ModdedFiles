.class public final Lsun/security/ssl/Krb5Helper;
.super Ljava/lang/Object;
.source "Krb5Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/Krb5Helper$1;
    }
.end annotation


# static fields
.field private static final IMPL_CLASS:Ljava/lang/String; = "sun.security.ssl.krb5.Krb5ProxyImpl"

.field private static final proxy:Lsun/security/ssl/Krb5Proxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/security/ssl/Krb5Helper$1;

    invoke-direct {v0}, Lsun/security/ssl/Krb5Helper$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/ssl/Krb5Proxy;

    sput-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ensureAvailable()V
    .locals 2

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "Kerberos should have been available"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getClientSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getClientSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    move-result-object v0

    return-object v0
.end method

.method public static getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getPrincipalHostName(Ljava/security/Principal;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerKeys(Ljava/security/AccessControlContext;)[Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public static getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerPrincipalName(Ljavax/crypto/SecretKey;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0}, Lsun/security/ssl/Krb5Proxy;->getServerSubject(Ljava/security/AccessControlContext;)Ljavax/security/auth/Subject;

    move-result-object v0

    return-object v0
.end method

.method public static getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;
    .locals 1

    invoke-static {}, Lsun/security/ssl/Krb5Helper;->ensureAvailable()V

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    invoke-interface {v0, p0, p1}, Lsun/security/ssl/Krb5Proxy;->getServicePermission(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Permission;

    move-result-object v0

    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    sget-object v0, Lsun/security/ssl/Krb5Helper;->proxy:Lsun/security/ssl/Krb5Proxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
