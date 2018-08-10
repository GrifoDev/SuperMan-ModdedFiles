.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "Calendar data service connected."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    new-instance v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    invoke-static {p2}, Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;-><init>(Lcom/android/systemui/servicebox/pages/calendar/ICalendarDataService;)V

    iput-object v1, v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-wrap3(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "CalendarManager"

    const-string/jumbo v1, "Calendar data service disconnected."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->mCalendarDataService:Lcom/android/systemui/servicebox/pages/calendar/CalendarDataServiceWrapper;

    return-void
.end method
