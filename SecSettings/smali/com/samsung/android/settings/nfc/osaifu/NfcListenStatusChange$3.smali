.class Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, -0x1

    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get5(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "00001,2"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    const-string/jumbo v3, "00001,2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->finish()V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$3;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0371

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
