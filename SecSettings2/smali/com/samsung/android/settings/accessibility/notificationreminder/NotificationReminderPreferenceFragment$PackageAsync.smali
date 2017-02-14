.class Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;
.super Landroid/os/AsyncTask;
.source "NotificationReminderPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;-><init>(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    sget-object v4, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->includeAppStrings:Ljava/lang/String;

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->pm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v4, v4, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->pm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/settings/accessibility/notificationreminder/GlobalConstant;->Contain(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v4, v3}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get9(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    const-string/jumbo v5, "notification_reminder_app_list"

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, ""

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    const-string/jumbo v6, "notification_reminder_app_list"

    invoke-static {v5, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-set2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    if-nez p1, :cond_4

    const-string/jumbo v5, "NotificationReminderPreferenceFragment"

    const-string/jumbo v6, "Package load error!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo v5, "selectAll"

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-set0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;I)I

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_7

    new-instance v2, Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v6, v6, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v9}, Landroid/preference/SwitchPreference;->setPersistent(Z)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v7, v7, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v7, v8, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-set1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get6(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v2, v5}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get1(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get8(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get2(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-virtual {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    :goto_2
    const-string/jumbo v5, "selectAll"

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "notification_reminder_app_list"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5, v8, v9}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap4(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;ZZ)V

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get4(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get9(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    return-void

    :cond_9
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    const-string/jumbo v6, "com.android.server.telecom"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    const-string/jumbo v6, "com.android.server.telecom"

    invoke-virtual {v5, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-set0(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;I)I

    const-string/jumbo v5, "NotificationReminderPreferenceFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Special case: mShouldCheckAll = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v7}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get5(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_a
    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v5}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-wrap3(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)V

    goto :goto_3
.end method

.method protected onPreExecute()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get9(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get7(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment$PackageAsync;->this$0:Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;->-get4(Lcom/samsung/android/settings/accessibility/notificationreminder/NotificationReminderPreferenceFragment;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method
