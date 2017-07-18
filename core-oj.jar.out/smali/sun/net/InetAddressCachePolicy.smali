.class public final Lsun/net/InetAddressCachePolicy;
.super Ljava/lang/Object;
.source "InetAddressCachePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/InetAddressCachePolicy$1;,
        Lsun/net/InetAddressCachePolicy$2;
    }
.end annotation


# static fields
.field public static final DEFAULT_POSITIVE:I = 0x2

.field public static final FOREVER:I = -0x1

.field public static final NEVER:I = 0x0

.field private static cachePolicy:I = 0x0

.field private static final cachePolicyProp:Ljava/lang/String; = "networkaddress.cache.ttl"

.field private static final cachePolicyPropFallback:Ljava/lang/String; = "sun.net.inetaddr.ttl"

.field private static negativeCachePolicy:I = 0x0

.field private static final negativeCachePolicyProp:Ljava/lang/String; = "networkaddress.cache.negative.ttl"

.field private static final negativeCachePolicyPropFallback:Ljava/lang/String; = "sun.net.inetaddr.negative.ttl"

.field private static propertyNegativeSet:Z

.field private static propertySet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    new-instance v3, Lsun/net/InetAddressCachePolicy$1;

    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$1;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    if-gez v3, :cond_0

    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    :cond_0
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    move-object v2, v1

    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    new-instance v3, Lsun/net/InetAddressCachePolicy$2;

    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$2;-><init>()V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    if-gez v3, :cond_1

    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    :cond_1
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    :cond_2
    :goto_3
    return-void

    :cond_3
    new-instance v3, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v4, "sun.net.inetaddr.ttl"

    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    if-gez v3, :cond_4

    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    :cond_4
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    move-object v2, v1

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x2

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :cond_6
    new-instance v3, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v4, "sun.net.inetaddr.negative.ttl"

    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    if-gez v3, :cond_7

    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    :cond_7
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_8
    move-object v2, v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValue(II)V
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    if-eq p1, v0, :cond_1

    if-ge p0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "can\'t make InetAddress cache more lax"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lt p0, v0, :cond_1

    return-void
.end method

.method public static declared-synchronized get()I
    .locals 2

    const-class v0, Lsun/net/InetAddressCachePolicy;

    monitor-enter v0

    :try_start_0
    sget v1, Lsun/net/InetAddressCachePolicy;->cachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getNegative()I
    .locals 2

    const-class v0, Lsun/net/InetAddressCachePolicy;

    monitor-enter v0

    :try_start_0
    sget v1, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setIfNotSet(I)V
    .locals 2

    const-class v1, Lsun/net/InetAddressCachePolicy;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    if-nez v0, :cond_0

    sget v0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    invoke-static {p0, v0}, Lsun/net/InetAddressCachePolicy;->checkValue(II)V

    sput p0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setNegativeIfNotSet(I)V
    .locals 2

    const-class v1, Lsun/net/InetAddressCachePolicy;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    if-nez v0, :cond_0

    sput p0, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
