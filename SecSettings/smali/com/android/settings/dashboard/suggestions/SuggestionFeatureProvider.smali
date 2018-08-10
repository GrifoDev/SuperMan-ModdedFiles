.class public interface abstract Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.super Ljava/lang/Object;
.source "SuggestionFeatureProvider.java"


# virtual methods
.method public abstract getSuggestionIdentifier(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;)Ljava/lang/String;
.end method

.method public abstract isPresent(Ljava/lang/String;)Z
.end method

.method public abstract isSmartSuggestionEnabled(Landroid/content/Context;)Z
.end method

.method public abstract isSuggestionCompleted(Landroid/content/Context;)Z
.end method
