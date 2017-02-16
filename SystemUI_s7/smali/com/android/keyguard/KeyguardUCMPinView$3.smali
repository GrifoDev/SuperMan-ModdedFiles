.class Lcom/android/keyguard/KeyguardUCMPinView$3;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView;->checkPassword(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$3;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$3;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardUCMPinView;->mPendingLockCheck:Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$3;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$3;->val$userId:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/keyguard/KeyguardUCMPinView;->onPasswordChecked(IZIZ)V

    return-void
.end method
