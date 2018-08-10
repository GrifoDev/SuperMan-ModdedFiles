.class Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;
.super Landroid/os/Handler;
.source "RemoteViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap1(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Top activie check, b = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", a = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", p = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v5}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-interface {v3, v4, v6}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Try unlock 1"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-virtual {v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v3}, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap0(Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/systemui/servicebox/KeyguardStatusCallback;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-interface {v3, v4, v6}, Lcom/android/systemui/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    sget-object v3, Lcom/android/systemui/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Try unlock 2"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
