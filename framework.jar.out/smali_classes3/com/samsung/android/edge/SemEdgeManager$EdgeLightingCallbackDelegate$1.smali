.class Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;
.super Landroid/os/Handler;
.source "SemEdgeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;-><init>(Lcom/samsung/android/edge/SemEdgeManager;Lcom/samsung/android/edge/OnEdgeLightingCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;


# direct methods
.method constructor <init>(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v5

    if-eqz v5, :cond_0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "info"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/edge/SemEdgeLightingInfo;

    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v3, v0, v5}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v4}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v4, v2, v5}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onStopEdgeLighting(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate$1;->this$1:Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;

    invoke-static {v5}, Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;->-get0(Lcom/samsung/android/edge/SemEdgeManager$EdgeLightingCallbackDelegate;)Lcom/samsung/android/edge/OnEdgeLightingCallback;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-ne v6, v4, :cond_1

    :goto_1
    invoke-interface {v5, v4}, Lcom/samsung/android/edge/OnEdgeLightingCallback;->onScreenChanged(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
