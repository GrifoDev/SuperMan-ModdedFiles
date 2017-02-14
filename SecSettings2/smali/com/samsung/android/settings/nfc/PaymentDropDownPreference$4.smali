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
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get2(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v2, v3}, Landroid/nfc/NfcAdapter;->setPreferredSimSlot(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    const-string/jumbo v2, "PaymentDropDownPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPreferredSimSlot("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->preferredClick:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$setClicked:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->val$handler2:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$ResultHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$4;->this$0:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->-get0(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_2
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
