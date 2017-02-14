.class Lcom/android/settings/fingerprint/RegisterFingerprint$5;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->eventProcess(ILjava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

.field final synthetic val$evtId:I


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput p2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->val$evtId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0x66

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->val$evtId:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get13(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set10(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-static {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get12(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set9(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x200

    invoke-static {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-static {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get22(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set17(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v6, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x1000000

    invoke-static {v2, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getImageQualityFeedbackString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get31(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set20(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get31(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get14(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v0

    const/16 v1, 0x3c

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap8(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const v2, 0x7f0b0670

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x65

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap9(Lcom/android/settings/fingerprint/RegisterFingerprint;ILjava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_READY]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v0, v4}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set18(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set18(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$5$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5$1;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$5;)V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set19(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set15(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v3, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get20(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set18(Lcom/android/settings/fingerprint/RegisterFingerprint;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$5$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/RegisterFingerprint$5$2;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint$5;)V

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set19(Lcom/android/settings/fingerprint/RegisterFingerprint;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get25(Lcom/android/settings/fingerprint/RegisterFingerprint;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set15(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_2

    :sswitch_9
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_STARTED]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get2(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0x12c

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap3(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    :cond_8
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get1(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "Remove_Error_Runnable_In_EVENT_ENROLL_STARTED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mRegisterErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mErrorMessage:Landroid/widget/RelativeLayout;

    const/16 v2, 0xcb

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/16 v1, 0xce

    invoke-static {v0, v1, v3}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set2(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mFinger_ProgressView:Lcom/android/settings/fingerprint/FingerprintProgressEffectView;

    invoke-virtual {v0, v5}, Lcom/android/settings/fingerprint/FingerprintProgressEffectView;->setFingerStatus(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get24(Lcom/android/settings/fingerprint/RegisterFingerprint;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap0(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap5(Lcom/android/settings/fingerprint/RegisterFingerprint;I)V

    goto :goto_3

    :sswitch_a
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v4}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set4(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    goto/16 :goto_0

    :sswitch_b
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get11(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set8(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->interrupt()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iput-object v3, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    :cond_c
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0, v5}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set4(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    new-instance v1, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v2, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {v1, v2}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;-><init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    iput-object v1, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->tLiftFingerMessage:Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint$LiftFingerMessage;->start()V

    :cond_d
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get8(Lcom/android/settings/fingerprint/RegisterFingerprint;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    iget-object v1, v1, Lcom/android/settings/fingerprint/RegisterFingerprint;->mGuideText:Landroid/widget/RelativeLayout;

    const/16 v2, 0xcc

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap15(Lcom/android/settings/fingerprint/RegisterFingerprint;ILandroid/view/View;)V

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$5;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-get10(Lcom/android/settings/fingerprint/RegisterFingerprint;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-set7(Lcom/android/settings/fingerprint/RegisterFingerprint;I)I

    goto/16 :goto_0

    :sswitch_d
    const-string/jumbo v0, "FpstRegisterTouchFingerprint"

    const-string/jumbo v1, "eventId[FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_6
        0x3ea -> :sswitch_7
        0x2711 -> :sswitch_8
        0x2712 -> :sswitch_9
        0x2713 -> :sswitch_0
        0x2714 -> :sswitch_a
        0x2715 -> :sswitch_b
        0x2716 -> :sswitch_c
        0x2717 -> :sswitch_d
    .end sparse-switch
.end method
