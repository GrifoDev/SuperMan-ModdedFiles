.class public abstract Landroid/net/NetworkRecommendationProvider;
.super Ljava/lang/Object;
.source "NetworkRecommendationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkRecProvider"

.field private static final VERBOSE:Z


# instance fields
.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkRecProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Landroid/net/NetworkRecommendationProvider;->VERBOSE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;-><init>(Landroid/net/NetworkRecommendationProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/net/NetworkRecommendationProvider;->mService:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract onRequestScores([Landroid/net/NetworkKey;)V
.end method
