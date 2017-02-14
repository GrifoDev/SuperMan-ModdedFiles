.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get5(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get6(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get7(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
