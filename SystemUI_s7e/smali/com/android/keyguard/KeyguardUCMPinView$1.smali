.class Lcom/android/keyguard/KeyguardUCMPinView$1;
.super Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUCMPinView;->verifyPINandUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0, p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPin;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onVerifyPinResponse(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    new-instance v1, Lcom/android/keyguard/KeyguardUCMPinView$1$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/keyguard/KeyguardUCMPinView$1$1;-><init>(Lcom/android/keyguard/KeyguardUCMPinView$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
