.class Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;
.super Landroid/os/CountDownTimer;
.source "UserInactivityCountdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

.field final synthetic val$messageView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;JJLandroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    iput-object p6, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->val$messageView:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-virtual {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-static {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    iget-object v0, v0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-static {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->-get1(Lcom/android/server/retaildemo/UserInactivityCountdownDialog;)Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$OnCountDownExpiredListener;->onCountDownExpired()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 7

    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->this$1:Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;

    iget-object v1, v1, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1;->this$0:Lcom/android/server/retaildemo/UserInactivityCountdownDialog;

    invoke-virtual {v1}, Lcom/android/server/retaildemo/UserInactivityCountdownDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x104028e

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/retaildemo/UserInactivityCountdownDialog$1$1;->val$messageView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
