.class public Lcom/android/settings/search2/AppSearchResult$Builder;
.super Lcom/android/settings/search2/SearchResult$Builder;
.source "AppSearchResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search2/AppSearchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mInfo:Landroid/content/pm/ApplicationInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search2/SearchResult$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/settings/search2/AppSearchResult;
    .locals 1

    new-instance v0, Lcom/android/settings/search2/AppSearchResult;

    invoke-direct {v0, p0}, Lcom/android/settings/search2/AppSearchResult;-><init>(Lcom/android/settings/search2/AppSearchResult$Builder;)V

    return-object v0
.end method

.method public bridge synthetic build()Lcom/android/settings/search2/SearchResult;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/search2/AppSearchResult$Builder;->build()Lcom/android/settings/search2/AppSearchResult;

    move-result-object v0

    return-object v0
.end method

.method public setAppInfo(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/search2/SearchResult$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/AppSearchResult$Builder;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method
