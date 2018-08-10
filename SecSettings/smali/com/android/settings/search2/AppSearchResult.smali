.class public Lcom/android/settings/search2/AppSearchResult;
.super Lcom/android/settings/search2/SearchResult;
.source "AppSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/search2/AppSearchResult$Builder;
    }
.end annotation


# instance fields
.field public final info:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>(Lcom/android/settings/search2/AppSearchResult$Builder;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/search2/SearchResult;-><init>(Lcom/android/settings/search2/SearchResult$Builder;)V

    iget-object v0, p1, Lcom/android/settings/search2/AppSearchResult$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v0, p0, Lcom/android/settings/search2/AppSearchResult;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method
