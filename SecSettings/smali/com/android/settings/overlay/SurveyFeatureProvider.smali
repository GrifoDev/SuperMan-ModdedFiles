.class public interface abstract Lcom/android/settings/overlay/SurveyFeatureProvider;
.super Ljava/lang/Object;
.source "SurveyFeatureProvider.java"


# direct methods
.method public static unregisterReceiver(Landroid/app/Activity;Landroid/content/BroadcastReceiver;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot unregister receiver if activity is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public abstract createAndRegisterReceiver(Landroid/app/Activity;)Landroid/content/BroadcastReceiver;
.end method

.method public abstract downloadSurvey(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getSurveyExpirationDate(Landroid/content/Context;Ljava/lang/String;)J
.end method

.method public abstract getSurveyId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract showSurveyIfAvailable(Landroid/app/Activity;Ljava/lang/String;)Z
.end method
