.class public Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;
.super Landroid/app/Service;
.source "CalendarDataService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;
    }
.end annotation


# instance fields
.field private final mBinder:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService$1;-><init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;)V

    iput-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;->mBinder:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataService;->mBinder:Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string/jumbo v0, "CalendarDataService"

    const-string/jumbo v1, "CalendarDataService created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
