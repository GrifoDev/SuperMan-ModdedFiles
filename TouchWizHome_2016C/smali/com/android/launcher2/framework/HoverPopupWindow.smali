.class public Lcom/android/launcher2/framework/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# static fields
.field private static final sClassName:Ljava/lang/String; = "android.widget.HoverPopupWindow"

.field private static sIsHoverPopupWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static TYPE_NONE()I
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public static TYPE_TOOLTIP()I
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkClassExist()V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "android.widget.HoverPopupWindow"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    sput-boolean v3, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    :cond_1
    throw v2
.end method

.method public static enableHoverPopupWindow()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher2/framework/HoverPopupWindow;->sIsHoverPopupWindow:Z

    return v0
.end method
