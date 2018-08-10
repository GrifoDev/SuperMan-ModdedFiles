.class Lcom/samsung/android/settings/nfc/NfcEnabler$3;
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


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get1(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-get0(Lcom/samsung/android/settings/nfc/NfcEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap1(Lcom/samsung/android/settings/nfc/NfcEnabler;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcEnabler$3;->this$0:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->-wrap0(Lcom/samsung/android/settings/nfc/NfcEnabler;)V

    return-void
.end method
