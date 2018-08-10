.class public interface abstract Lcom/android/settings/dashboard/DashboardFeatureProvider;
.super Ljava/lang/Object;
.source "DashboardFeatureProvider.java"


# virtual methods
.method public abstract bindPreferenceToTile(Landroid/app/Activity;ILandroid/support/v7/preference/Preference;Lcom/android/settingslib/drawer/Tile;Ljava/lang/String;I)V
.end method

.method public abstract getAllCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDashboardKeyForTile(Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
.end method

.method public abstract getPreferencesForCategory(Landroid/app/Activity;Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getProgressiveDisclosureMixin(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;Landroid/os/Bundle;)Lcom/android/settings/dashboard/ProgressiveDisclosureMixin;
.end method

.method public abstract getTilesForCategory(Ljava/lang/String;)Lcom/android/settingslib/drawer/DashboardCategory;
.end method

.method public abstract openTileIntent(Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;)V
.end method
