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

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 64
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    .line 74
    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    .line 92
    const/4 v1, 0x0

    .line 95
    .local v1, "tmp":Ljava/lang/Integer;
    :try_start_0
    new-instance v2, Ljava/lang/Integer;

    .line 97
    new-instance v3, Lsun/net/InetAddressCachePolicy$1;

    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$1;-><init>()V

    .line 96
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "tmp":Ljava/lang/Integer;
    .local v2, "tmp":Ljava/lang/Integer;
    move-object v1, v2

    .line 105
    .end local v2    # "tmp":Ljava/lang/Integer;
    :goto_0
    if-eqz v1, :cond_3

    .line 106
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    .line 107
    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    if-gez v3, :cond_0

    .line 108
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    .line 110
    :cond_0
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    move-object v2, v1

    .line 131
    .restart local v2    # "tmp":Ljava/lang/Integer;
    :goto_1
    :try_start_1
    new-instance v1, Ljava/lang/Integer;

    .line 133
    new-instance v3, Lsun/net/InetAddressCachePolicy$2;

    invoke-direct {v3}, Lsun/net/InetAddressCachePolicy$2;-><init>()V

    .line 132
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 131
    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .end local v2    # "tmp":Ljava/lang/Integer;
    .local v1, "tmp":Ljava/lang/Integer;
    :goto_2
    if-eqz v1, :cond_6

    .line 143
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    .line 144
    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    if-gez v3, :cond_1

    .line 145
    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    .line 147
    :cond_1
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    .line 32
    :cond_2
    :goto_3
    return-void

    .line 113
    .end local v1    # "tmp":Ljava/lang/Integer;
    :cond_3
    new-instance v3, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v4, "sun.net.inetaddr.ttl"

    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 114
    .restart local v1    # "tmp":Ljava/lang/Integer;
    if-eqz v1, :cond_5

    .line 115
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    .line 116
    sget v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    if-gez v3, :cond_4

    .line 117
    sput v5, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    .line 119
    :cond_4
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    move-object v2, v1

    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1

    .line 124
    .end local v2    # "tmp":Ljava/lang/Integer;
    .restart local v1    # "tmp":Ljava/lang/Integer;
    :cond_5
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_8

    .line 125
    const/4 v3, 0x2

    sput v3, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    move-object v2, v1

    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1

    .line 138
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object v1, v2

    .end local v2    # "tmp":Ljava/lang/Integer;
    .restart local v1    # "tmp":Ljava/lang/Integer;
    goto :goto_2

    .line 150
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    new-instance v3, Lsun/security/action/GetIntegerAction;

    const-string/jumbo v4, "sun.net.inetaddr.negative.ttl"

    invoke-direct {v3, v4}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tmp":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 151
    .restart local v1    # "tmp":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 152
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    .line 153
    sget v3, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    if-gez v3, :cond_7

    .line 154
    sput v5, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I

    .line 156
    :cond_7
    sput-boolean v6, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    goto :goto_3

    .line 102
    .local v1, "tmp":Ljava/lang/Integer;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v1, "tmp":Ljava/lang/Integer;
    :cond_8
    move-object v2, v1

    .end local v1    # "tmp":Ljava/lang/Integer;
    .restart local v2    # "tmp":Ljava/lang/Integer;
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkValue(II)V
    .locals 2
    .param p0, "newPolicy"    # I
    .param p1, "oldPolicy"    # I

    .prologue
    const/4 v0, -0x1

    .line 215
    if-ne p0, v0, :cond_0

    .line 216
    return-void

    .line 218
    :cond_0
    if-eq p1, v0, :cond_1

    .line 219
    if-ge p0, p1, :cond_2

    .line 222
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 223
    const-string/jumbo v1, "can\'t make InetAddress cache more lax"

    .line 222
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    if-lt p0, v0, :cond_1

    .line 209
    return-void
.end method

.method public static declared-synchronized get()I
    .locals 2

    .prologue
    const-class v0, Lsun/net/InetAddressCachePolicy;

    monitor-enter v0

    .line 162
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

    .prologue
    const-class v0, Lsun/net/InetAddressCachePolicy;

    monitor-enter v0

    .line 166
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
    .param p0, "newPolicy"    # I

    .prologue
    const-class v1, Lsun/net/InetAddressCachePolicy;

    monitor-enter v1

    .line 182
    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertySet:Z

    if-nez v0, :cond_0

    .line 183
    sget v0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I

    invoke-static {p0, v0}, Lsun/net/InetAddressCachePolicy;->checkValue(II)V

    .line 184
    sput p0, Lsun/net/InetAddressCachePolicy;->cachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 176
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setNegativeIfNotSet(I)V
    .locals 2
    .param p0, "newPolicy"    # I

    .prologue
    const-class v1, Lsun/net/InetAddressCachePolicy;

    monitor-enter v1

    .line 201
    :try_start_0
    sget-boolean v0, Lsun/net/InetAddressCachePolicy;->propertyNegativeSet:Z

    if-nez v0, :cond_0

    .line 205
    sput p0, Lsun/net/InetAddressCachePolicy;->negativeCachePolicy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 195
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
