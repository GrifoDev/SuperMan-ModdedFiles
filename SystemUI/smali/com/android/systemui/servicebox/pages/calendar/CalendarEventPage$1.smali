.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;
.super Ljava/lang/Object;
.source "CalendarEventPage.java"

# interfaces
.implements Lcom/android/systemui/servicebox/pages/calendar/CalendarManager$EventChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;


# direct methods
.method constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

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

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-wrap2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$1;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-wrap1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    return-void
.end method
