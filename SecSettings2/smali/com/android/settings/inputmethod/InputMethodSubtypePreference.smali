.class Lcom/android/settings/inputmethod/InputMethodSubtypePreference;
.super Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;
.source "InputMethodSubtypePreference.java"


# instance fields
.field private final mIsSystemLanguage:Z

.field private final mIsSystemLocale:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodSubtype;Landroid/view/inputmethod/InputMethodInfo;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setPersistent(Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v3, v4}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    iput-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-nez v3, :cond_1

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodUtils;->getLanguageFromLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method compareTo(Landroid/preference/Preference;Ljava/text/Collator;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    if-ne p0, p1, :cond_0

    return v6

    :cond_0
    instance-of v3, p1, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    if-eqz v3, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v6

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_2

    return v4

    :cond_2
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLocale:Z

    if-eqz v3, :cond_3

    return v5

    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_4

    return v4

    :cond_4
    iget-boolean v3, v0, Lcom/android/settings/inputmethod/InputMethodSubtypePreference;->mIsSystemLanguage:Z

    if-eqz v3, :cond_5

    return v5

    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    return v5

    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    return v4

    :cond_7
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_8
    invoke-super {p0, p1}, Lcom/android/settings/inputmethod/SwitchWithNoTextPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v3

    return v3
.end method
