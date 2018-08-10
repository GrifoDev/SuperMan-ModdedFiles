.class Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "WallpaperEventNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/WallpaperEventNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method checkingSkippedMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get1(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap5(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap7(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    :cond_1
    return-void
.end method

.method public onOpenThemeChangeStarted()V
    .locals 2

    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "THEME_APPLY_START"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-set0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v4, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-set0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)Z

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "ultra_powersaving_mode"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "emergency_mode"

    invoke-static {v4, v5, v7, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v8, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v4, v4, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v2

    const-string/jumbo v4, "WallpaperEventNotifier"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "THEME_APPLY openThemeLook="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " lockType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " upsm="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " emergency="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getUltraPowerSavingMode()Z

    move-result v4

    if-ne v4, v3, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getEmergencyMode()Z

    move-result v4

    if-eq v4, v0, :cond_4

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v4, v3, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap6(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;ZZ)V

    if-nez v3, :cond_3

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->recoveryPreviousLook(I)V

    :goto_2
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    invoke-direct {v4}, Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;-><init>()V

    sput-object v4, Lcom/android/systemui/wallpaper/WallpaperUtils;->mLockWPType:Lcom/android/systemui/wallpaper/WallpaperUtils$LockWallpaperType;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v4, v7}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->checkingSkippedMessage()V

    iget-object v4, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->recoveryPreviousLook(I)V

    goto :goto_2
.end method

.method public onOpenThemeReApply()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLockWallpaperType()I

    move-result v0

    const-string/jumbo v1, "WallpaperEventNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "THEME_REAPPLY lockType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, v1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;I)V

    goto :goto_0
.end method

.method recoveryPreviousLook(I)V
    .locals 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->mWM:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->isInfinityWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap4(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get0(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-wrap5(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get1(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "recovery previous update message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get3(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier$1;->this$0:Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->-get2(Lcom/android/systemui/wallpaper/WallpaperEventNotifier;)Z

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->update(ILandroid/graphics/Bitmap;Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "WallpaperEventNotifier"

    const-string/jumbo v1, "default case of recovery previous update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
