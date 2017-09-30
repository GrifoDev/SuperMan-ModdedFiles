.class Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$3;
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

    iput-object p1, p0, Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager$3;->this$0:Lcom/android/incallui/operator/usa/softphone/SoftPhoneTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
