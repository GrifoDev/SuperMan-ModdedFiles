.class public final Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
.super Ljava/lang/Object;
.source "CalendarDataContainer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer$1;

    invoke-direct {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(ILandroid/database/Cursor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->copyFrom(ILandroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->copyFrom(Ljava/util/List;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAll(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public copyFrom(ILandroid/database/Cursor;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .locals 1

    if-nez p2, :cond_0

    return-object p0

    :cond_0
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;

    invoke-direct {v0, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->add(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;

    invoke-direct {v0, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;-><init>(Landroid/database/Cursor;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->add(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public copyFrom(Ljava/util/List;)Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    new-instance v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;

    invoke-direct {v2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->add(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;

    invoke-direct {v2, v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->add(Lcom/android/systemui/servicebox/pages/calendar/CalendarData;)V

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-direct {v3, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetTimeForDay(JJ)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    instance-of v2, v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEvent;->resetTimeForDay(JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sort()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public toBundleList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-virtual {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    instance-of v4, v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarTask;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "type"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "type"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataContainer;->mDataList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
