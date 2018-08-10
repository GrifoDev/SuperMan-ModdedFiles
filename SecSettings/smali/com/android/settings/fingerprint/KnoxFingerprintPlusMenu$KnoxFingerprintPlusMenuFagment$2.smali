.class Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;
.super Landroid/os/Handler;
.source "KnoxFingerprintPlusMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string/jumbo v0, "KnoxFingerprintPlusMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHandler event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintSettingsUtils;->convertEvtToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-static {v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->-wrap1(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->-set0(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->-wrap3(Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;ZI)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b023e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment$2;->this$1:Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/fingerprint/KnoxFingerprintPlusMenu$KnoxFingerprintPlusMenuFagment;->handleError(ILjava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
