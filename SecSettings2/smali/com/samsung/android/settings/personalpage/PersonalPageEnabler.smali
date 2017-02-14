.class public final Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;
.super Landroid/preference/PreferenceActivity;
.source "PersonalPageEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;
    }
.end annotation


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Lcom/android/settings/widget/SwitchBar;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mPosition:I

    new-instance v0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler$1;-><init>(Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    iput v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->state:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-boolean p3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    return-void
.end method


# virtual methods
.method public isLockTaskMode()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PersonalPageEnabler"

    const-string/jumbo v1, "isLockTaskMode() : true"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string/jumbo v0, "PersonalPageEnabler"

    const-string/jumbo v1, "isLockTaskMode() : false"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 11

    const v10, 0x10008000

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "personal_mode_enabled"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "personal_mode_lock_type"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v5, "PersonalPageEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Switch CheckedChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->isLockTaskMode()Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    const v6, 0x7f0b09f8

    invoke-static {v5, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    if-nez v0, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.settings.PERSONALPAGE_ACTIVITY_LOCKTYPE_LAUNCH"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_2
    if-eqz v4, :cond_3

    if-eq v4, v9, :cond_3

    const-string/jumbo v5, "PersonalPageEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in progress - DB_PERSONAL_MODE_ON state :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_3
    if-eqz p2, :cond_5

    if-nez v4, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIsInMainMenu:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "PersonalPageEnabler"

    const-string/jumbo v6, "Outter switch is on"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "switchon"

    invoke-virtual {v3, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.samsung.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "PersonalPageEnabler"

    const-string/jumbo v6, "inner switch is on"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    if-nez p2, :cond_6

    if-ne v4, v9, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const-string/jumbo v5, "PersonalPageEnabler"

    const-string/jumbo v6, "switch is off"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "switchon"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v5, "com.android.settings"

    const-string/jumbo v6, "com.samsung.android.settings.personalpage.PersonalPageDisclaimer"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "PersonalPageEnabler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "state and Switch is in equal state :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public pause()V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.settings.PERSONALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCheck = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "PersonalPageEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PERSONALPAGE_ONOFF = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "personal_mode_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "personal_mode_enabled"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "changed"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    const-string/jumbo v1, "changed"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public resume()V
    .locals 5

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "personal_mode_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "PersonalPageEnabler"

    const-string/jumbo v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mCheck:I

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mSwitch:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/personalpage/PersonalPageEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.samsung.settings.PERSONALPAGE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
