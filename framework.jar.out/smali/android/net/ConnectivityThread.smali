.class public final Landroid/net/ConnectivityThread;
.super Landroid/os/HandlerThread;
.source "ConnectivityThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ConnectivityThread$Singleton;
    }
.end annotation


# direct methods
.method static synthetic -wrap0()Landroid/net/ConnectivityThread;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread;->createInstance()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "ConnectivityThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static createInstance()Landroid/net/ConnectivityThread;
    .locals 1

    new-instance v0, Landroid/net/ConnectivityThread;

    invoke-direct {v0}, Landroid/net/ConnectivityThread;-><init>()V

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->start()V

    return-object v0
.end method

.method public static get()Landroid/net/ConnectivityThread;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->-get0()Landroid/net/ConnectivityThread;

    move-result-object v0

    return-object v0
.end method

.method public static getInstanceLooper()Landroid/os/Looper;
    .locals 1

    invoke-static {}, Landroid/net/ConnectivityThread$Singleton;->-get0()Landroid/net/ConnectivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method
