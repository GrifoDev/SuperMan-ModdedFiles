.class public interface abstract Lcom/android/settings/applications/ApplicationFeatureProvider$ListOfAppsCallback;
.super Ljava/lang/Object;
.source "ApplicationFeatureProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListOfAppsCallback"
.end annotation


# virtual methods
.method public abstract onListOfAppsResult(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/UserAppInfo;",
            ">;)V"
        }
    .end annotation
.end method
