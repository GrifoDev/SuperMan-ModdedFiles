.class public abstract Landroid/app/InstantAppResolverService;
.super Landroid/app/Service;
.source "InstantAppResolverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;,
        Landroid/app/InstantAppResolverService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_EPHEMERAL:Z

.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "android.app.extra.RESOLVE_INFO"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "android.app.extra.SEQUENCE"

.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method _onGetInstantAppIntentFilter([ILjava/lang/String;Ljava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] Phase2 request;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Landroid/app/InstantAppResolverService;->onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method _onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-boolean v0, Landroid/app/InstantAppResolverService;->DEBUG_EPHEMERAL:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] Phase1 request;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/InstantAppResolverService;->onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    new-instance v0, Landroid/app/InstantAppResolverService$ServiceHandler;

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/InstantAppResolverService$ServiceHandler;-><init>(Landroid/app/InstantAppResolverService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/InstantAppResolverService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method getLooper()Landroid/os/Looper;
    .locals 1

    invoke-virtual {p0}, Landroid/app/InstantAppResolverService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    new-instance v0, Landroid/app/InstantAppResolverService$1;

    invoke-direct {v0, p0}, Landroid/app/InstantAppResolverService$1;-><init>(Landroid/app/InstantAppResolverService;)V

    return-object v0
.end method

.method public onGetInstantAppIntentFilter([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must define"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetInstantAppResolveInfo([ILjava/lang/String;Landroid/app/InstantAppResolverService$InstantAppResolutionCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Must define"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
