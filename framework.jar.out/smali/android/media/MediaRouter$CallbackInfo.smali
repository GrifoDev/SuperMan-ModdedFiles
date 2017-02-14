.class Landroid/media/MediaRouter$CallbackInfo;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackInfo"
.end annotation


# instance fields
.field public final cb:Landroid/media/MediaRouter$Callback;

.field public flags:I

.field public final router:Landroid/media/MediaRouter;

.field public type:I


# direct methods
.method public constructor <init>(Landroid/media/MediaRouter$Callback;IILandroid/media/MediaRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/media/MediaRouter$CallbackInfo;->cb:Landroid/media/MediaRouter$Callback;

    iput p2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    iput p3, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    iput-object p4, p0, Landroid/media/MediaRouter$CallbackInfo;->router:Landroid/media/MediaRouter;

    return-void
.end method


# virtual methods
.method public filterRouteEvent(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/media/MediaRouter$CallbackInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    iget v2, p0, Landroid/media/MediaRouter$CallbackInfo;->type:I

    and-int/2addr v2, p1

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public filterRouteEvent(Landroid/media/MediaRouter$RouteInfo;)Z
    .locals 1

    iget v0, p1, Landroid/media/MediaRouter$RouteInfo;->mSupportedTypes:I

    invoke-virtual {p0, v0}, Landroid/media/MediaRouter$CallbackInfo;->filterRouteEvent(I)Z

    move-result v0

    return v0
.end method
