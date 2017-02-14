.class Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->this$1:Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->this$1:Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/utils/ManagedServiceSettings;

    iget-object v0, v0, Lcom/android/settings/utils/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/utils/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/utils/ManagedServiceSettings$ScaryWarningDialogFragment$1;->val$cn:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/utils/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    return-void
.end method
