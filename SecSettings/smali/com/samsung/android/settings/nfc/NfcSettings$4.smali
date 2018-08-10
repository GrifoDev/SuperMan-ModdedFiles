.class Lcom/samsung/android/settings/nfc/NfcSettings$4;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get0(Lcom/samsung/android/settings/nfc/NfcSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "AlertDialog is dismissing in Emergency Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get1(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$4;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get1(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
