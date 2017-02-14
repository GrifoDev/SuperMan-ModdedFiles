.class Lcom/android/settings/notification/NotificationSettingsBase$3;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSettingsBase;->setupImportancePrefs(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSettingsBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v3, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v3, v3, Lcom/android/settings/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v4, v4, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/settings/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$3;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v2, v0}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(I)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/16 v0, -0x3e8

    goto :goto_0
.end method
