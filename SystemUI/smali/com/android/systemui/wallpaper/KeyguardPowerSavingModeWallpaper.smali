.class public Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;
.super Lcom/android/systemui/wallpaper/SystemUIWallpaper;
.source "KeyguardPowerSavingModeWallpaper.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;)V

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;->updateWhiteWallpaperInfo()V

    return-void
.end method

.method private updateWhiteWallpaperInfo()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string/jumbo v0, "KeyguardPowerSavingModeWallpaper"

    const-string/jumbo v1, "onDraw!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;->setAlpha(F)V

    return-void
.end method

.method public update()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardPowerSavingModeWallpaper;->invalidate()V

    return-void
.end method
