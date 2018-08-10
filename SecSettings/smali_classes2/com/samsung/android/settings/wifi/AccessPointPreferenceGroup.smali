.class public Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;
.super Ljava/lang/Object;
.source "AccessPointPreferenceGroup.java"


# instance fields
.field private mChildIdCounter:J

.field private mContext:Landroid/content/Context;

.field private mIsVisibleDivider:Z

.field private mLayout:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Z

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mTitle:Ljava/lang/String;

    iput v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mLayout:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mProgress:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mIsVisibleDivider:Z

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;J)V
    .locals 2

    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setChildId(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccessPointList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setChildId(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const-string/jumbo v0, "AccessPointPreferenceGroup"

    const-string/jumbo v1, "addPreference :: contains preference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string/jumbo v0, "AccessPointPreferenceGroup"

    const-string/jumbo v1, "addPreference :: mList is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public remove(Ljava/util/ArrayList;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-eqz p2, :cond_1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public removeAt(I)V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-ne v1, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAccessPointList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    iget-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mChildIdCounter:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;J)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->mTitle:Ljava/lang/String;

    return-void
.end method
