.class public final Lcom/sun/net/ssl/internal/ssl/Provider;
.super Lsun/security/ssl/SunJSSE;
.source "Provider.java"


# static fields
.field private static final serialVersionUID:J = 0x2cd9c06322ee4a2dL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lsun/security/ssl/SunJSSE;-><init>()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0
    .param p1, "cryptoProvider"    # Ljava/security/Provider;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lsun/security/ssl/SunJSSE;-><init>(Ljava/security/Provider;)V

    .line 45
    return-void
.end method

.method public static declared-synchronized install()V
    .locals 1

    .prologue
    const-class v0, Lcom/sun/net/ssl/internal/ssl/Provider;

    monitor-enter v0

    monitor-exit v0

    .line 62
    return-void
.end method

.method public static declared-synchronized isFIPS()Z
    .locals 2

    .prologue
    const-class v0, Lcom/sun/net/ssl/internal/ssl/Provider;

    monitor-enter v0

    .line 56
    :try_start_0
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
