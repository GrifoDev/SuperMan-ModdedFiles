.class Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardAnimatedWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->-set0(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->-set0(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;Z)Z

    return-void
.end method
