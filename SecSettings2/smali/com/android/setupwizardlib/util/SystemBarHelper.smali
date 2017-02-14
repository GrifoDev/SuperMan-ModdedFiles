.class public Lcom/android/setupwizardlib/util/SystemBarHelper;
.super Ljava/lang/Object;
.source "SystemBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;,
        Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;
    }
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getBottomDistance(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$1;

    invoke-direct {v0, p1}, Lcom/android/setupwizardlib/util/SystemBarHelper$1;-><init>(I)V

    invoke-static {p0, v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V

    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/View;I)V
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int v1, v0, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public static addVisibilityFlag(Landroid/view/Window;I)V
    .locals 3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private static getBottomDistance(Landroid/view/View;)I
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method private static getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;)V
    .locals 2

    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;)V

    const/4 v1, 0x3

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$DecorViewFinder;->getDecorView(Landroid/view/Window;Lcom/android/setupwizardlib/util/SystemBarHelper$OnDecorViewInstalledListener;I)V

    return-void
.end method

.method public static hideSystemBars(Landroid/app/Dialog;)V
    .locals 5

    const/16 v4, 0x1002

    const/4 v3, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/android/setupwizardlib/util/SystemBarHelper;->temporarilyDisableDialogFocus(Landroid/view/Window;)V

    invoke-static {v0, v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    invoke-static {v0, v4}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static hideSystemBars(Landroid/view/Window;)V
    .locals 4

    const/16 v3, 0x1602

    const/4 v2, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-static {p0, v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addVisibilityFlag(Landroid/view/Window;I)V

    invoke-static {p0, v3}, Lcom/android/setupwizardlib/util/SystemBarHelper;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    invoke-virtual {p0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    return-void
.end method

.method public static setImeInsetView(Landroid/view/View;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;-><init>(Lcom/android/setupwizardlib/util/SystemBarHelper$WindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private static temporarilyDisableDialogFocus(Landroid/view/Window;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/setupwizardlib/util/SystemBarHelper$3;

    invoke-direct {v1, p0}, Lcom/android/setupwizardlib/util/SystemBarHelper$3;-><init>(Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
