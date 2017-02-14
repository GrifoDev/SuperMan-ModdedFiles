.class Lcom/android/settings/accounts/AccountSettings$ProfileData;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProfileData"
.end annotation


# instance fields
.field public addAccountPreference:Lcom/android/settings/DimmableIconPreference;

.field public authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field public managedProfilePreference:Landroid/preference/Preference;

.field public preferenceGroup:Landroid/preference/PreferenceGroup;

.field public removeWorkProfilePreference:Landroid/preference/Preference;

.field public userInfo:Landroid/content/pm/UserInfo;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSettings$ProfileData;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSettings$ProfileData;-><init>()V

    return-void
.end method
