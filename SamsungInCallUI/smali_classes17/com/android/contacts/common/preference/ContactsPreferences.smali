.class public Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# static fields
.field public static final CONTACT_METADATA_AUTHORITY:Ljava/lang/String; = "com.android.contacts.metadata"

.field public static final DISPLAY_ORDER_ALTERNATIVE:I = 0x2

.field public static final DISPLAY_ORDER_KEY:Ljava/lang/String; = "android.contacts.DISPLAY_ORDER"

.field public static final DISPLAY_ORDER_PRIMARY:I = 0x1

.field public static final DO_NOT_SYNC_CONTACT_METADATA_MSG:Ljava/lang/String; = "Do not sync metadata"

.field public static final ONLY_CLEAR_DONOT_SYNC:Ljava/lang/String; = "only_clear_donot_sync"

.field private static final PREFERENCE_UNASSIGNED:I = -0x1

.field public static final PREF_DISPLAY_ONLY_PHONES:Ljava/lang/String; = "only_phones"

.field public static final PREF_DISPLAY_ONLY_PHONES_DEFAULT:Z = false

.field public static final SHOULD_CLEAR_METADATA_BEFORE_SYNCING:Ljava/lang/String; = "should_clear_metadata_before_syncing"

.field public static final SORT_ORDER_ALTERNATIVE:I = 0x2

.field public static final SORT_ORDER_KEY:Ljava/lang/String; = "android.contacts.SORT_ORDER"

.field public static final SORT_ORDER_PRIMARY:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultAccount:Ljava/lang/String;

.field private mDefaultAccountKey:Ljava/lang/String;

.field private mDefaultAccountSavedKey:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mSortOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090479

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090478

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->maybeMigrateSystemSettings()V

    return-void
.end method

.method private getContactMetadataSyncAccount()Landroid/accounts/Account;
    .locals 4

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getFocusGoogleAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    const-string v2, "com.android.contacts.metadata"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "com.android.contacts.metadata"

    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFocusGoogleAccounts()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const-string v5, "com.google"

    iget-object v6, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->getAccountOrNull()Landroid/accounts/Account;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private maybeMigrateSystemSettings()V
    .locals 7

    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "android.contacts.SORT_ORDER"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v4

    :try_start_0
    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android.contacts.SORT_ORDER"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/contacts/common/preference/ContactsPreferences;->setSortOrder(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v2

    :try_start_1
    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android.contacts.DISPLAY_ORDER"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDisplayOrder(I)V

    :cond_1
    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iget-object v5, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_2
    return-void

    :catch_0
    move-exception v5

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private requestMetadataSyncForAccount(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getFocusGoogleAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/Account;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "should_clear_metadata_before_syncing"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "only_clear_donot_sync"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "force"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "expedited"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const-string v3, "com.android.contacts.metadata"

    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v5}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "force"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "expedited"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "should_clear_metadata_before_syncing"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "only_clear_donot_sync"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "com.android.contacts.metadata"

    invoke-static {v0, v3, v1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getContactMetadataSyncAccountName()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getContactMetadataSyncAccount()Landroid/accounts/Account;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "Do not sync metadata"

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultAccount()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDefaultAccountUserChangeable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->unstringify(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v1

    iget-object v2, v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDefaultDisplayOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDefaultSortOrder()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getDisplayOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isDisplayOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultDisplayOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->isSortOrderUserChangeable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultSortOrder()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0
.end method

.method public isDefaultAccountUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isDisplayOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isSortOrderUserChangeable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshValue(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-interface {v0}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->onChange()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getSortOrder()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->getDefaultAccount()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public registerChangeListener(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->unregisterChangeListener()V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public setContactMetadataSyncAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->requestMetadataSyncForAccount(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDefaultAccount(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountSavedKey:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDefaultAccountKey:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->stringify()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public setDisplayOrder(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSortOrder(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public unregisterChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
