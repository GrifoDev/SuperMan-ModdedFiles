.class Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;
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

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get6(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->hasEnrolledFaces(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get4(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v2}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-get6(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;IZ)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$4;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-set0(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Z)Z

    const-string/jumbo v0, "FcstUseFaceLockSettingsDialog"

    const-string/jumbo v1, "OK button clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
