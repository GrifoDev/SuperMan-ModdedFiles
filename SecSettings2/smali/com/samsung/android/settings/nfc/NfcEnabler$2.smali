.class Lcom/samsung/android/settings/nfc/NfcEnabler$2;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcEnabler;->makeAlertDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field final synthetic val$alertType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iput-object p2, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get3(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "NfcSettingsOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get3(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->val$alertType:Ljava/lang/String;

    const-string/jumbo v1, "RwOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get2(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_beam_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get3(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0
.end method
