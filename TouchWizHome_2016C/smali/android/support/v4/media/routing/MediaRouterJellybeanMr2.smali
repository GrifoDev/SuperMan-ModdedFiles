.class Landroid/support/v4/media/routing/MediaRouterJellybeanMr2;
.super Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;
.source "MediaRouterJellybeanMr2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$UserRouteInfo;,
        Landroid/support/v4/media/routing/MediaRouterJellybeanMr2$RouteInfo;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/routing/MediaRouterJellybeanMr1;-><init>()V

    return-void
.end method

.method public static addCallback(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    check-cast p0, Landroid/media/MediaRouter;

    check-cast p2, Landroid/media/MediaRouter$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    return-void
.end method

.method public static getDefaultRoute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Landroid/media/MediaRouter;

    invoke-virtual {p0}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    return-object v0
.end method
