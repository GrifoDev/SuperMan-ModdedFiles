.class final Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;
.super Landroid/support/v7/media/MediaRouteProvider$RouteController;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DefaultRouteController"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p0}, Landroid/support/v7/media/MediaRouteProvider$RouteController;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetVolume(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v0, v0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    iget-object v0, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v0}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x3

    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v3, v3, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v3, v3, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    add-int v3, v2, p1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget-object v3, v3, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4, v2, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_0
    iget-object v3, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$DefaultRouteController;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v3}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    return-void
.end method
