.class Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;
.super Ljava/lang/Object;
.source "KnoxSecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;

.field final synthetic val$compliant:Z

.field final synthetic val$parentFragment:Lcom/android/settings/KnoxSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;ZLcom/android/settings/KnoxSecuritySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->this$1:Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog;

    iput-boolean p2, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->val$compliant:Z

    iput-object p3, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/KnoxSecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/KnoxSecuritySettings;->-set0(Z)Z

    iget-boolean v0, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->val$compliant:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/KnoxSecuritySettings;

    invoke-static {v0}, Lcom/android/settings/KnoxSecuritySettings;->-wrap0(Lcom/android/settings/KnoxSecuritySettings;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/KnoxSecuritySettings$UnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/KnoxSecuritySettings;

    invoke-static {v0}, Lcom/android/settings/KnoxSecuritySettings;->-wrap1(Lcom/android/settings/KnoxSecuritySettings;)V

    goto :goto_0
.end method
