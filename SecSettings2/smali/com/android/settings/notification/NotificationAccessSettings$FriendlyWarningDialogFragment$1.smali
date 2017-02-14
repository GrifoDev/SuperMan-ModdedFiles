.class Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "NotificationAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->-get2(Lcom/android/settings/notification/NotificationAccessSettings;)Lcom/android/settings/utils/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/utils/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->-get1(Lcom/android/settings/notification/NotificationAccessSettings;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->this$0:Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAccessSettings;->-get0(Lcom/android/settings/notification/NotificationAccessSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationAccessSettings;->-wrap0(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
