.class public final Lsun/security/jca/JCAUtil;
.super Ljava/lang/Object;
.source "JCAUtil.java"


# static fields
.field private static final ARRAY_SIZE:I = 0x1000

.field private static final LOCK:Ljava/lang/Object;

.field private static volatile secureRandom:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lsun/security/jca/JCAUtil;

    sput-object v0, Lsun/security/jca/JCAUtil;->LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSecureRandom()Ljava/security/SecureRandom;
    .locals 4

    sget-object v0, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_1

    sget-object v3, Lsun/security/jca/JCAUtil;->LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v0, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;

    if-nez v0, :cond_0

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sput-object v1, Lsun/security/jca/JCAUtil;->secureRandom:Ljava/security/SecureRandom;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    :cond_0
    monitor-exit v3

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static getTempArraySize(I)I
    .locals 1

    const/16 v0, 0x1000

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
