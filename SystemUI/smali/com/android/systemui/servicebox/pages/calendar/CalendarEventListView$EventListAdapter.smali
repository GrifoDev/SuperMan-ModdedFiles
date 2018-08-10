.class Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventListAdapter"
.end annotation


# instance fields
.field mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/servicebox/pages/calendar/CalendarData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getEvent(I)Lcom/android/systemui/servicebox/pages/calendar/CalendarData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01ab

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v4, 0x7f0a04b2

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f0a04b3

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a04b1

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;

    if-eqz v1, :cond_4

    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicebox_today_event_time_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicebox_today_event_title_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "servicebox_today_event_dot_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_4
    return-object p2

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v4

    if-ne v4, v7, :cond_0

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d01aa

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v4

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/systemui/servicebox/pages/calendar/CalendarData;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method
