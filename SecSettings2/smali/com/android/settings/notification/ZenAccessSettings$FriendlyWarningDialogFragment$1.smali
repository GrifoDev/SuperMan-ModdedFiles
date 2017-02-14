.class Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->val$pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenAccessSettings;->-wrap0(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->this$1:Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$FriendlyWarningDialogFragment$1;->val$pkg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/ZenAccessSettings;->-wrap2(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
