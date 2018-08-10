.class Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;
.super Ljava/lang/Object;
.source "UseFaceLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->showUseFaceLockSettingsDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get5(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->FaceLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "Change to face unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get6(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->removeIrisLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$2;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get6(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "Keep iris unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
