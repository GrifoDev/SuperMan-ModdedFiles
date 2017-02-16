.class Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;
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
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get2(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

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
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_small:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    :goto_0
    sget v3, Lcom/android/keyguard/R$id;->servicebox_today_event_time:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget v3, Lcom/android/keyguard/R$id;->servicebox_today_event_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-object p2

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get1(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/android/keyguard/R$layout;->servicebox_today_event_item_big:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->-get3(Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;)I

    move-result v3

    if-ne v3, v6, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView$EventListAdapter;->this$0:Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarEventListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/servicebox/pages/calendar/CalendarManager$CalendarEvent;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
