.class public Lcom/samsung/android/settings/qstile/BluelightFilterTiles;
.super Landroid/service/quicksettings/TileService;
.source "BluelightFilterTiles.java"


# static fields
.field private static final BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.Settings$BlueLightFilterSettingsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private getBlueLightFilterIsEnabled()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "greyscale_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_contrast"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "color_blind"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private startBlueLightService(Z)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.bluelightfilter"

    const-string/jumbo v3, "com.samsung.android.bluelightfilter.BlueLightFilterService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "BLUE_LIGHT_FILTER_SERVICE_TYPE"

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "BluelightFilterTiles"

    const-string/jumbo v2, "startBlueLightService failed. mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onClick()V
    .locals 6

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v3

    if-ne v3, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "blue_light_filter"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->refresh()V

    if-lez v1, :cond_1

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->startBlueLightService(Z)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public onStartListening()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "blue_light_filter"

    const/4 v4, -0x2

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getBlueLightFilterIsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    const v3, 0x7f0b0577

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public semGetSettingsIntent()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/qstile/BluelightFilterTiles;->BLUELIGHTFILTER_SETTINGS:Landroid/content/Intent;

    return-object v0
.end method
