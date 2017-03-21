.class public Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
.super Ljava/lang/Object;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UCSCryptKeeperTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/settings/UCSCryptKeeperTask;


# direct methods
.method public constructor <init>(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->DONE:I

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    return v0
.end method

.method public next()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    sget-object v2, Lcom/samsung/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap4(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V

    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f0b1a46

    :goto_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;

    invoke-direct {v2, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f0b1a3c

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f0b1a45

    :goto_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    :cond_4
    const v0, 0x7f0b1a3b

    goto :goto_2

    :cond_5
    iget v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    if-ne v1, v5, :cond_7

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f0b1a3d

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-wrap5(Lcom/android/settings/UCSCryptKeeperTask;)V

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1

    :cond_6
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const v0, 0x7f0b1393

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v1}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v1, v3}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    goto :goto_1
.end method

.method varargs reset([I)V
    .locals 5

    const v4, 0x7f0b1a43

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v0, v2}, Lcom/android/settings/UCSCryptKeeperTask;->resetPasswordText(Z)V

    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    array-length v0, p1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    aget v2, p1, v3

    invoke-virtual {v1, v4, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iput v3, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->state:I

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-static {v0}, Lcom/android/settings/UCSCryptKeeperTask;->-get7(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;

    invoke-direct {v1, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask$StateMachine;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->this$0:Lcom/android/settings/UCSCryptKeeperTask;

    invoke-virtual {v0, v4}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_0
.end method
