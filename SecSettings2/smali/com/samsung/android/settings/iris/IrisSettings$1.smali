.class Lcom/samsung/android/settings/iris/IrisSettings$1;
.super Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
.source "IrisSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V
    .locals 3

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemovalSucceeded(Lcom/samsung/android/camera/iris/Iris;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "IrisSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Iris removed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-get0(Lcom/samsung/android/settings/iris/IrisSettings;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->removeBiometricLockscreen(II)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap4(Lcom/samsung/android/settings/iris/IrisSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap2(Lcom/samsung/android/settings/iris/IrisSettings;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->-set0(Lcom/samsung/android/settings/iris/IrisSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0, v3}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap3(Lcom/samsung/android/settings/iris/IrisSettings;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap0(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "iris_preview_style"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisSettings$1;->this$0:Lcom/samsung/android/settings/iris/IrisSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisSettings;->-wrap1(Lcom/samsung/android/settings/iris/IrisSettings;)Landroid/preference/PreferenceScreen;

    return-void
.end method
