.class public Lcom/android/settings/language/LanguageAndInputSettingsSamsung;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LanguageAndInputSettingsSamsung.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/inputmethod/KeyboardLayoutDialogFragment$OnSetupKeyboardLayoutsListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$4;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$5;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;,
        Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TAG:Ljava/lang/String;

.field private static mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

.field private static mPersona:Lcom/samsung/android/knox/SemPersonaManager;


# instance fields
.field private mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

.field private mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

.field private mDefaultInputMethodSelectorVisibility:I

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mHandwritingLanguage:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mHandwritingLanguageObserver:Landroid/database/ContentObserver;

.field private mHandwritingSearchCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private final mHardKeyboardPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/SecPreferenceScreen;",
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
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

.field private mIntentWaitingForResult:Landroid/content/Intent;

.field private mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

.field private final mPointerSpeedCallback:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;

.field private mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;

.field private mShowKeyboardButtonObserver:Landroid/database/ContentObserver;

.field private mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mShowsOnlyFullImeAndKeyboardList:Z

.field private mSpeedObserver:Landroid/database/ContentObserver;

.field private mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mUserCachedDicPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mUspLevel:I

.field private um:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguage:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/database/ContentObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/hardware/input/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Lcom/android/settings/PointerSpeedPreferenceSamsung;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUspLevel:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Landroid/content/pm/PackageManager;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->haveInputDeviceWithVibrator()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->isSpCheckerAndDictDisplayed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSelectLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->onSpeedChanged()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateCurrentImeName()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    sput-object v1, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$4;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$4;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$5;

    invoke-direct {v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$5;-><init>()V

    sput-object v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultInputMethodSelectorVisibility:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;)V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSpeedCallback:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;

    iput v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUspLevel:I

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$1;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$2;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$3;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpeedObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;

    invoke-direct {v0, p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$6;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;)V

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private changeSpellCheckerPreference(Landroid/content/Context;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    const-string/jumbo v5, "input_assistance_category"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceCategory;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v4, "spellcheckers_settings"

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v4, "key_user_dictionary_settings"

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v3, :cond_4

    if-eqz v2, :cond_4

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v4, p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    monitor-enter p0

    if-eqz v2, :cond_1

    :try_start_0
    iput-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreferenceScreen;

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreferenceScreen;

    const v5, 0x7f121b3d

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    if-eqz v3, :cond_2

    iput-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUserCachedDicPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    :cond_4
    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isInstalledAnySpellCheckerPakcage(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpellCheckCachedPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUserCachedDicPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUserCachedDicPref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method

.method private checkVOLanguage(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v3, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {v3}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->getSupportedLanguageList()[Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

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

.method private getSelectLanguage()Ljava/lang/String;
    .locals 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "handwriting_language"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string/jumbo v8, "en_GB"

    invoke-direct {p0, v8}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v0, "en_GB"

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "ko_KR"

    invoke-direct {p0, v8}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->checkVOLanguage(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v0, "ko_KR"

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    sget-object v8, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {v8}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;->getSupportedLanguageList()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v5

    :goto_1
    const/4 v3, 0x0

    :goto_2
    array-length v8, v5

    if-ge v3, v8, :cond_1

    if-eqz v0, :cond_6

    aget-object v8, v5, v3

    if-eqz v8, :cond_6

    aget-object v8, v5, v3

    invoke-virtual {v8}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getLanguage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    aget-object v8, v5, v3

    invoke-virtual {v8}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;->getTitle()Ljava/lang/String;

    move-result-object v6

    :cond_1
    return-object v6

    :cond_2
    const-string/jumbo v0, "en_US"

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "handwriting_language_list"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, ""

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    if-nez v1, :cond_5

    :cond_4
    move-object v1, v0

    :cond_5
    const-string/jumbo v8, ";"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8, v2}, Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference;->getLocaleInfoAdapter(Landroid/content/Context;[Ljava/lang/String;)[Lcom/samsung/android/settings/handwritingsearch/HandwritingLanguagePreference$LanguageInfo;

    move-result-object v5

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static haveInputDeviceWithVibrator()Z
    .locals 4

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget v3, v1, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
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

    sget-object v6, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

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
    sget-object v6, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

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
    sget-object v6, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "previously_enabled_subtypes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->parseInputMethodsAndSubtypesString(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    return-object v3
.end method

.method private onSpeedChanged()V
    .locals 4

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    add-int/lit8 v2, v0, 0x7

    invoke-virtual {v1, v2}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void
.end method

.method private restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->enableInputMethodSubtypesOf(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method

.method private saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v7, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

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
    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->loadPreviouslyEnabledSubtypeIdsMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v2}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->savePreviouslyEnabledSubtypeIdsMap(Ljava/util/HashMap;)V

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

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->buildInputMethodsAndSubtypesString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "previously_enabled_subtypes"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setAutofillSummary(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    return-void
.end method

.method private showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getFragmentManager()Landroid/app/FragmentManager;

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

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    const-string/jumbo v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3, v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-enter p0

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->changeSpellCheckerPreference(Landroid/content/Context;)V

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_4
    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateGameControllers()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->haveInputDeviceWithVibrator()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vibrate_input_devices"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1
.end method

.method private updateHardKeyboards()V
    .locals 12

    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-nez v10, :cond_0

    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v10, v2

    if-ge v3, v10, :cond_4

    aget v10, v2, v3

    invoke-static {v10}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v5

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v5}, Landroid/hardware/input/InputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v10, v7}, Landroid/hardware/input/InputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;

    move-result-object v6

    :goto_1
    new-instance v9, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v11}, Landroid/support/v7/preference/SecPreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/hardware/input/KeyboardLayout;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    new-instance v10, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$10;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const v10, 0x7f120e8f

    invoke-virtual {v9, v10}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_4
    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreferenceCount()I

    move-result v3

    move v4, v3

    :goto_3
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_6

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10, v3}, Landroid/support/v7/preference/SecPreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v10

    const/16 v11, 0x3e8

    if-ge v10, v11, :cond_5

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_7

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10, v8}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :goto_5
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v10, v11}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5
.end method

.method private updateInputDevices()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateHardKeyboards()V

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateGameControllers()V

    return-void
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputMethodPreferenceViews(Landroid/content/Context;)V

    return-void
.end method

.method private updateInputMethodPreferenceViews(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateCurrentImeName()V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v12

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v12

    throw v1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v10

    iget-boolean v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

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
    new-instance v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    iget-boolean v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

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

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$9;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$9;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/text/Collator;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v6, :cond_6

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    monitor-exit v12

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateCurrentImeName()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v3}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    invoke-static {p0, v1, v3, v13}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/support/v7/preference/SecPreferenceScreen;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$7;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Ljava/util/TreeSet;)V

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x39

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120f52

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIntentWaitingForResult:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIntentWaitingForResult:Landroid/content/Intent;

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIntentWaitingForResult:Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "current_input_method"

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v12, 0x7f150084

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->addPreferencesFromResource(I)V

    invoke-static {p0}, Lcom/android/settings/Utils;->removeKnoxCustomSettingsHiddenItems(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v12, "input"

    invoke-virtual {v0, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/input/InputManager;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    const-string/jumbo v12, "pointer_speed"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/PointerSpeedPreferenceSamsung;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSpeedCallback:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$PointerSpeedPreferenceSamsungCallback;

    invoke-virtual {v12, v13}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setCallback(Lcom/android/settings/PointerSpeedPreferenceSamsung$Callback;)V

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    const/16 v13, 0xe

    invoke-virtual {v12, v13}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setMax(I)V

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPointerSeekbar:Lcom/android/settings/PointerSpeedPreferenceSamsung;

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/hardware/input/InputManager;->getPointerSpeed(Landroid/content/Context;)I

    move-result v13

    add-int/lit8 v13, v13, 0x7

    invoke-virtual {v12, v13}, Lcom/android/settings/PointerSpeedPreferenceSamsung;->setProgress(I)V

    new-instance v12, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;-><init>(Landroid/content/Context;)V

    sput-object v12, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLangListLoader:Lcom/samsung/android/settings/handwritingsearch/LanguageListLoader;

    const-string/jumbo v12, "input_method"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/inputmethod/InputMethodManager;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    const-string/jumbo v12, "user"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserManager;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->um:Landroid/os/UserManager;

    const v12, 0x7f120dd7

    :try_start_0
    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iput v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v12

    array-length v12, v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "phone_language"

    invoke-virtual {p0, v13}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :goto_1
    new-instance v12, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v12, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v12}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    const-string/jumbo v12, "hard_keyboard"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v12, "keyboard_settings_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v12, "game_controller_settings_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    iput-boolean v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    iget-boolean v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v12, :cond_1

    move-object v9, v0

    check-cast v9, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v12}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputDevices()V

    const-string/jumbo v12, "spellcheckers_settings"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/support/v7/preference/SecPreferenceScreen;

    new-instance v12, Landroid/os/Handler;

    invoke-direct {v12}, Landroid/os/Handler;-><init>()V

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandler:Landroid/os/Handler;

    invoke-direct {v12, p0, v13, v0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "device_policy"

    invoke-virtual {v12, v13}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/admin/DevicePolicyManager;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v12, "input_device_identifier"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/hardware/input/InputDeviceIdentifier;

    iget-boolean v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    if-eqz v12, :cond_2

    if-eqz v5, :cond_2

    invoke-direct {p0, v5}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->showKeyboardLayoutDialog(Landroid/hardware/input/InputDeviceIdentifier;)V

    :cond_2
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->um:Landroid/os/UserManager;

    invoke-static {v12}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "current_input_method"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "keyboard_and_input_methods_category"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "input_assistance_category"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const-string/jumbo v12, "persona"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/knox/SemPersonaManager;

    sput-object v12, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v12, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mPersona:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v12, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mKeyboardSettingsCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v12}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputMethodPreferenceViews()V

    :cond_8
    const-string/jumbo v12, "handwriting_search_category"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingSearchCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v12, "handwriting_language"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguage:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.spen_usp"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->semGetSystemFeatureLevel(Ljava/lang/String;)I

    move-result v12

    iput v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUspLevel:I

    iget v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mUspLevel:I

    const/4 v13, 0x2

    if-ge v12, v13, :cond_9

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguage:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v12, :cond_9

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingLanguage:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHandwritingSearchCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x1120096

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "keyboard_and_input_methods_category"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "keyboard_and_input_methods_category"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v12, "key_show_keyboard_button"

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "key_show_keyboard_button"

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_a
    :goto_2
    new-instance v12, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v12}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    const-string/jumbo v13, "input_assistance_category"

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v6, :cond_10

    const-string/jumbo v12, "default_autofill"

    invoke-virtual {v6, v12}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/settings/SecGearPreference;

    :goto_3
    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    new-instance v12, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-virtual {v12}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->isAvailable()Z

    move-result v12

    if-eqz v12, :cond_11

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v12, v13}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-virtual {v12}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->setAutofillSummary(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    const-string/jumbo v12, "phone_language"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v7/preference/SecPreferenceScreen;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v12, "key_show_keyboard_button"

    invoke-virtual {p0, v12}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v7

    :goto_5
    if-eqz v7, :cond_f

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setVisible(Z)V

    goto :goto_2

    :cond_e
    const/4 v7, 0x0

    goto :goto_5

    :cond_f
    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v12, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto/16 :goto_2

    :cond_10
    const/4 v12, 0x0

    goto :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v12, v13}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputDevices()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpeedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;

    invoke-virtual {v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->pause()V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v2}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mHardKeyboardPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v2, "LanguageAndInput"

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "key_show_keyboard_button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_keyboard_button"

    if-eqz v0, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b02eb

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_0

    const/16 v4, 0x3e8

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v5, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v3

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    return v4
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    const-string/jumbo v4, "spellcheckers_settings"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v2

    return v2

    :cond_2
    instance-of v4, p1, Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v4, :cond_3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "current_input_method"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "input_method"

    invoke-virtual {p0, v3}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker(Z)V

    sget-object v2, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPreferenceTreeClick : after showInputMethodPicker"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    instance-of v4, p1, Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v4, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v4, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mGameControllerCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-ne v1, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    invoke-virtual {v1}, Landroid/support/v14/preference/SecSwitchPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    move v2, v3

    :cond_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v3
