.class Lcom/android/keyguard/KeyguardRecoveryView$2;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRecoveryView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRecoveryView;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iput p2, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardRecoveryView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRecoveryView;->-get0(Lcom/android/keyguard/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRecoveryView;->-get0(Lcom/android/keyguard/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    iget v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->val$reason:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRecoveryView;->-get1(Lcom/android/keyguard/KeyguardRecoveryView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardRecoveryView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardRecoveryView;->-get0(Lcom/android/keyguard/KeyguardRecoveryView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    return-void
.end method
