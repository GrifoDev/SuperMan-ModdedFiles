.class Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;
.super Landroid/os/Handler;
.source "SetupWizardWifiScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const v3, 0x7f0b1758

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get10(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get10(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get10(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-get9(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0, v2}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-set1(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap4(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen$1;->this$0:Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;->-wrap6(Lcom/samsung/android/settings/wifi/SetupWizardWifiScreen;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
