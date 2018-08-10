.class final Landroid/support/v7/media/MediaRouterJellybean;
.super Ljava/lang/Object;
.source "MediaRouterJellybean.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/media/MediaRouterJellybean$Callback;,
        Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy;,
        Landroid/support/v7/media/MediaRouterJellybean$GetDefaultRouteWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybean$RouteCategory;,
        Landroid/support/v7/media/MediaRouterJellybean$RouteGroup;,
        Landroid/support/v7/media/MediaRouterJellybean$RouteInfo;,
        Landroid/support/v7/media/MediaRouterJellybean$SelectRouteWorkaround;,
        Landroid/support/v7/media/MediaRouterJellybean$UserRouteInfo;,
        Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;,
        Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public static addUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->addUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    return-void
.end method

.method public static createCallback(Landroid/support/v7/media/MediaRouterJellybean$Callback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouterJellybean$CallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybean$Callback;)V

    return-object v0
.end method

.method public static createRouteCategory(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->createRouteCategory(Ljava/lang/CharSequence;Z)Landroid/media/MediaRouter$RouteCategory;

    move-result-object v0

    return-object v0
.end method

.method public static createUserRoute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$RouteCategory;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->createUserRoute(Landroid/media/MediaRouter$RouteCategory;)Landroid/media/MediaRouter$UserRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static createVolumeCallback(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v7/media/MediaRouterJellybean$VolumeCallbackProxy;-><init>(Landroid/support/v7/media/MediaRouterJellybean$VolumeCallback;)V

    return-object v0
.end method

.method public static getMediaRouter(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "media_router"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getRoutes(Ljava/lang/Object;)Ljava/util/List;
    .locals 5

    move-object v3, p0

    check-cast v3, Landroid/media/MediaRouter;

    invoke-virtual {v3}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {v3, v1}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getSelectedRoute(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method

.method public static removeCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public static removeUserRoute(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p1, Landroid/media/MediaRouter$UserRouteInfo;

    invoke-virtual {p0, p1}, Landroid/media/MediaRouter;->removeUserRoute(Landroid/media/MediaRouter$UserRouteInfo;)V

    return-void
.end method

.method public static selectRoute(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method
