.class Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;
.super Ljava/lang/Object;
.source "CalendarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    iget-object v1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$4;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;

    invoke-static {v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->-get6(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;)Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarManager;->loadTodayEvents(Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$LoadEventListCompletedListener;)V

    return-void
.end method
