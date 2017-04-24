.class public Lcom/android/settings/datausage/AppDataUsageActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AppDataUsageActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v5, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, v7}, Lcom/android/settingslib/AppItem;-><init>(I)V

    invoke-virtual {v0, v7}, Lcom/android/settingslib/AppItem;->addUid(I)V

    const-string/jumbo v8, "app_item"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v8, ":settings:show_fragment_args"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo v8, ":settings:show_fragment"

    const-class v9, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v8, ":settings:show_fragment_title_resid"

    const v9, 0x7f0b19f8

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, ":android:no_headers"

    const/4 v9, 0x1

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v8, "AppDataUsageActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invalid package: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    :goto_0
    return-void

    :catch_1
    move-exception v3

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    goto :goto_0

    :catchall_0
    move-exception v8

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsageActivity;->finish()V

    throw v8
.end method
