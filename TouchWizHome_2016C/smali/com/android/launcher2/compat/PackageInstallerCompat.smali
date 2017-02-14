.class public abstract Lcom/android/launcher2/compat/PackageInstallerCompat;
.super Ljava/lang/Object;
.source "PackageInstallerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/compat/PackageInstallerCompat$PackageInstallInfo;
    }
.end annotation


# static fields
.field public static final STATUS_FAILED:I = 0x2

.field public static final STATUS_INSTALLED:I = 0x0

.field public static final STATUS_INSTALLING:I = 0x1

.field private static sInstance:Lcom/android/launcher2/compat/PackageInstallerCompat;

.field private static final sInstanceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/PackageInstallerCompat;
    .locals 2

    sget-object v1, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher2/compat/PackageInstallerCompat;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher2/Utilities;->isLmpOrAbove()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/launcher2/compat/PackageInstallerCompatVL;

    invoke-direct {v0, p0}, Lcom/android/launcher2/compat/PackageInstallerCompatVL;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher2/compat/PackageInstallerCompat;

    :cond_0
    :goto_0
    sget-object v0, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher2/compat/PackageInstallerCompat;

    monitor-exit v1

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/launcher2/compat/PackageInstallerCompatV16;

    invoke-direct {v0}, Lcom/android/launcher2/compat/PackageInstallerCompatV16;-><init>()V

    sput-object v0, Lcom/android/launcher2/compat/PackageInstallerCompat;->sInstance:Lcom/android/launcher2/compat/PackageInstallerCompat;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public abstract onStop()V
.end method

.method public abstract updateAndGetActiveSessionCache()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
