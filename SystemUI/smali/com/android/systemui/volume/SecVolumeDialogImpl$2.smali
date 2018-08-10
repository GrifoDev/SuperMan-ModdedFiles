.class Lcom/android/systemui/volume/SecVolumeDialogImpl$2;
.super Ljava/lang/Object;
.source "SecVolumeDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/SecVolumeDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v1, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set20(Lcom/android/systemui/volume/SecVolumeDialogImpl;Z)Z

    iget-object v1, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    iget-object v2, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap2(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap27(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/volume/SecVolumeDialogImpl$VolumeRow;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public onConfigurationChanged()V
    .locals 9

    const/4 v5, 0x0

    const v8, 0x7f070700

    const v7, 0x7f0706f4

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set8(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set21(Lcom/android/systemui/volume/SecVolumeDialogImpl;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v0, v2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, v2, Landroid/content/res/Configuration;->orientation:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get34(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    if-eq v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v3}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set16(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get43(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v4

    if-eq v0, v4, :cond_1

    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get1()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "DENSITY CHANGED from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v6}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get12(Lcom/android/systemui/volume/SecVolumeDialogImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4, v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-set5(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get38(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap10(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_1
    invoke-static {}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get58()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap18(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get7(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/volume/ConfigurableTexts;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/volume/ConfigurableTexts;->update()V

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v4, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string/jumbo v4, "ro.build.characteristics"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tablet"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v4}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get37(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0
.end method

.method public onDismissRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get15(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get29(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method public onPlaySound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap14(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onScreenOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->dismissH(I)V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap20(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap21(Lcom/android/systemui/volume/SecVolumeDialogImpl;I)V

    return-void
.end method

.method public onShowSilentHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get44(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVibrateHint()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get44(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-get9(Lcom/android/systemui/volume/SecVolumeDialogImpl;)Lcom/android/systemui/plugins/VolumeDialogController;

    move-result-object v0

    invoke-interface {v0, v1, v1}, Lcom/android/systemui/plugins/VolumeDialogController;->setRingerMode(IZ)V

    :cond_0
    return-void
.end method

.method public onShowVolumeLimiterToast()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap23(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap13(Lcom/android/systemui/volume/SecVolumeDialogImpl;Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    return-void
.end method

.method public onStopSound()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap24(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onThemeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap25(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method

.method public onZenModeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/SecVolumeDialogImpl$2;->this$0:Lcom/android/systemui/volume/SecVolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/SecVolumeDialogImpl;->-wrap28(Lcom/android/systemui/volume/SecVolumeDialogImpl;)V

    return-void
.end method
