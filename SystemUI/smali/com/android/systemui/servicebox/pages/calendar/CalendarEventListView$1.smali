.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;
.super Ljava/lang/Object;
.source "CalendarEventListView.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->updateCalendarInfo(Ljava/util/ArrayList;)V

    return-void
.end method
