.class Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;
.super Landroid/os/FileObserver;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "MDM wallpaper changed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x200 -> :sswitch_0
        0x400 -> :sswitch_0
    .end sparse-switch
.end method
