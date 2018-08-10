.class public interface abstract Lcom/android/settings/search2/SearchFeatureProvider;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# virtual methods
.method public abstract getDatabaseSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/DatabaseResultLoader;
.end method

.method public abstract getIndexingManager(Landroid/content/Context;)Lcom/android/settings/search2/DatabaseIndexingManager;
.end method

.method public abstract getInstalledAppSearchLoader(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/search2/InstalledAppResultLoader;
.end method

.method public abstract getSavedQueryLoader(Landroid/content/Context;)Lcom/android/settings/search2/SavedQueryLoader;
.end method

.method public hideFeedbackButton()V
    .locals 0

    return-void
.end method

.method public initFeedbackButton()V
    .locals 0

    return-void
.end method

.method public abstract isIndexingComplete(Landroid/content/Context;)Z
.end method

.method public showFeedbackButton(Lcom/android/settings/search2/SearchFragment;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public abstract updateIndex(Landroid/content/Context;Lcom/android/settings/search/IndexingCallback;)V
.end method
