.class Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAnimatedWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MOBILE_KEYBOARD:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    const-string/jumbo v2, "onConfigurationChanged()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-get1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I

    move-result v1

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget v2, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-set0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;I)I

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mLastMobileKeyboardCoverd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-get1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-get0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Ljava/lang/String;)V

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-set1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->-set1(Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method
