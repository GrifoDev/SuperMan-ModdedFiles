.class public Lcom/android/settings/ScreenPinningSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ScreenPinningSettings$1;,
        Lcom/android/settings/ScreenPinningSettings$2;
    }
.end annotation


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_SECURITY_PINWINDOW:I

.field private static SETTINGS_SECURITY_PINWINDOW_SWITCH:I


# instance fields
.field private mDivider:Landroid/view/View;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUseScreenLock:Landroid/preference/SwitchPreference;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/ScreenPinningSettings;->SETTINGS_SECURITY_PINWINDOW:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/ScreenPinningSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/ScreenPinningSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    sput p0, Lcom/android/settings/ScreenPinningSettings;->SETTINGS_SECURITY_PINWINDOW:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/ScreenPinningSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/ScreenPinningSettings;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/settings/ScreenPinningSettings;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/ScreenPinningSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/ScreenPinningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    new-instance v0, Lcom/android/settings/ScreenPinningSettings$1;

    invoke-direct {v0}, Lcom/android/settings/ScreenPinningSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/ScreenPinningSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ScreenPinningSettings$2;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 6

    const v5, 0x7f0b088b

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const v1, 0x7f0b088a

    invoke-virtual {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0b1186

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0b1188

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_2
    iget-object v1, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0b1184

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/android/settings/ScreenPinningSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_to_app_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isScreenLockUsed()Z
    .locals 4

    const/4 v1, 0x0

    const v2, 0x7f0b088a

    invoke-virtual {p0, v2}, Lcom/android/settings/ScreenPinningSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lock_to_app_exit_locked"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private screenPinningDisablePopup()V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0888

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b043d

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v6, ""

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0b02b5

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f11010d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v5, v9, v11

    const v10, 0x7f0b0294

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/ScreenPinningSettings$4;

    invoke-direct {v9, p0}, Lcom/android/settings/ScreenPinningSettings$4;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/ScreenPinningSettings$5;

    invoke-direct {v9, p0}, Lcom/android/settings/ScreenPinningSettings$5;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/android/settings/ScreenPinningSettings$6;

    invoke-direct {v9, p0}, Lcom/android/settings/ScreenPinningSettings$6;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private setLockToAppEnabled(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_to_app_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setScreenLockUsed(Z)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000

    const/high16 v2, 0x10000

    const-string/jumbo v4, "minimum_quality"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "skipFingerprintPassword"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v4, 0x2b

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return v5

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    return v6
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "lock_to_app_exit_locked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x56

    return v0
.end method

.method public makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;
    .locals 8

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    sget-object v5, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "makeStringWithImage - description or functionName or drawable is null"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_1
    const-string/jumbo v5, "%s"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/android/settings/ScreenPinningSettings;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v6, "makeStringWithImage - %s is not in str"

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object v7

    :cond_2
    const-string/jumbo v5, "%s"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "%"

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/samsung/android/settings/CenteredImageSpan;

    invoke-direct {v2, p2}, Lcom/samsung/android/settings/CenteredImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v5, v0, 0x1

    const/16 v6, 0x11

    invoke-virtual {v3, v2, v0, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v8, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040264

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v8, 0x7f110274

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    const v8, 0x7f1105fe

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v8, 0x7f110609

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0888

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0203de

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v9

    float-to-int v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const v8, 0x7f0b088c

    :goto_0
    invoke-virtual {v10, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b088e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, " \u200f"

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const v11, 0x7f0b088f

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0890

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0891

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "%d."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, " \u200f"

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0892

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v4, v7}, Lcom/android/settings/ScreenPinningSettings;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Landroid/text/SpannableString;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getListView()Landroid/widget/ListView;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v8, v5, v9, v10}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v8, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_0
    const v8, 0x7f0b088d

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v8, " "

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v8, " "

    goto :goto_2
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0800d1

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->addPreferencesFromResource(I)V

    sget-object v0, Lcom/android/settings/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/ScreenPinningSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/ScreenPinningSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ScreenPinningSettings$3;-><init>(Lcom/android/settings/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "PinWindows"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    iget-object v0, p0, Lcom/android/settings/ScreenPinningSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ScreenPinningSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "PinWindows"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f10020c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/android/settings/ScreenPinningSettings;->SETTINGS_SECURITY_PINWINDOW_SWITCH:I

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    sget v4, Lcom/android/settings/ScreenPinningSettings;->SETTINGS_SECURITY_PINWINDOW_SWITCH:I

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "access_control_use"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->screenPinningDisablePopup()V

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->updateDisplay()V

    goto :goto_2
.end method

.method public updateDisplay()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/ScreenPinningSettings;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v0

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v7}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    :cond_2
    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v4, "false"

    aput-object v4, v3, v7

    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v6, "isScreenPinningAllowedAsUser"

    invoke-static {v4, v5, v6, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-nez v1, :cond_5

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ScreenPinningSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/ScreenPinningSettings;->mUseScreenLock:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mDivider:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/settings/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v8}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method
