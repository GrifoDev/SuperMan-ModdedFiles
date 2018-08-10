.class Lcom/android/systemui/statusbar/KeyguardIndicationController$3;
.super Landroid/os/Handler;
.source "KeyguardIndicationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardIndicationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get11(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Lcom/android/systemui/statusbar/phone/LockIcon;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientFpError(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get17(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get17(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-get14(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap1(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap2(Lcom/android/systemui/statusbar/KeyguardIndicationController;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    const-string/jumbo v1, ""

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap5(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getHelpText(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-set15(Lcom/android/systemui/statusbar/KeyguardIndicationController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;->this$0:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->-wrap8(Lcom/android/systemui/statusbar/KeyguardIndicationController;Z)V

    goto/16 :goto_0
.end method
