.class Lcom/samsung/android/settings/face/FaceLockSettings$4;
.super Ljava/lang/Object;
.source "FaceLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceLockSettings;->showFaceRetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceLockSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceLockSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const-string/jumbo v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "showFaceRetryDialog dismissed! Finish the activity!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "FaceSettings_register"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->-get1(Lcom/samsung/android/settings/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "FaceSettings_unlock_switch"

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->-get1(Lcom/samsung/android/settings/face/FaceLockSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->-get0(Lcom/samsung/android/settings/face/FaceLockSettings;)I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->-set0(Lcom/samsung/android/settings/face/FaceLockSettings;I)I

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    iget-object v1, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->-get2(Lcom/samsung/android/settings/face/FaceLockSettings;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/settings/face/FaceLockSettings;->setResult(ILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceLockSettings$4;->this$0:Lcom/samsung/android/settings/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceLockSettings;->-wrap0(Lcom/samsung/android/settings/face/FaceLockSettings;)V

    return-void
.end method
