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

    const v0, 0x7f0402ef

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
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragment:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mFragmentArguments:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/accounts/AccountSettings$AccountPreference;->mTitleResId:I

    move-object v7, v3

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;ILjava/lang/String;ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v4
.end method
