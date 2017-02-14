.class Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;
.super Ljava/lang/Object;
.source "FingerprintPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;->this$1:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;->this$1:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->-get1(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;->this$1:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->-get1(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment$3;->this$1:Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;

    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;->-get2(Lcom/android/settings/fingerprint/FingerprintPassword$FingerprintPasswordFragment;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method
