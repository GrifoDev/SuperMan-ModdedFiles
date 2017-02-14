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

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PIN:I

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->ENTER_PUK:I

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


# virtual methods
.method public getState()I
    .locals 2

    const-string/jumbo v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "StateMachine.getState called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    return v0
.end method

.method public setStateAndRefreshUIIfNeeded(IIZ)V
    .locals 10

    const-string/jumbo v7, "KeyguardUCMPinView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "StateMachine.setStateAndRefreshUIIfNeeded called : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " Error : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    iput p1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    iget v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    sparse-switch v7, :sswitch_data_0

    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "unknown status nothing to do"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "setStateAndRefreshUIIfNeeded called : STATE_UNKNOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_ucm_unknown_error_occurred:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v7, 0x5

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap2(Lcom/android/keyguard/KeyguardUCMPinView;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap5()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getDetailErrorMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7, p2}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "setStateAndRefreshUIIfNeeded called : STATE_LOCKED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x20

    if-ne p2, v7, :cond_3

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_wrong_pin:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_0

    :cond_3
    if-nez p2, :cond_2

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :sswitch_2
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "setStateAndRefreshUIIfNeeded called : STATE_UNLOCKED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_5

    if-nez p2, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_pin_instructions:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_5
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    if-nez p2, :cond_9

    invoke-static {}, Lcom/android/keyguard/KeyguardUCMPinView;->generatePassword()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_6

    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "failed to get the generatePassword values"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_ucm_unknown_error_occurred:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    const-string/jumbo v7, "stringresponse"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "errorresponse"

    const/4 v8, -0x1

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_8

    :cond_7
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_8
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v8

    invoke-static {v7, v2, v8}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap7(Lcom/android/keyguard/KeyguardUCMPinView;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :sswitch_3
    const-string/jumbo v7, "KeyguardUCMPinView"

    const-string/jumbo v8, "setStateAndRefreshUIIfNeeded called : STATE_BLOCKED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v7, 0x21

    if-ne p2, v7, :cond_c

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_ucm_password_wrong_puk_code:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_a
    :goto_3
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get1(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get1(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_b

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->-get5(Lcom/android/keyguard/KeyguardUCMPinView;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v8}, Lcom/android/keyguard/KeyguardUCMPinView;->-get1(Lcom/android/keyguard/KeyguardUCMPinView;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v7, v7, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v8, 0x1

    invoke-interface {v7, v1, v8}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    const/4 v7, 0x1

    iput v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    goto/16 :goto_0

    :cond_c
    if-nez p2, :cond_a

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUCMPinView;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/android/keyguard/R$string;->kg_puk_locked_message:I

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-get2(Lcom/android/keyguard/KeyguardUCMPinView;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap6(Lcom/android/keyguard/KeyguardUCMPinView;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x83 -> :sswitch_2
        0x84 -> :sswitch_1
        0x85 -> :sswitch_3
    .end sparse-switch
.end method

.method public verifyPUKandUpdateUI()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string/jumbo v1, "KeyguardUCMPinView"

    const-string/jumbo v2, "StateMachine.verifyPUKandUpdateUI called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mState:I

    const/16 v2, 0x85

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1, v3, v3}, Lcom/android/keyguard/KeyguardUCMPinView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUCMPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v3}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap1(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_puk_enter_pin_hint:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_invalid_puk_hint:I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap0(Lcom/android/keyguard/KeyguardUCMPinView;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_enter_confirm_pin_hint:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_invalid_pin_hint:I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_unlocking:I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardUCMPinView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUCMPinView;->-wrap11(Lcom/android/keyguard/KeyguardUCMPinView;)V

    goto :goto_0

    :cond_4
    iput v4, p0, Lcom/android/keyguard/KeyguardUCMPinView$StateMachine;->mRound:I

    sget v0, Lcom/android/keyguard/R$string;->kg_ucm_invalid_confirm_pin_hint:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
