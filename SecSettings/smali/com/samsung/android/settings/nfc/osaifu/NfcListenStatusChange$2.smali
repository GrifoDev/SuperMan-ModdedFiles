.class Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;
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

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x2

    const v6, 0x7f0b0371

    const/4 v4, 0x0

    const/4 v5, 0x1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get6(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v2, "00001,0"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    const-string/jumbo v3, "00001,0"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-wrap2(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->finish()V

    return v5

    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get7(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v2, "00001,1"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    const-string/jumbo v3, "00001,1"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get8(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/support/v7/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get3(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get4(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/nfc/osaifu/NfcSettingsData;->setNfcTypeSettings(I)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v2, "00001,2"

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcConfigAccess;->setNfcTypeSettingsInConfigFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    const-string/jumbo v3, "00001,2"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-set1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;Ljava/lang/String;)Ljava/lang/String;

    :cond_6
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v3}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-wrap1(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$2;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v2}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-get0(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return v5
.end method
