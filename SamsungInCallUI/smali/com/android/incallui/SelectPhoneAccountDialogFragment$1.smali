.class Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SelectPhoneAccountDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$002(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-static {v0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$100(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-static {v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$300(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-static {v2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$200(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Z

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onPhoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    return-void
.end method
