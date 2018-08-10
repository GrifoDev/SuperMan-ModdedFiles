.class Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;
.super Ljava/lang/Object;
.source "FaceTurnOnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceTurnOnDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

.field final synthetic val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceTurnOnDialog;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    iput-object p2, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get0(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get2(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setIrisUnlockWithoutSwipeValue(Landroid/content/Context;ZI)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get0(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->val$lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get2(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)I

    move-result v2

    const/16 v3, 0x100

    invoke-static {v0, v1, v3, v2}, Lcom/android/settings/Utils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceTurnOnDialog$1;->this$0:Lcom/samsung/android/settings/face/FaceTurnOnDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog;->-get1(Lcom/samsung/android/settings/face/FaceTurnOnDialog;)Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/face/FaceTurnOnDialog$FaceTurnOnDialogFragmentListener;->turnOnFaceLock()V

    :cond_0
    return-void
.end method
