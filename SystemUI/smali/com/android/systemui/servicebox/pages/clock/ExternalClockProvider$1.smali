.class Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;
.super Landroid/os/Handler;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

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
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-wrap1(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$1;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    invoke-static {v1, v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-wrap2(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/net/Uri;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
