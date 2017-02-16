.class Lcom/android/systemui/volume/SecVolumeDialog$2;
.super Ljava/lang/Object;
.source "SecVolumeDialog.java"

# interfaces
.implements Lcom/android/systemui/volume/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 12

    const/4 v7, 0x0

    const v11, 0x7f0d033e

    const/4 v10, 0x0

    const v9, 0x7f0d0342

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v7}, Lcom/android/systemui/volume/SecVolumeDialog;->-set20(Lcom/android/systemui/volume/SecVolumeDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap17(Lcom/android/systemui/volume/SecVolumeDialog;)V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get18(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap16(Lcom/android/systemui/volume/SecVolumeDialog;)V

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get34(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SpTexts;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SpTexts;->update()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v6

    if-eq v0, v6, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get0()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DENSITY CHANGED from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v8}, Lcom/android/systemui/volume/SecVolumeDialog;->-get10(Lcom/android/systemui/volume/SecVolumeDialog;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6, v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-set8(Lcom/android/systemui/volume/SecVolumeDialog;I)I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get29(Lcom/android/systemui/volume/SecVolumeDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap6(Lcom/android/systemui/volume/SecVolumeDialog;)V

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v6

    if-nez v6, :cond_2

    iget-object v7, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "desktopmode"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {v7, v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-set9(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get11(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v6

    sput-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get20()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialog;->-get21()Z

    move-result v6

    sget-boolean v7, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eq v6, v7, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get12(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/volume/SecVolumeDialog$CustomDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-set14(Z)Z

    invoke-static {v10}, Lcom/android/systemui/volume/SecVolumeDialog;->-set13(Z)Z

    sget-boolean v6, Lcom/android/systemui/volume/SecVolumeDialog;->mIsKnoxDesktopMode:Z

    if-eqz v6, :cond_6

    const/16 v6, 0x55

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v6, 0x7f0d0347

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const v6, 0x7f0d0348

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string/jumbo v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "tablet"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/16 v6, 0x31

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v6, 0x7f0d02d4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v10, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    :cond_7
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_8

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_8
    iget v6, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get5(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public onDismissRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get14(Lcom/android/systemui/volume/SecVolumeDialog;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onPlaySound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->playSoundH()V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap12(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialog;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get33(Lcom/android/systemui/volume/SecVolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-get6(Lcom/android/systemui/volume/SecVolumeDialog;)Lcom/android/systemui/volume/VolumeDialogController;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/volume/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap14(Lcom/android/systemui/volume/SecVolumeDialog;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialog;->-wrap8(Lcom/android/systemui/volume/SecVolumeDialog;Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->stopSoundH()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->themeChanged()V

    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialog$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialog;

    invoke-virtual {v0}, Lcom/android/systemui/volume/SecVolumeDialog;->ZenModeChanged()V

    return-void
.end method
