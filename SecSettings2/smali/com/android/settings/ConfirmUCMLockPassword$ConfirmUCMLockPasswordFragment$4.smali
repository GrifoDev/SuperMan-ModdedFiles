.class Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmUCMLockPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap0(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-wrap5(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get5(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment$4;->this$1:Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;->-get7(Lcom/android/settings/ConfirmUCMLockPassword$ConfirmUCMLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