.end method

.method public onResume()V
    .locals 18

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v14, "pointer_speed"

    invoke-static {v14}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSpeedObserver:Landroid/database/ContentObserver;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mSettingsObserver:Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;

    invoke-virtual {v14}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$SettingsObserver;->resume()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIm:Landroid/hardware/input/InputManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v15}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    const-string/jumbo v15, "input_assistance_category"

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v5, :cond_7

    const-string/jumbo v14, "spellcheckers_settings"

    invoke-virtual {v5, v14}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/support/v7/preference/SecPreferenceScreen;

    :goto_0
    if-eqz v5, :cond_8

    const-string/jumbo v14, "key_user_dictionary_settings"

    invoke-virtual {v5, v14}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    :goto_1
    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->isSpCheckerAndDictDisplayed(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_9

    if-eqz v11, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5, v11}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    if-eqz v13, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {v5, v13}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v14, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "show_keyboard_button"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_b

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v14, v8}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_2
    const-string/jumbo v14, "show_keyboard_button"

    invoke-static {v14}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowKeyboardButtonObserver:Landroid/database/ContentObserver;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v9, v14, v0, v15}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mShowsOnlyFullImeAndKeyboardList:Z

    if-nez v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getLocaleNames(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v14, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mLanguagePref:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateUserDictionaryPreference(Landroid/support/v7/preference/SecPreferenceScreen;)V

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputDevices()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->um:Landroid/os/UserManager;

    invoke-static {v14}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v14

    if-nez v14, :cond_c

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v14}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->updateInputMethodPreferenceViews()V

    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v16, v0

    const-string/jumbo v17, "LanguageAndInput"

    invoke-virtual/range {v14 .. v17}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    const-string/jumbo v15, "keyboard_and_input_methods_category"

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v14

    const-string/jumbo v15, "keyboard_and_input_methods_category"

    invoke-virtual {v14, v15}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v14, "physical_keyboard_settings"

    invoke-virtual {v6, v14}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    if-eqz v14, :cond_5

    const-string/jumbo v14, "physical_keyboard_settings"

    invoke-virtual {v6, v14}, Landroid/support/v7/preference/SecPreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-virtual {v14}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->isAvailable()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mAutofillPref:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v14, v15}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mDefaultAutofillPreferenceController:Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;

    invoke-virtual {v14}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->setAutofillSummary(Ljava/lang/String;)V

    :cond_6
    return-void

    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v14, "textservices"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v14

    if-nez v14, :cond_a

    const v14, 0x7f121b3d

    invoke-virtual {v11, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {v12}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    if-eqz v11, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    :try_start_0
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    new-instance v15, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v2}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung$8;-><init>(Lcom/android/settings/language/LanguageAndInputSettingsSamsung;Landroid/app/Activity;)V

    const-wide/16 v16, 0xfa

    invoke-virtual/range {v14 .. v17}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 8

    const/16 v7, 0x64

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->getInputMethodInfo()Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_0

    if-ge v4, v7, :cond_0

    invoke-direct {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->saveEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->keyboard:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v6

    invoke-static {p0, v5, v6, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    if-ge v4, v7, :cond_4

    iget-object v5, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v5}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->restorePreviouslyEnabledSubtypesOf(Landroid/view/inputmethod/InputMethodInfo;)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    monitor-exit v6

    :cond_4
    return-void
.end method

.method public onSetupKeyboardLayouts(Landroid/hardware/input/InputDeviceIdentifier;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->mIntentWaitingForResult:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/language/LanguageAndInputSettingsSamsung;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
