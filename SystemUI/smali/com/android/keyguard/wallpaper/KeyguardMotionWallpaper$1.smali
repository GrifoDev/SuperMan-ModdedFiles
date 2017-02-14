.class Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardBouncerChanged(Z)V
    .locals 3

    const-string/jumbo v0, "KeyguardMotionWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bouncerChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-get5(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;->-wrap5(Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;)V

    :cond_0
    return-void
.end method
