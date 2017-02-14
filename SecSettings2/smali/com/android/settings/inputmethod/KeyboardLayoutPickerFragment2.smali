.class public final Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "KeyboardLayoutPickerFragment2.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# instance fields
.field private mIm:Landroid/hardware/input/InputManager;

.field private mImi:Landroid/view/inputmethod/InputMethodInfo;

.field private mInputDeviceId:I

.field private mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

.field private mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

.field private mPreferenceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/hardware/input/KeyboardLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtype:Landroid/view/inputmethod/InputMethodSubtype;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceId:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mPreferenceMap:Ljava/util/Map;

    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getCollection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    iget-object v6, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v5, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {v3, v4, v5}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    return-object v2
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3a

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "input_device_identifier"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputDeviceIdentifier;

    iput-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "input_method_info"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    iput-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "input_method_subtype"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodSubtype;

    iput-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Landroid/hardware/input/KeyboardLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mKeyboardLayouts:[Landroid/hardware/input/KeyboardLayout;

    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceId:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceId:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceId:I

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mPreferenceMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    iget-object v3, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v4, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getDescriptor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/input/InputManager;->setKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mIm:Landroid/hardware/input/InputManager;

    iget-object v2, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceIdentifier:Landroid/hardware/input/InputDeviceIdentifier;

    invoke-virtual {v2}, Landroid/hardware/input/InputDeviceIdentifier;->getDescriptor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/input/InputManager;->getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/inputmethod/KeyboardLayoutPickerFragment2;->mInputDeviceId:I

    return-void
.end method
