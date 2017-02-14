.class Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;
.super Landroid/os/Handler;
.source "NetworkLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/networklock/NetworkLockUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    const-string/jumbo v3, "network_lock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSimLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get0()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get0()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->setVzwNetworkUnLocked(Landroid/content/Context;)V

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get3(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get3(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get0()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;->onChangeLockStatus(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;)Lcom/samsung/android/settings/networklock/NetworkLockUtils$OnLockStatusListener;

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-get2(Lcom/samsung/android/settings/networklock/NetworkLockUtils;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/networklock/NetworkLockUtils$1;->this$0:Lcom/samsung/android/settings/networklock/NetworkLockUtils;

    invoke-static {v3, v6}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set1(Lcom/samsung/android/settings/networklock/NetworkLockUtils;Lcom/samsung/android/sec_platform_library/FactoryPhone;)Lcom/samsung/android/sec_platform_library/FactoryPhone;

    :cond_2
    return-void

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "error"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "get status failure."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "get status success"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "response"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v3, v0

    if-lez v3, :cond_5

    aget-byte v3, v0, v5

    if-ne v3, v7, :cond_4

    invoke-static {v7}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set0(Z)Z

    goto/16 :goto_0

    :cond_4
    invoke-static {v5}, Lcom/samsung/android/settings/networklock/NetworkLockUtils;->-set0(Z)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v3, "network_lock"

    const-string/jumbo v4, "Buf is Null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
