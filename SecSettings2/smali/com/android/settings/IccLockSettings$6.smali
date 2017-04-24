.class Lcom/android/settings/IccLockSettings$6;
.super Ljava/lang/Object;
.source "IccLockSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IccLockSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IccLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get5(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/IccCard;->getIccUsimPersoEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get4(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get3(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get4(Lcom/android/settings/IccLockSettings;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings$6;->this$0:Lcom/android/settings/IccLockSettings;

    invoke-static {v1}, Lcom/android/settings/IccLockSettings;->-get3(Lcom/android/settings/IccLockSettings;)Landroid/preference/Preference;

    move-result-object v1

    const v2, 0x7f0b07ea

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    :cond_0
    return-void
.end method
