.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;
.super Landroid/os/Handler;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_CHECK_LICENSE_STATUS:I = 0x2

.field public static final MSG_ON_CONTAINER_LOCKED:I = 0x4

.field public static final MSG_ON_CONTAINER_UNLOCKED:I = 0x5

.field public static final MSG_ON_LICENSE_ACTIVATED:I = 0x7

.field public static final MSG_ON_LICENSE_EXPIRED:I = 0x6

.field public static final MSG_UPDATE_ACM_STATUS:I = 0x3

.field public static final MSG_UPDATE_LOCK_STATUS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMessage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Initialize mInternalHandler MSG_UPDATE_LOCK_STATUS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2, v4, v4, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-get1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MSG_CHECK_LICENSE_STATUS>>adminId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",Uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLicenseStatus(IILjava/lang/String;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v1, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap7(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/samsung/android/knox/keystore/CCMProfile$AccessControlMethod;I)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v5, v5, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v5, v4, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v5, v5, v4}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap8(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_0

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$InternalHandler;->this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-static {v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->-wrap6(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
