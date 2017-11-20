.class Lcom/android/incallui/secrcs/RcsShareUI$9;
.super Lcom/sec/ims/options/CapabilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secrcs/RcsShareUI;
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

    iput-object p1, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/Capabilities;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged: uri= intent added : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " capabilities="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0, p2}, Lcom/android/incallui/secrcs/RcsShareUI;->updateRemoteCapabilities(Lcom/sec/ims/options/Capabilities;)V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$9$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$9$1;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onOwnCapabilitiesChanged()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/secrcs/RcsShareUI;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOwnCapabilitiesChanged  : "

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-static {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2700(Lcom/android/incallui/secrcs/RcsShareUI;)Lcom/sec/ims/options/CapabilityManager;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    sget-object v1, Lcom/android/incallui/secrcs/RcsShareUI;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/incallui/secrcs/RcsShareUI;->access$2600(Lcom/android/incallui/secrcs/RcsShareUI;Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secrcs/RcsShareUI$9;->this$0:Lcom/android/incallui/secrcs/RcsShareUI;

    invoke-virtual {v0}, Lcom/android/incallui/secrcs/RcsShareUI;->fetchOwnCapabilities()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/incallui/secrcs/RcsShareUI$9$2;

    invoke-direct {v1, p0}, Lcom/android/incallui/secrcs/RcsShareUI$9$2;-><init>(Lcom/android/incallui/secrcs/RcsShareUI$9;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
