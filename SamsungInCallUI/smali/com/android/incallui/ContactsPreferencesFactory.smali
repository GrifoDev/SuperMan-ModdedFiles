.class public Lcom/android/incallui/ContactsPreferencesFactory;
.super Ljava/lang/Object;


# static fields
.field private static sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

.field private static sUseTestInstance:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newContactsPreferences(Landroid/content/Context;)Lcom/android/contacts/common/preference/ContactsPreferences;
    .locals 1

    sget-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/dialer/a/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static setTestInstance(Lcom/android/contacts/common/preference/ContactsPreferences;)V
    .locals 1
    .annotation build Lcom/android/contacts/common/testing/NeededForTesting;
    .end annotation

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/incallui/ContactsPreferencesFactory;->sUseTestInstance:Z

    sput-object p0, Lcom/android/incallui/ContactsPreferencesFactory;->sTestInstance:Lcom/android/contacts/common/preference/ContactsPreferences;

    return-void
.end method
