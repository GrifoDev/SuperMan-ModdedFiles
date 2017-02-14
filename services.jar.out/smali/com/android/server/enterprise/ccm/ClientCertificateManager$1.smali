.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/16 v11, 0xa

    const/16 v10, 0x64

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Intent received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " user id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v6, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "managedProfileUserHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "managedProfileUserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lt v3, v10, :cond_4

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap9(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    :cond_4
    if-ge v3, v10, :cond_5

    if-lt v3, v11, :cond_5

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v7, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v6, v3, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-lt v5, v10, :cond_7

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_7

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap10(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v7, -0x1

    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap2(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap3(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap1(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap0(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    goto :goto_0

    :cond_8
    const-string/jumbo v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_9
    const-string/jumbo v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_a
    const-string/jumbo v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :cond_b
    const-string/jumbo v6, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    if-nez v4, :cond_d

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get0()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onReceive ACTION_DEVICE_OWNER_CHANGED userHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void

    :cond_d
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-ge v0, v10, :cond_5

    if-lt v0, v11, :cond_5

    iget-object v6, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    sget-object v7, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;->AFW:Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    invoke-static {v6, v0, v7}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;ILcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;)V

    goto/16 :goto_0
.end method
