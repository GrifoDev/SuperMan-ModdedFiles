.class public Lcom/android/incallui/util/ScreenControlUtils;
.super Ljava/lang/Object;
.source "ScreenControlUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenControlUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 41
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "navigation_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    .line 42
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 41
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 48
    .end local v2    # "resources":Landroid/content/res/Resources;
    .local v1, "navBarHeight":I
    :goto_0
    return v1

    .line 44
    .end local v1    # "navBarHeight":I
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "navBarHeight":I
    goto :goto_0
.end method

.method public static getNavigationBarWidth(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    .local v2, "resources":Landroid/content/res/Resources;
    const-string v3, "navigation_bar_width"

    const-string v4, "dimen"

    const-string v5, "android"

    .line 56
    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    .end local v2    # "resources":Landroid/content/res/Resources;
    .local v0, "barWidth":I
    :goto_0
    return v0

    .line 58
    .end local v0    # "barWidth":I
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "barWidth":I
    goto :goto_0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 125
    .local v1, "resources":Landroid/content/res/Resources;
    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    .line 126
    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 131
    .end local v1    # "resources":Landroid/content/res/Resources;
    .local v2, "statusBarHeight":I
    :goto_0
    return v2

    .line 128
    .end local v2    # "statusBarHeight":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    .restart local v2    # "statusBarHeight":I
    goto :goto_0
.end method

.method public static hasNavigationBar(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 68
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    .line 69
    const-string v2, "config_showNavigationBar"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, "id":I
    if-lez v0, :cond_0

    .line 71
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 75
    .end local v0    # "id":I
    .end local v1    # "resources":Landroid/content/res/Resources;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isShowingNavigationBar(Landroid/app/Activity;)Z
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-nez p0, :cond_1

    .line 100
    const-string v3, "ScreenControlUtils"

    const-string v4, "showNavigationBar : Activity is null."

    invoke-static {v3, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 103
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "decorView":Landroid/view/View;
    if-nez v0, :cond_2

    .line 106
    const-string v3, "ScreenControlUtils"

    const-string v4, "showNavigationBar : decorView is null."

    invoke-static {v3, v4, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public static showNavigationBar(Landroid/app/Activity;Z)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "show"    # Z

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const-string v2, "ScreenControlUtils"

    const-string v3, "showNavigationBar : Activity is null."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "decorView":Landroid/view/View;
    const v1, 0x1600802

    .line 91
    .local v1, "disableNavigationBar":I
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    const v3, -0x1600803

    and-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    const v3, 0x1600802

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
