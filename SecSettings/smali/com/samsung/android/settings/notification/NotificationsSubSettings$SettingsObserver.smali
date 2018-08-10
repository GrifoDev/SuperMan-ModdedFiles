.class final Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationsSubSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/notification/NotificationsSubSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get2(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/SettingPref;->update(Landroid/content/Context;)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public register(Z)V
    .locals 7

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/notification/NotificationsSubSettings$SettingsObserver;->this$0:Lcom/samsung/android/settings/notification/NotificationsSubSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-wrap0(Lcom/samsung/android/settings/notification/NotificationsSubSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/notification/NotificationsSubSettings;->-get0()[Lcom/android/settings/notification/SettingPref;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v1, v4, v2

    invoke-virtual {v1}, Lcom/android/settings/notification/SettingPref;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v0, v6, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method
