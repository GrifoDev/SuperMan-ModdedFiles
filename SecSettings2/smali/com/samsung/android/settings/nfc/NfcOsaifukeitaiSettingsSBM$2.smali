.class Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;
.super Ljava/lang/Object;
.source "NfcOsaifukeitaiSettingsSBM.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)I

    move-result v2

    const/16 v3, 0x1e

    if-gt v2, v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get3(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-set0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;I)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get4(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v3, "get UIMLock status T.O. timer end "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get2(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-get1(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getUIMLockStatus()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM$2;->this$0:Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;->-wrap0(Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsSBM;II)V

    const-string/jumbo v2, "[NfcOsaifukeitaiSettingsSBM]"

    const-string/jumbo v3, "[E]uimDetectAction"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
