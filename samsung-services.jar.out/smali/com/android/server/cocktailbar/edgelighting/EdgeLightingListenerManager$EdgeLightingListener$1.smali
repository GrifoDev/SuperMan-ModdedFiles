.class Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;
.super Landroid/os/Handler;
.source "EdgeLightingListenerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-wrap0(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;->this$1:Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;

    invoke-static {v0}, Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->-wrap1(Lcom/android/server/cocktailbar/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
