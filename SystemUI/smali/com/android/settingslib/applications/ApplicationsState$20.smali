.class final Lcom/android/settingslib/applications/ApplicationsState$20;
.super Ljava/lang/Object;
.source "ApplicationsState.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 2

    monitor-enter p1

    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v1, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p1

    xor-int/lit8 v1, v0, 0x1

    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
.end method

.method public init()V
    .locals 0

    return-void
.end method
