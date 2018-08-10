.class Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_NEW_PIN:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field final UNKNOWN:I

.field private mRound:I

.field private mState:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUCMPinView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_NEW_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->DONE:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->UNKNOWN:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardUCMPinView;Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMPinView;)V

    return-void
.end method

.method private getDetailErrorMessage(I)Ljava/lang/String;
    .locals 6

    const-string/jumbo v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDetailErrorMessage errorCode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, ""

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1206de

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap2(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap5()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v3, p1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "KeyguardUCMPinView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "exception in getDetailErrorMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getState()I
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "StateMachine.getState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return v0
.end method

.method public setStateAndRefreshUIIfNeeded(IIZLandroid/os/Bundle;)V
    .locals 8

    const-string/jumbo v5, "KeyguardUCMPinView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v0

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    iget v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "unknown status nothing to do"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x20

    if-ne p2, v5, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120703

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_0

    :cond_1
    if-nez p2, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120614

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120614

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    if-nez p2, :cond_7

    if-nez p4, :cond_4

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "failed to get the generatePassword values"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206de

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x0

    const-string/jumbo v5, "stringresponse"

    invoke-virtual {p4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "errorresponse"

    const/4 v6, -0x1

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_6

    :cond_5
    invoke-direct {p0, v3}, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->getDetailErrorMessage(I)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap8(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get3(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v5, 0x21

    if-ne p2, v5, :cond_a

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1206da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_2
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    :goto_3
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get7(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v6}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v5, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    if-nez p2, :cond_8

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120636

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get4(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12075d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "KeyguardUCMPinView"

    const-string/jumbo v6, "pinExpireMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    const/4 v5, 0x5

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x83 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_3
    .end sparse-switch
.end method

.method public verifyPUKandUpdateUI()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string/jumbo v2, "KeyguardUCMPinView"

    const-string/jumbo v3, "StateMachine.verifyPUKandUpdateUI called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/16 v3, 0x85

    if-eq v2, v3, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v2, v4, v4}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v4}, Lcom/android/keyguard/KeyguardUCMPinView;->-get0(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap1(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206db

    goto :goto_0

    :cond_2
    const v0, 0x7f1206d7

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap0(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206d3

    goto :goto_0

    :cond_3
    const v0, 0x7f1206d6

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->confirmPin()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206df

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap12(Lcom/android/keyguard/KeyguardUCMPinView;)V

    goto :goto_0

    :cond_4
    iput v5, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    const v0, 0x7f1206d5

    const v1, 0x7f1206db

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v2, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
