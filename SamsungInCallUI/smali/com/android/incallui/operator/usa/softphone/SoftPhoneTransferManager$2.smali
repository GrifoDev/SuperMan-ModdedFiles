.class Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->makeDialog(Landroid/content/Context;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$2;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$2;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    iget-object v0, v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;

    const-string v1, "SoftPhoneTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected DeviceInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "SoftPhoneTransferManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ownNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v3, v0}, Lcom/android/incallui/TelecomAdapter;->requestJanskyTransfer(Lcom/android/incallui/Call;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    const-string v0, "SoftPhoneTransferManager"

    const-string v1, "makeDialog() - call = null"

    invoke-static {v0, v1, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
