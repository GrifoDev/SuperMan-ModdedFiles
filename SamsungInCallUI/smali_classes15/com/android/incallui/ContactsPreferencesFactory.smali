.class public Lcom/android/incallui/ContactsPreferencesFactory;
.super Ljava/lang/Object;
.source "ContactsPreferencesFactory.java"


# static fields
.field private static sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private static sUseTestInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 48
    :goto_0
    return-object v0

    .line 45
    :cond_0
    invoke-static {p0}, Lcom/android/dialer/compat/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setTestInstance(Lcom/android/contacts/common/preference/ContactsPreferences;)V
    .locals 1
    .param p0, "testInstance"    # Lcom/android/contacts/common/preference/ContactsPreferences;
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    .line 59
    sput-object p0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    .line 60
    return-void
.end method
