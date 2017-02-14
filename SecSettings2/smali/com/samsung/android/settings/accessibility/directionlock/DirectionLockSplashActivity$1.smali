.class Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;
.super Ljava/lang/Object;
.source "DirectionLockSplashActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/16 v1, 0x3e8

    const/4 v6, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10028e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    :goto_2
    return v6

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_visible"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionShowEnabled(ZI)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    :goto_3
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10028c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_vibration"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVibrationEnabled(ZI)V

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    :goto_5
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10028d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get3(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_8

    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_beep"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionSoundEnabled(ZI)V

    goto :goto_5

    :cond_8
    move v1, v2

    goto :goto_6

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    :goto_7
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10028f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "universal_lock_voice"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    iget-object v3, v3, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/widget/LockPatternUtils;->setDirectionVoiceEnabled(ZI)V

    goto :goto_7

    :cond_b
    move v1, v2

    goto :goto_8

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    :goto_9
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10028b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_e

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    iget-object v3, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v3}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto :goto_9

    :cond_e
    move v1, v2

    goto :goto_a

    :cond_f
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v2, v2, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto/16 :goto_2

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity$1;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;->-get1(Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSplashActivity;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v1

    invoke-virtual {v1, v6, v2, v6}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->launchConfirmCurrentLockScreen(ZZZ)Z

    move-result v0

    goto/16 :goto_2
.end method
