.class public final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PhysicalKeyboardFragment.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardLayoutLoader;,
        Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mKeyboardAssistanceCategory:Landroid/preference/PreferenceCategory;

.field private final mLastHardKeyboards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLoaderIDs:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNextLoaderId:I

.field private mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

.field private mShowVirtualKeyboardSwitch:Landroid/preference/SwitchPreference;

.field private final mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field private final mTempKeyboardInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->toggleKeyboardShortcutsMenu()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$3;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$1;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    new-instance v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;

    new-instance v1, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$2;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private clearLoader()V
    .locals 3

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/LoaderManager;->destroyLoader(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method private static getHardKeyboards()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v2

    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget v1, v2, v4

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/view/InputDevice;->getIdentifier()Landroid/hardware/input/InputDeviceIdentifier;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;-><init>(Ljava/lang/String;Landroid/hardware/input/InputDeviceIdentifier;)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v3
.end method

.method private registerShowVirtualKeyboardSettingsObserver()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_ime_with_hard_keyboard"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method private showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/settings/Settings$KeyboardLayoutPickerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string/jumbo v1, "input_device_identifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "input_method_info"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "input_method_subtype"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private toggleKeyboardShortcutsMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->requestShowKeyboardShortcuts()V

    return-void
.end method

.method private unregisterShowVirtualKeyboardSettingsObserver()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateHardKeyboards()V
    .locals 6

    invoke-static {}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getHardKeyboards()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    new-instance v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-direct {v3, v4, p0, v5}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Callbacks;-><init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Ljava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    iget v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mNextLoaderId:I

    :cond_0
    return-void
.end method

.method private updateShowVirtualKeyboardSwitch()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;->isShowImeWithHardKeyboardEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_settings_inputmethod_PhysicalKeyboardFragment_lambda$1(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v0, v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->showKeyboardLayoutScreen(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x15a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->addPreferencesFromResource(I)V

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {v7, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;-><init>(Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/ArrayList;IZ)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mSettings:Lcom/android/internal/inputmethod/InputMethodUtils$InputMethodSettings;

    const-string/jumbo v0, "keyboard_assistance_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/preference/PreferenceCategory;

    const-string/jumbo v1, "show_virtual_keyboard_switch"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/preference/SwitchPreference;

    const-string/jumbo v0, "keyboard_shortcuts_helper"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    new-instance v1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$4;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    return-void
.end method

.method public onLoadFinishedInternal(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLoaderIDs:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->removeAll()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;

    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v0, v10, v12}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iget-object v10, v5, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mDeviceInfo:Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;

    iget-object v10, v10, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$HardKeyboardDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v10, v5, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;->mKeyboardInfoList:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v2, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v1, v3, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v2, :cond_3

    new-instance v7, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v7, v10, v3, v12}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V

    new-instance v10, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;

    invoke-direct {v10, p0, v5, v2, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$-void_onLoadFinishedInternal_int_loaderId_java_util_List_keyboardsList_LambdaImpl0;-><init>(Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-virtual {v7, v10}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-static {v10}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_3
    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_4
    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mTempKeyboardInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/preference/PreferenceCategory;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setOrder(I)V

    iget-object v10, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mKeyboardAssistanceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateShowVirtualKeyboardSwitch()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->unregisterShowVirtualKeyboardSettingsObserver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->clearLoader()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mLastHardKeyboards:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->updateHardKeyboards()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mIm:Landroid/hardware/input/InputManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitch:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->mShowVirtualKeyboardSwitchPreferenceChangeListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;->registerShowVirtualKeyboardSettingsObserver()V

    return-void
.end method
