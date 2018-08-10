.class public final Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetDefaultRouteWorkaround"
.end annotation


# instance fields
.field private mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-le v1, v2, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    :cond_1
    :try_start_0
    const-class v1, Landroid/media/MediaRouter;

    const-string/jumbo v2, "getSystemAudioRoute"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Landroid/media/MediaRouter;

    iget-object v3, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;->mGetSystemAudioRouteMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    invoke-virtual {v2, v5}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    return-object v3

    :catch_1
    move-exception v1

    goto :goto_0
.end method
