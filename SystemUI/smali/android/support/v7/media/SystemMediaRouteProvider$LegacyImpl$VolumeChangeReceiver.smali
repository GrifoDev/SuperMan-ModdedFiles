.class final Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumeChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;


# direct methods
.method constructor <init>(Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const-string/jumbo v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    iget v2, v2, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$1:Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v2}, Landroid/support/v7/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    :cond_0
    return-void
.end method
