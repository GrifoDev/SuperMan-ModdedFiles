.class public Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;
.super Ljava/lang/Object;
.source "SMultiWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;,
        Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SMultiWindowActivity"

.field public static final ZONE_A:I

.field public static final ZONE_B:I

.field public static final ZONE_C:I

.field public static final ZONE_D:I

.field public static final ZONE_E:I

.field public static final ZONE_F:I

.field public static final ZONE_FULL:I


# instance fields
.field private mDefaultSize:Landroid/graphics/Rect;

.field private mDensity:F

.field private mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

.field private mMaximumSize:Landroid/graphics/Rect;

.field private mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

.field private mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

.field private mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

.field private mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_C:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_C:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_D:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_D:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_E:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_E:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_F:I

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_F:I

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    or-int/2addr v0, v1

    sput v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_FULL:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-direct {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    new-instance v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-direct {v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindowMode"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setWindowMode"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v0, p1, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindowInfo"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getWindow"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_0
    const-string v8, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v10, "getMultiWindowStyle"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v0, p1, v10, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMultiWindowStyle"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-virtual {v8, v0, p1, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getMultiPhoneWindowEvent"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getWindowManager"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v9, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    const-string v11, "getAttributes"

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v9, v7, v10, v11, v8}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v8, v2, Landroid/util/DisplayMetrics;->density:F

    iput v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDensity:F

    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getMultiPhoneWindowEvent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setStateChangeListener"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$StateChangeListener;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setExitListener"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Lcom/samsung/android/sdk/multiwindow/SMultiWindowListener$ExitListener;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMinimizeIcon"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/drawable/Drawable;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setMinimizeView"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "minimizeWindow"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "multiWindow"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "normalWindow"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "moveWindow"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/view/View;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V

    iget-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v9, "setIsolatedCenterPoint"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Landroid/graphics/Point;

    aput-object v12, v10, v11

    invoke-virtual {v8, v4, v3, v9, v10}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->putMethod(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)V
    :try_end_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    sget-object v8, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_DEFAULT_SIZE:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/Rect;

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDefaultSize:Landroid/graphics/Rect;

    :cond_1
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v5, Landroid/graphics/Point;->x:I

    iget v12, v5, Landroid/graphics/Point;->y:I

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v8, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMaximumSize:Landroid/graphics/Rect;

    return-void

    :catch_0
    move-exception v8

    goto :goto_1

    :catch_1
    move-exception v8

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    return-object v0
.end method

.method private checkMode(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkOption(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastSize()Landroid/graphics/Rect;
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$Intent;->EXTRA_WINDOW_LAST_SIZE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDefaultSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private getMultiPhoneWindowEvent()Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getMultiPhoneWindowEvent"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getWindowInfo()Landroid/os/Bundle;
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "getWindowInfo"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public static makeMultiWindowIntent(Landroid/content/Intent;ILandroid/graphics/Rect;)Landroid/content/Intent;
    .locals 4

    if-nez p0, :cond_0

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/high16 v3, 0x10000000

    invoke-virtual {p0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    invoke-direct {v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;-><init>()V

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_FULL:I

    if-ne p1, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    if-eqz p2, :cond_1

    invoke-virtual {v1, p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    const/4 v2, 0x0

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_A:I

    if-ne p1, v3, :cond_5

    const/4 v2, 0x3

    :cond_4
    :goto_1
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    goto :goto_0

    :cond_5
    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_B:I

    if-ne p1, v3, :cond_6

    const/16 v2, 0xc

    goto :goto_1

    :cond_6
    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_C:I

    if-ne p1, v3, :cond_7

    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_D:I

    if-ne p1, v3, :cond_8

    const/4 v2, 0x2

    goto :goto_1

    :cond_8
    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_E:I

    if-ne p1, v3, :cond_9

    const/4 v2, 0x4

    goto :goto_1

    :cond_9
    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->ZONE_F:I

    if-ne p1, v3, :cond_4

    const/16 v2, 0x8

    goto :goto_1
.end method

.method private setWindowMode()V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setWindowMode"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static supportMultiWindowStyle()Z
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private updateWindowMode()V
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "getWindowMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    :cond_0
    return-void
.end method


# virtual methods
.method public disableMultiWindow(Z)V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "disableMultiWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "disableMultiWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public exitWindow()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "exitWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v2, "exitWindow"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public getRectInfo()Landroid/graphics/Rect;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->getLastSize()Landroid/graphics/Rect;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v6, "getWindowManager"

    move-object v3, v4

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v5, "getAttributes"

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_1

    new-instance v3, Landroid/graphics/Rect;

    const/high16 v4, 0x41c80000    # 25.0f

    iget v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Point;->x:I

    iget v5, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public getZoneInfo()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    and-int/2addr v0, v1

    return v0
.end method

.method public isMinimized()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isMultiWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isNormalWindow()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isScaleWindow()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_SCALE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v0

    goto :goto_0
.end method

.method public minimizeWindow()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "minimizeWindow"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_MINIMIZED:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public moveWindow(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "moveWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "moveWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public multiWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->multiWindow(Landroid/graphics/Rect;)V

    return-void
.end method

.method public multiWindow(Landroid/graphics/Rect;)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v6}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkOption(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "multiWindow"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "multiWindow"

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v2, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->TYPE_CASCADE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setOption"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "com.samsung.android.multiwindow.MultiWindowStyle"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "setType"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$MultiWindowStyle;->TYPE_CASCADE:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setBounds"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/graphics/Rect;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "setOption"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/16 v6, 0x800

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMultiWindowStyle"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_0

    :catch_2
    move-exception v2

    goto/16 :goto_0

    :catch_3
    move-exception v2

    goto/16 :goto_0

    :catch_4
    move-exception v2

    goto/16 :goto_0

    :catch_5
    move-exception v2

    goto/16 :goto_0
.end method

.method public normalWindow()V
    .locals 5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->updateWindowMode()V

    sget v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->checkMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "normalWindow"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_COMMON_UNIQUEOP_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    iget v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    sget v1, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator$WindowManagerPolicy;->WINDOW_MODE_NORMAL:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mWindowMode:I

    invoke-direct {p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setWindowMode()V

    goto :goto_0
.end method

.method public setExitListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setExitListener"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mExitListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$ExitListener;

    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$2;-><init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setExitListener"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public setIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setIsolatedCenterPoint"

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v1, "setIsolatedCenterPoint"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setMinimizeIcon(Landroid/graphics/drawable/Drawable;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeIcon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeIcon"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setMinimizeView(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeView"

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v3, "setMinimizeView"

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindow:Lcom/samsung/android/sdk/multiwindow/SMultiWindow;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/multiwindow/SMultiWindow;->isFeatureEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->checkMethod(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object p1, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mStateChangeListener:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$1;-><init>(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;)V

    iget-object v3, p0, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->mMultiWindowReflator:Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;

    const-string v4, "setStateChangeListener"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowReflator;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method
