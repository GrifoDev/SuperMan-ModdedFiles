.class public Lcom/android/internal/util/ScreenShapeHelper;
.super Ljava/lang/Object;
.source "ScreenShapeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWindowOutsetBottomPx(Landroid/content/res/Resources;)I
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ro.emu.win_outset_bottom_px"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x10e00e6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method
