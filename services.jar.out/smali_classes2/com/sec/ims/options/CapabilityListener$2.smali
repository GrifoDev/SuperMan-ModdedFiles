.class Lcom/sec/ims/options/CapabilityListener$2;
.super Landroid/os/Handler;
.source "CapabilityListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/options/CapabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/ims/options/CapabilityListener;


# direct methods
.method constructor <init>(Lcom/sec/ims/options/CapabilityListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityListener$2;->this$0:Lcom/sec/ims/options/CapabilityListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/sec/ims/options/CapabilityListener$2;->this$0:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v4}, Lcom/sec/ims/options/CapabilityListener;->onOwnCapabilitiesChanged()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_1
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    new-instance v6, Landroid/util/Pair;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/sec/ims/options/CapabilityListener$2;->this$0:Lcom/sec/ims/options/CapabilityListener;

    invoke-virtual {v4, v2}, Lcom/sec/ims/options/CapabilityListener;->onMultipleCapabilitiesChanged(Ljava/util/List;)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v6, p0, Lcom/sec/ims/options/CapabilityListener$2;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v6, v4, v5}, Lcom/sec/ims/options/CapabilityListener;->onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/sec/ims/options/CapabilityListener$2;->this$0:Lcom/sec/ims/options/CapabilityListener;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/sec/ims/options/CapabilityListener;->onCapabilityAndAvailabilityPublished(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
