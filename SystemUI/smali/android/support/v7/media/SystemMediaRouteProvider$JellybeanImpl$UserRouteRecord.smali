.class public final Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;
.super Ljava/lang/Object;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "UserRouteRecord"
.end annotation


# instance fields
.field public final mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

.field public final mRouteObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v7/media/MediaRouter$RouteInfo;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRoute:Landroid/support/v7/media/MediaRouter$RouteInfo;

    iput-object p2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$JellybeanImpl$UserRouteRecord;->mRouteObj:Ljava/lang/Object;

    return-void
.end method
