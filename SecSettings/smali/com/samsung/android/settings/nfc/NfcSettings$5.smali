.class Lcom/samsung/android/settings/nfc/NfcSettings$5;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcSettings$5;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings$5;->this$0:Lcom/samsung/android/settings/nfc/NfcSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->-get5(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setResult(I)Z

    const/4 v0, 0x1

    return v0
.end method
