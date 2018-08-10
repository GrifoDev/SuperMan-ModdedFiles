.class public final Lcom/android/settings/inputmethod/VirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;,
        Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;
    }
.end annotation


# static fields
.field private static final NO_ICON:Landroid/graphics/drawable/Drawable;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/preference/SecInputMethodPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViewsForKnox(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$2;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method public static insetDividerWithAppIcon(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0704db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v0, v2, v3

    return-void
.end method

.method static synthetic lambda$-com_android_settings_inputmethod_VirtualKeyboardFragment_8469(Ljava/text/Collator;Landroid/support/v7/preference/SecInputMethodPreference;Landroid/support/v7/preference/SecInputMethodPreference;)I
    .locals 1

    invoke-virtual {p1, p2, p0}, Landroid/support/v7/preference/SecInputMethodPreference;->compareTo(Landroid/support/v7/preference/SecInputMethodPreference;Ljava/text/Collator;)I

    move-result v0

    return v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 15

    const v14, 0x7f0d0353

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v12

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v12, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_3
    new-instance v0, Landroid/support/v7/preference/SecInputMethodPreference;

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/preference/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLandroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;)V

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/SecInputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v14}, Landroid/support/v7/preference/SecInputMethodPreference;->setLayoutResource(I)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    sget-object v10, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/inputmethod/-$Lambda$XTtS1udWAuQechtOL3yJCegACZs;

    invoke-direct {v5, v7}, Lcom/android/settings/inputmethod/-$Lambda$XTtS1udWAuQechtOL3yJCegACZs;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/SecInputMethodPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/SecInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    const v5, 0x7f080762

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecPreference;->setIcon(I)V

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v3, v14}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    return-void
.end method

.method private updateInputMethodPreferenceViewsForKnox(Landroid/content/Context;)V
    .locals 14

    const v13, 0x7f0d0353

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v12

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v11

    if-nez v11, :cond_0

    const/4 v6, 0x0

    :goto_0
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_2

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    if-eqz v12, :cond_1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v12, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    :goto_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    :goto_3
    new-instance v0, Landroid/support/v7/preference/SecInputMethodPreference;

    const/4 v3, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/preference/SecInputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLandroid/support/v7/preference/SecInputMethodPreference$OnSavePreferenceListener;)V

    invoke-virtual {v0, v10}, Landroid/support/v7/preference/SecInputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/SecInputMethodPreference;->setLayoutResource(I)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    sget-object v10, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->NO_ICON:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v7

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;

    invoke-direct {v3, p0, v7}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$4;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Ljava/text/Collator;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v6, :cond_3

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecInputMethodPreference;

    invoke-virtual {v0, v9}, Landroid/support/v7/preference/SecInputMethodPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/SecInputMethodPreference;->updatePreferenceViews()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    const v3, 0x7f080762

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/SecPreference;->setIcon(I)V

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreference;->setOrder(I)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v13}, Landroid/support/v7/preference/SecPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x159

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->insetDividerWithAppIcon(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f15012f

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->addPreferencesFromResource(I)V

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v1, "add_virtual_keyboard_screen"

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mAddVirtualKeyboardScreen:Landroid/support/v7/preference/SecPreference;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "VirtualKeyboard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment$3;-><init>(Lcom/android/settings/inputmethod/VirtualKeyboardFragment;Landroid/app/Activity;Landroid/content/Context;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v5, "VirtualKeyboard"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/inputmethod/VirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    goto :goto_0
.end method
