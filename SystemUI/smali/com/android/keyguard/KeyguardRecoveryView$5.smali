.class Lcom/android/keyguard/KeyguardRecoveryView$5;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardRecoveryView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardRecoveryView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardRecoveryView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iput p2, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->setPasswordEntryInputEnabled(Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardRecoveryView;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->this$0:Lcom/android/keyguard/KeyguardRecoveryView;

    iget v1, p0, Lcom/android/keyguard/KeyguardRecoveryView$5;->val$userId:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardRecoveryView;->onPasswordChecked(IZIZ)V

    return-void
.end method
