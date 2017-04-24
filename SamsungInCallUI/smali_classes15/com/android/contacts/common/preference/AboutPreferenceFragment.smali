.class public Lcom/android/contacts/common/preference/AboutPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "AboutPreferenceFragment.java"


# static fields
.field private static final PRIVACY_POLICY_URL:Ljava/lang/String; = "http://www.google.com/policies/privacy"

.field private static final TERMS_OF_SERVICE_URL:Ljava/lang/String; = "http://www.google.com/policies/terms"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivityForUrl(Ljava/lang/String;)V

    return-void
.end method

.method private startActivityForUrl(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v7, 0x7f070001

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const v7, 0x7f090556

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const v7, 0x7f090557

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/android/contacts/common/activity/LicenseActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const-string v7, "pref_privacy_policy"

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v7, "pref_terms_of_service"

    invoke-virtual {p0, v7}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v2, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/contacts/common/preference/AboutPreferenceFragment$1;-><init>(Lcom/android/contacts/common/preference/AboutPreferenceFragment;Landroid/preference/Preference;Landroid/preference/Preference;)V

    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
