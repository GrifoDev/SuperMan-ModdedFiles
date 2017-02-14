.class public Lcom/samsung/android/settings/wifi/AccessPointListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AccessPointListAdapter.java"


# static fields
.field private static final DBG:Z


# instance fields
.field private final mBaseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:J

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/settingslib/wifi/AccessPointPreference;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getId()J

    move-result-wide v2

    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    return-wide v2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)V
    .locals 4

    const-wide/16 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mCount:J

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->setId(J)V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings.APListAdapter"

    const-string/jumbo v1, "notifyDataSetChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public removeAt(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v2

    if-gt v2, p1, :cond_0

    const-string/jumbo v2, "WifiSettings.APListAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeAt - index:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    if-ne v1, p1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setAccessPointList(Ljava/util/List;)V
    .locals 3
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

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->notifyDataSetChanged()V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->mBaseList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/AccessPointListAdapter;->append(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;)V

    goto :goto_0
.end method
