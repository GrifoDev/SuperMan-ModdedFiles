.class public final Lcom/android/contacts/common/preference/ContactsPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "ContactsPreferenceActivity.java"


# static fields
.field private static final TAG_ABOUT_CONTACTS:Ljava/lang/String; = "about_contacts"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method public static isEmpty(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActivityTitle(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f09043a

    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const v2, 0x7f09043a

    const/4 v3, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x1020002

    new-instance v5, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;

    invoke-direct {v5}, Lcom/android/contacts/common/preference/DisplayOptionsPreferenceFragment;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    invoke-direct {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "about_contacts"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    if-nez v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f09057e

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showAboutFragment()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/android/contacts/common/preference/AboutPreferenceFragment;

    invoke-direct {v2}, Lcom/android/contacts/common/preference/AboutPreferenceFragment;-><init>()V

    const-string v3, "about_contacts"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    const v0, 0x7f09057e

    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferenceActivity;->setActivityTitle(I)V

    return-void
.end method
