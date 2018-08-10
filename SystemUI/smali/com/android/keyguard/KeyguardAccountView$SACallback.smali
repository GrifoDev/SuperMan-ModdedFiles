.class public Lcom/android/keyguard/KeyguardAccountView$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "KeyguardAccountView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAccountView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAccountView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardAccountView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveAuthCode(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveChecklistValidation(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceiveDisclaimerAgreement(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onReceivePasswordConfirmation(IZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const-string/jumbo v2, "KeyguardAccountView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceivePasswordConfirmation isSuccess "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/KeyguardAccountView;->-wrap1(Lcom/android/keyguard/KeyguardAccountView;Z)V

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardAccountView;->-wrap0(Lcom/android/keyguard/KeyguardAccountView;)V

    return-void

    :cond_0
    const-string/jumbo v2, "error_code"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "error_message"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "KeyguardAccountView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceivePasswordConfirmation fail errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " errorMessage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SAC_0401"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "SAC_0301"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardAccountView;->-set0(Lcom/android/keyguard/KeyguardAccountView;Z)Z

    :cond_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardAccountView$SACallback;->this$0:Lcom/android/keyguard/KeyguardAccountView;

    invoke-static {v2, v5}, Lcom/android/keyguard/KeyguardAccountView;->-wrap1(Lcom/android/keyguard/KeyguardAccountView;Z)V

    goto :goto_0
.end method

.method public onReceiveSCloudAccessToken(IZLandroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
