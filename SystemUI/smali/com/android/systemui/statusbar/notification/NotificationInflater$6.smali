.class final Lcom/android/systemui/statusbar/notification/NotificationInflater$6;
.super Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;->apply(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;ILcom/android/systemui/statusbar/ExpandableNotificationRow;ZLandroid/widget/RemoteViews$OnClickHandler;Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationCallback;)Landroid/os/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$ApplyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemoteView()Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-get10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public setResultView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$6;->val$result:Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->-set4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;

    return-void
.end method
