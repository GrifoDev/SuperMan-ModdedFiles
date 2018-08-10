.class Lcom/android/settings/notification/WorkSoundPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/WorkSoundPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/WorkSoundPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileAdded(I)V

    return-void

    :cond_0
    const-string/jumbo v2, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/WorkSoundPreferenceController$1;->this$0:Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->onManagedProfileRemoved(I)V

    return-void

    :cond_1
    return-void
.end method
