.class Lcom/android/systemui/statusbar/ServiceMonitor$1;
.super Landroid/os/Handler;
.source "ServiceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ServiceMonitor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ServiceMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap5(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap2(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap6(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap3(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    invoke-static {v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap1(Lcom/android/systemui/statusbar/ServiceMonitor;)V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/ServiceMonitor$1;->this$0:Lcom/android/systemui/statusbar/ServiceMonitor;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/ServiceMonitor;->-wrap4(Lcom/android/systemui/statusbar/ServiceMonitor;Landroid/content/ComponentName;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
