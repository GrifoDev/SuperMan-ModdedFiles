.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-set1(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)I

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v1, Lcom/android/settings/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/ConfirmLockPattern$Stage;

    invoke-static {v0, v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-wrap2(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method public onTick(J)V
    .locals 5

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-get5(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0b08c0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$1:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1, v0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-wrap1(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;I)V

    return-void
.end method
