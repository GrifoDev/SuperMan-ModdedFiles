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

.field final synthetic val$parent:Lcom/android/settings/notification/NotificationAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    iput-object p3, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$parent:Lcom/android/settings/notification/NotificationAccessSettings;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/NotificationAccessSettings;->-wrap0(Landroid/content/Context;Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method
