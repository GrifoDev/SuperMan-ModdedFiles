.class public Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultNotificationAssistantPicker.java"


# instance fields
.field private final mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-void
.end method

.method private getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 2

    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config;-><init>()V

    const-string/jumbo v1, "DefaultNotiAssist"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    const-string/jumbo v1, "enabled_notification_assistant"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    const-string/jumbo v1, "android.service.notification.NotificationAssistantService"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    const-string/jumbo v1, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    const-string/jumbo v1, "notification assistant"

    iput-object v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    const v1, 0x7f121357

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogTitle:I

    const v1, 0x7f121356

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->warningDialogSummary:I

    const v1, 0x7f12131c

    iput v1, v0, Lcom/android/settings/utils/ManagedServiceSettings$Config;->emptyText:I

    return-object v0
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/defaultapps/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v9, v9, Lcom/android/settings/utils/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x84

    invoke-interface {v7, v8, v9, v6}, Lcom/android/settings/applications/PackageManagerWrapper;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    iget-object v3, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v7, v7, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v7, v7, Lcom/android/settings/utils/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Skipping "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v9, v9, Lcom/android/settings/utils/ManagedServiceSettings$Config;->noun:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": it does not require the permission "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v9, v9, Lcom/android/settings/utils/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;

    iget-object v8, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mPm:Lcom/android/settings/applications/PackageManagerWrapper;

    iget v9, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mUserId:I

    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v8, v9, v10}, Lcom/android/settings/applications/defaultapps/DefaultAppInfo;-><init>(Lcom/android/settings/applications/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultNotificationAssistantPicker;->mConfig:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    iget-object v1, v1, Lcom/android/settings/utils/ManagedServiceSettings$Config;->setting:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
