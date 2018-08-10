.class public final Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectRouteWorkaround"
.end annotation


# instance fields
.field private mSelectRouteIntMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 6

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

    const-string/jumbo v2, "selectRouteInt"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9

    move-object v4, p1

    check-cast v4, Landroid/media/MediaRouter;

    move-object v2, p3

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroid/media/MediaRouter$RouteInfo;->getSupportedTypes()I

    move-result v3

    const/high16 v5, 0x800000

    and-int/2addr v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;->mSelectRouteIntMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const/4 v7, 0x1

    aput-object v2, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {v4, p2, v2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void

    :catch_1
    move-exception v0

    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route.  Media routing may not work."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "MediaRouterJellybean"

    const-string/jumbo v6, "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
