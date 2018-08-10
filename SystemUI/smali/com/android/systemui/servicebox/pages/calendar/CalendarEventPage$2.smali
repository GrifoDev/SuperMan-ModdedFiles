.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$2;
.super Ljava/lang/Object;
.source "CalendarEventPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->initViews(Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DP Touch up start service box"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-wrap0(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)V

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage$2;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;

    invoke-static {v0}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventPage;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->playSoundEffect(I)V

    :cond_0
    return-void
.end method
