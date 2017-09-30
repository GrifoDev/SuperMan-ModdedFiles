.class Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-static {v0, p2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$202(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z

    return-void
.end method
