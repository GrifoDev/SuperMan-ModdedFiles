.class Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;
.super Ljava/lang/Object;
.source "SoftPhoneTransferManager.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .param p1, "this$0"    # Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 130
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;

    .line 132
    .local v0, "info":Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    iget-object v1, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$1;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    iget-object v1, v1, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;->tvDeviceInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 134
    .end local v0    # "info":Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$DeviceInfo;
    :cond_0
    return-void
.end method
