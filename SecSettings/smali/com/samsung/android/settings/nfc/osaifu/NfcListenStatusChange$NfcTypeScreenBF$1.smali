.class Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF$1;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get6(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get7(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get8(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CheckBoxPreference;->setChecked(Z)V

    return-void
.end method
