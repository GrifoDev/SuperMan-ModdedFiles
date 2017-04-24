.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;,
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String;

.field private static mPersona:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGameControllerCategory:Landroid/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation
.end field

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePref:Landroid/preference/Preference;

.field private mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

.field private final mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mShowsOnlyFullImeAndKeyboardList:Z

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mSpellCheckCachedPref:Landroid/preference/Preference;

.field private mUserCachedDicPref:Landroid/preference/PreferenceScreen;

.field private um:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Lcom/android/settings/PointerSpeedPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->isSpCheckerAndDictDisplayed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->onSpeedChanged()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$4;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeSpellCheckerPreference(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "spellcheckers_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "key_user_dictionary_settings"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    if-eqz v4, :cond_2

    monitor-enter p0

    if-eqz v2, :cond_0

    :try_start_0
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    const v5, 0x7f0b19cb

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    if-eqz v3, :cond_1

    move-object v0, v3

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v4, v0

    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_3
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpellCheckCachedPref:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mUserCachedDicPref:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private static getLocaleNames(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/android/internal/app/LocalePicker;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Lcom/android/internal/app/LocaleHelper;->getDisplayLocaleList(Landroid/os/LocaleList;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/internal/app/LocaleHelper;->toSentenceCase(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_2
    const/4 v3, 0x0

    return v3
.end method

.method private static isSpCheckerAndDictDisplayed(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x0

    const-string/jumbo v6, "textservices"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/textservice/TextServicesManager;

    invoke-static {p0}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v1

    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isInstalledAnySpellCheckerPakcage = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-nez v5, :cond_1

    :cond_0
    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot find spellcheckerinfo, tsm="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    invoke-virtual {v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    const-string/jumbo v6, "input_method"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v2

    :cond_2
    if-eqz v4, :cond_3

    const-string/jumbo v6, "com.sec.android.inputmethod"

    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :cond_3
    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isSamsungKeyboard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isSamsungSpellChecker = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    return v9

    :cond_4
    const/4 v6, 0x1

    return v6
.end method

.method private loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private onSpeedChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Lcom/android/settings/PointerSpeedPreference;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1002cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return-void
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    return-void
.end method

.method private savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;

    invoke-direct {v0, p1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;-><init>(Landroid/hardware/input/InputDeviceIdentifier;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "keyboardLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->changeSpellCheckerPreference(Landroid/content/Context;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateGameControllers()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_5

    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    :goto_2
    new-instance v9, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    new-instance v10, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$8;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$8;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const v10, 0x7f0b15af

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_4
    return-void

    :cond_7
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    :goto_5
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/Preference;->getOrder()I

    move-result v10

    const/16 v11, 0x3e8

    if-ge v10, v11, :cond_8

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    :cond_8
    move v4, v3

    goto :goto_5

    :cond_9
    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_a

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/preference/Preference;

    invoke-virtual {v8, v3}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private updateInputDevices()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateHardKeyboards()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateGameControllers()V

    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    return-void
.end method

.method private updateInputMethodPreferenceViews(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v12, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v10

    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    :goto_1
    if-nez v9, :cond_3

    const/4 v6, 0x0

    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v6, :cond_5

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_4
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settings/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v9

    goto :goto_1

    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    goto :goto_4

    :cond_5
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$7;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$7;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/text/Collator;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    monitor-exit v12

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v1, v3, v13}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$5;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0b1589

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "current_input_method"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v9, 0x7f08008b

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    const-string/jumbo v9, "pointer_speed"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/PointerSpeedPreference;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeedCallback:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$PointerSpeedPreferenceCallback;

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreference;->setCallback(Lcom/android/settings/PointerSpeedPreference$Callback;)V

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreference;

    const/16 v10, 0xe

    invoke-virtual {v9, v10}, Lcom/android/settings/PointerSpeedPreference;->setMax(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v9, "input_method"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    const-string/jumbo v9, "user"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    const v9, 0x7f0b01aa

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iput v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v9

    array-length v9, v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "phone_language"

    invoke-virtual {p0, v10}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_1
    new-instance v9, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v9, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;)V

    invoke-virtual {v9}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    const-string/jumbo v9, "hard_keyboard"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v9, "keyboard_settings_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v9, "game_controller_settings_category"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string/jumbo v9, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    iget-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v9, :cond_1

    move-object v6, v0

    check-cast v6, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v6}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceCategory;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v9, "input"

    invoke-virtual {v0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/input/InputManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    const-string/jumbo v9, "spellcheckers_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-static {v7}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "android.intent.action.MAIN"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/android/settings/SubSettings;

    invoke-virtual {v4, v0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v9, ":settings:show_fragment"

    const-class v10, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, ":settings:show_fragment_title_resid"

    const v10, 0x7f0b1820

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v7, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_2
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v9, p0, v10, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "device_policy"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/admin/DevicePolicyManager;

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v9, "input_device_identifier"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/input/InputDeviceIdentifier;

    iget-boolean v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v9, :cond_3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_3
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    invoke-static {v9}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "current_input_method"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    const-string/jumbo v10, "keyboard_and_input_methods_category"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    const-string/jumbo v9, "persona"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_5
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mKeyboardSettingsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v9}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    :cond_8
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_9
    const-string/jumbo v9, "phone_language"

    invoke-virtual {p0, v9}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v2, v3, v1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "LanguageAndInput"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    instance-of v4, p2, Landroid/preference/PreferenceScreen;

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    const-string/jumbo v3, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    sget-object v2, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreferenceTreeClick : after showInputMethodPicker"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1002c4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    instance-of v4, p2, Landroid/preference/SwitchPreference;

    if-eqz v4, :cond_1

    move-object v1, p2

    check-cast v1, Landroid/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mGameControllerCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v1}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method

.method public onResume()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "pointer_speed"

    invoke-static {v8}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v8, v11, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v8, p0, v10}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    const-string/jumbo v8, "spellcheckers_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const-string/jumbo v8, "key_user_dictionary_settings"

    invoke-virtual {p0, v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->isSpCheckerAndDictDisplayed(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    iget-boolean v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v8, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    if-eqz v7, :cond_3

    invoke-direct {p0, v7}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputDevices()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->um:Landroid/os/UserManager;

    invoke-static {v8}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    const/16 v9, 0x64

    if-ge v8, v9, :cond_6

    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v8}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateInputMethodPreferenceViews()V

    :goto_1
    iget-object v8, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v11, "LanguageAndInput"

    invoke-virtual {v8, v9, v10, v11}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-virtual {v5, v11}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v8, "textservices"

    invoke-virtual {p0, v8}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v6}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v8

    if-nez v8, :cond_5

    const v8, 0x7f0b19cb

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    :try_start_0
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;

    invoke-direct {v9, p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$6;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/app/Activity;)V

    const-wide/16 v10, 0xfa

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInputMethodPreference(Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 8

    const/16 v7, 0x64

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v4, v7, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    invoke-static {p0, v5, v6, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    if-ge v4, v7, :cond_3

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodSettingValues:Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_1
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-virtual {v2}, Lcom/android/settings/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
