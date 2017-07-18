.class public abstract Lsun/net/www/protocol/http/AuthCacheValue;
.super Ljava/lang/Object;
.source "AuthCacheValue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/net/www/protocol/http/AuthCacheValue$Type;
    }
.end annotation


# static fields
.field protected static cache:Lsun/net/www/protocol/http/AuthCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsun/net/www/protocol/http/AuthCacheImpl;

    invoke-direct {v0}, Lsun/net/www/protocol/http/AuthCacheImpl;-><init>()V

    sput-object v0, Lsun/net/www/protocol/http/AuthCacheValue;->cache:Lsun/net/www/protocol/http/AuthCache;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAuthCache(Lsun/net/www/protocol/http/AuthCache;)V
    .locals 0

    sput-object p0, Lsun/net/www/protocol/http/AuthCacheValue;->cache:Lsun/net/www/protocol/http/AuthCache;

    return-void
.end method


# virtual methods
.method abstract credentials()Ljava/net/PasswordAuthentication;
.end method

.method abstract getAuthScheme()Lsun/net/www/protocol/http/AuthScheme;
.end method

.method abstract getAuthType()Lsun/net/www/protocol/http/AuthCacheValue$Type;
.end method

.method abstract getHost()Ljava/lang/String;
.end method

.method abstract getPath()Ljava/lang/String;
.end method

.method abstract getPort()I
.end method

.method abstract getProtocolScheme()Ljava/lang/String;
.end method

.method abstract getRealm()Ljava/lang/String;
.end method
