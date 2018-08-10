.class public Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.super Landroid/app/Activity;
.source "WallpaperSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const v3, 0x7f12061a

    invoke-virtual {p0, v3}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120619

    invoke-virtual {p0, v4}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->startFallbackSuggestion()V

    goto :goto_0
.end method

.method startFallbackSuggestion()V
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const/4 v2, 0x0

    const-class v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x7f121e2d

    const/16 v7, 0x23

    move-object v0, p0

    move-object v3, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;I)V

    return-void
.end method
