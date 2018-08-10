.class Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;
.super Landroid/app/UserSwitchObserver;
.source "ExternalClockProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v1, p1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-wrap0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;I)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-set0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;Landroid/content/Context;)Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider$3;->this$0:Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;->-get0(Lcom/android/systemui/servicebox/pages/clock/ExternalClockProvider;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
