.class Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;
.super Ljava/lang/Object;
.source "LockNotificationChannelList.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get15(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    return v7

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v3, v5, :cond_4

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get4()Ljava/util/Hashtable;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v7}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get4()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->getOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v7, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    invoke-static {v5, v4, v7}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;ZLandroid/app/NotificationChannel;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v7, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->pkg:Ljava/lang/String;

    iget v8, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->uid:I

    iget-object v9, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppIconSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    instance-of v5, v5, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->isChecked()Z

    move-result v5

    if-eq v5, v4, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get4()Ljava/util/Hashtable;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->getOrder()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    iget-object v7, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    invoke-static {v5, v4, v7}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-wrap3(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;ZLandroid/app/NotificationChannel;)V

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get5(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v5

    iget-object v7, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->pkg:Ljava/lang/String;

    iget v8, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->uid:I

    iget-object v9, v2, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$AppData;->channel:Landroid/app/NotificationChannel;

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/settings/notification/NotificationBackend;->updateChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$ChannelSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-static {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->-get6(Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;)Landroid/content/Context;

    move-result-object v7

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList$7;->this$0:Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;

    invoke-virtual {v5}, Lcom/samsung/android/settings/lockscreen/LockNotificationChannelList;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0b0378

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    if-eqz v4, :cond_5

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7, v8, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v6

    :cond_5
    const/4 v5, 0x2

    goto :goto_2
.end method
