.class final Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/media/MediaRouteProvider;


# direct methods
.method constructor <init>(Landroid/support/v7/media/MediaRouteProvider;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->deliverDescriptorChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/media/MediaRouteProvider$ProviderHandler;->this$0:Landroid/support/v7/media/MediaRouteProvider;

    invoke-virtual {v0}, Landroid/support/v7/media/MediaRouteProvider;->deliverDiscoveryRequestChanged()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
