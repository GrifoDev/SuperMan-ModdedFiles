.class Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;
.super Ljava/lang/Object;
.source "PaymentDropDownPreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setResult(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field preferredClick:Z

.field final synthetic this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field final synthetic val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

.field final synthetic val$setClicked:I


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;ILcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput p2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    iput-object p3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    iput-object p4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get2(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v4, v5}, Landroid/nfc/NfcAdapter;->setPreferredSimSlot(I)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    const-string/jumbo v4, "PaymentDropDownPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setPreferredSimSlot("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v3, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v4, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v5

    if-nez v5, :cond_3

    :goto_0
    invoke-static {v4, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-set1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;I)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get4(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/widget/Spinner;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get1(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_3
    move v2, v3

    goto :goto_0
.end method
