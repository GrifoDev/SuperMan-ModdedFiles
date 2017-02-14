.class Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/NfcListenStatusChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get5(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "00001,0"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,0"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->finish()V

    return v4

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get6(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "00001,1"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,1"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get7(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get2(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "00001,2"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifuConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    const-string/jumbo v3, "00001,2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-wrap1(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/NfcListenStatusChange;->-get0(Lcom/samsung/android/settings/nfc/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v4
.end method
