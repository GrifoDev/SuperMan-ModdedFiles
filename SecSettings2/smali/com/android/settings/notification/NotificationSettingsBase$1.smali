.class Lcom/android/settings/notification/NotificationSettingsBase$1;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Lcom/android/settings/notification/ImportanceSeekBarPreference$Callback;


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

    iput-object p1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportanceChanged(IZ)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    iget v2, v2, Lcom/android/settings/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings/notification/NotificationSettingsBase;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/NotificationSettingsBase;->updateDependents(I)V

    return-void
.end method
