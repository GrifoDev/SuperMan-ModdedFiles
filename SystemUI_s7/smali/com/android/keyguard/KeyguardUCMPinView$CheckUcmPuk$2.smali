.class Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$2;
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


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$2;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk$2;->this$1:Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/keyguard/KeyguardUCMPinView$CheckUcmPuk;->onVerifyPukResponse(III)V

    return-void
.end method
