.class Lcom/android/settings/accounts/AccountSettings$AccountPreference;
.super Landroid/preference/Preference;
.source "AccountSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountPreference"
.end annotation


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;


# direct methods
.method static synthetic -get0(Lcom/android/settings/accounts/AccountSettings$AccountPreference;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/settings/accounts/AccountSettings;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitle:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    iput-object p6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const v0, 0x7f0402f1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setLayoutResource(I)V

    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setWidgetLayoutResource(I)V

    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p8}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string/jumbo v8, "com.osp.app.signin"

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->checkSamsungBackup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/os/UserHandle;

    invoke-virtual {v11}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v9, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "com.msc.action.samsungaccount.accountsetting"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "extra_preference"

    const-string/jumbo v1, "setting"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v9, v11}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v12

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    return v12

    :cond_1
    return v4
.end method
