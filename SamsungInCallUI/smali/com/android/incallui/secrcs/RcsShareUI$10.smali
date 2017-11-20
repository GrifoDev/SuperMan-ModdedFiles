.class Lcom/android/incallui/secrcs/RcsShareUI$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sec/ims/options/CapabilityManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secrcs/RcsShareUI;->connectionListener()Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secrcs/RcsShareUI;


# direct methods
.method constructor <init>(Lcom/android/incallui/secrcs/RcsShareUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$10;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityManager connected"

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$500()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$10;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2700(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$10;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2700(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secrcs/RcsShareUI$10;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2800(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/ims/options/CapabilityManager;->registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "RemoteException ConnectionListener :"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityManager disconnected"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
