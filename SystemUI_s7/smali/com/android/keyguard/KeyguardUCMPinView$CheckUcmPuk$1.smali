.class Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

.field final synthetic val$result:[I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;[I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->val$result:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->val$result:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->val$result:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$1;->val$result:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->onVerifyPukResponse(III)V

    return-void
.end method
