.class public final Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;
.super Ljava/lang/Object;
.source "MediaRouterJellybeanMr1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouterJellybeanMr1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IsConnectingWorkaround"
.end annotation


# instance fields
.field private mGetStatusCodeMethod:Ljava/lang/reflect/Method;

.field private mStatusConnecting:I


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-eq v4, v5, :cond_0

    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    :cond_0
    :try_start_0
    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    const-string/jumbo v5, "STATUS_CONNECTING"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v4

    iput v4, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I

    const-class v4, Landroid/media/MediaRouter$RouteInfo;

    const-string/jumbo v5, "getStatusCode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public isConnecting(Ljava/lang/Object;)Z
    .locals 7

    const/4 v5, 0x0

    move-object v2, p1

    check-cast v2, Landroid/media/MediaRouter$RouteInfo;

    iget-object v4, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1

    :try_start_0
    iget-object v4, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mGetStatusCodeMethod:Ljava/lang/reflect/Method;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, p0, Landroid/support/v7/media/MediaRouterJellybeanMr1$IsConnectingWorkaround;->mStatusConnecting:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    return v5

    :catch_1
    move-exception v1

    goto :goto_1
.end method
