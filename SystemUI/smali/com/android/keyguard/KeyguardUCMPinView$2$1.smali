.class Lcom/android/keyguard/KeyguardUCMPinView$2$1;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView$2;->onVerifyPukResponse(IIILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

.field final synthetic val$errorCode:I

.field final synthetic val$passwordBundle:Landroid/os/Bundle;

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$2;IILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$result:I

    iput p3, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$errorCode:I

    iput-object p4, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$passwordBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v1, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get8(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get8(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-set5(Lcom/android/keyguard/KeyguardUCMPinView;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$result:I

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$errorCode:I

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->val$passwordBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v0, v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-set1(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$2$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$2;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUCMPinView$2;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->setKeepScreenOn(Z)V

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-set6(Z)Z

    return-void
.end method
