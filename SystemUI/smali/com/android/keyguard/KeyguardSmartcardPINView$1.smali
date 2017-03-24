.class Lcom/android/keyguard/KeyguardSmartcardPINView$1;
.super Ljava/lang/Object;
.source "KeyguardSmartcardPINView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSmartcardPINView;->verifyPasswordAndUnlock(ZLjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSmartcardPINView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iput p2, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSmartcardPINView;->-get0(Lcom/android/keyguard/KeyguardSmartcardPINView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSmartcardPINView;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->this$0:Lcom/android/keyguard/KeyguardSmartcardPINView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSmartcardPINView$1;->val$userId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardSmartcardPINView;->onPasswordChecked(IZIZ)V

    return-void
.end method
