.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;
.super Ljava/lang/Object;
.source "CalendarDataServiceWrapper.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;


# instance fields
.field private mService:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;->mService:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;->mService:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;

    invoke-interface {v0}, Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;->mService:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;->getCalendarData(ILandroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
