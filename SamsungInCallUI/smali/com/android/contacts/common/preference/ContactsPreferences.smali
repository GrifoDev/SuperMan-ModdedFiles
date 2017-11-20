.class public Lcom/android/contacts/common/preference/ContactsPreferences;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

.field private f:Landroid/os/Handler;

.field private final g:Landroid/content/SharedPreferences;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->f:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090530

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09052f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->i:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->b()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.SORT_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->e()I

    move-result v0

    :try_start_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android.contacts.DISPLAY_ORDER"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->b(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->a(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public a(Lcom/android/contacts/common/model/account/AccountWithDataSet;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->i:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public a(Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;)V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->i()V

    :cond_0
    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const/4 v1, -0x1

    const-string v0, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->f()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    invoke-interface {v0}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->a()V

    :cond_1
    return-void

    :cond_2
    const-string v0, "android.contacts.SORT_ORDER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->c()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000b

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

.method public b(I)V
    .locals 2

    iput p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public c()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->b()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.SORT_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->b()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->b:I

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000a

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

.method public f()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->e()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    const-string v1, "android.contacts.DISPLAY_ORDER"

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->e()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    :cond_1
    iget v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->c:I

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/android/contacts/common/preference/ContactsPreferences;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->e:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences;->f:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/common/preference/ContactsPreferences$1;

    invoke-direct {v1, p0, p2}, Lcom/android/contacts/common/preference/ContactsPreferences$1;-><init>(Lcom/android/contacts/common/preference/ContactsPreferences;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
