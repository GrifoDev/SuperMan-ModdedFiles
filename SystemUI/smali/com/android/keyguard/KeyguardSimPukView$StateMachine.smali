.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$StateMachine;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 8

    const v7, 0x7f120542

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap1(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v6, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_2

    const v0, 0x7f120570

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1, v6, v6}, Lcom/android/keyguard/KeyguardSimPukView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_1

    if-eq v0, v7, :cond_11

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_3

    const v0, 0x7f1204be

    goto :goto_0

    :cond_3
    const v0, 0x7f120644

    goto :goto_0

    :cond_4
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    const v0, 0x7f12056b

    goto :goto_0

    :cond_5
    const v0, 0x7f12056e

    goto :goto_0

    :cond_6
    const v0, 0x7f120543

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v6, :cond_d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap0(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_a

    iput v3, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_8

    const v0, 0x7f12056c

    goto :goto_0

    :cond_8
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_USE_CDMA_CARD_TEXT:Z

    if-eqz v1, :cond_9

    const v0, 0x7f1204bb

    goto :goto_0

    :cond_9
    const v0, 0x7f120643

    goto :goto_0

    :cond_a
    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    const v0, 0x7f1204cc

    goto :goto_0

    :cond_b
    const v0, 0x7f120571

    goto :goto_0

    :cond_c
    const v0, 0x7f120542

    goto :goto_0

    :cond_d
    iget v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const v0, 0x7f12049d

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap5(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto/16 :goto_0

    :cond_e
    iput v6, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    sget-boolean v1, Lcom/android/systemui/Rune;->KEYGUARD_SUPPORT_KOR_USIM_TEXT:Z

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPukView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    const v0, 0x7f1204cc

    goto/16 :goto_0

    :cond_f
    const v0, 0x7f12056d

    goto/16 :goto_0

    :cond_10
    const v0, 0x7f120540

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPukView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->-get0(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v7, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method reset()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-set1(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->-set2(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->-wrap3(Lcom/android/keyguard/KeyguardSimPukView;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPukView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->requestFocus()Z

    return-void
.end method
