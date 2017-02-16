.class public abstract Lcom/android/internal/app/EphemeralResolverService;
.super Landroid/app/Service;
.source "EphemeralResolverService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final EXTRA_RESOLVE_INFO:Ljava/lang/String; = "com.android.internal.app.RESOLVE_INFO"

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "com.android.internal.app.SEQUENCE"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/internal/app/EphemeralResolverService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/app/EphemeralResolverService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected final attachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 54
    new-instance v0, Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/app/EphemeralResolverService$ServiceHandler;-><init>(Lcom/android/internal/app/EphemeralResolverService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/app/EphemeralResolverService;->mHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method protected abstract getEphemeralResolveInfoList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/EphemeralResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    new-instance v0, Lcom/android/internal/app/EphemeralResolverService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/EphemeralResolverService$1;-><init>(Lcom/android/internal/app/EphemeralResolverService;)V

    return-object v0
.end method
