.class Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;
.super Ljava/lang/Object;
.source "NotificationInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/NotificationInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InflationProgress"
.end annotation


# instance fields
.field private inflatedAmbientView:Landroid/view/View;

.field private inflatedContentView:Landroid/view/View;

.field private inflatedExpandedView:Landroid/view/View;

.field private inflatedHeadsUpView:Landroid/view/View;

.field private inflatedKnoxView:Landroid/view/View;

.field private inflatedPublicView:Landroid/view/View;

.field private newAmbientView:Landroid/widget/RemoteViews;

.field private newContentView:Landroid/widget/RemoteViews;

.field private newExpandedView:Landroid/widget/RemoteViews;

.field private newHeadsUpView:Landroid/widget/RemoteViews;

.field private newKnoxView:Landroid/widget/RemoteViews;

.field private newPublicView:Landroid/widget/RemoteViews;

.field packageContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newKnoxView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedKnoxView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;)Landroid/widget/RemoteViews;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedAmbientView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedContentView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set10(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newKnoxView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newPublicView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedExpandedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedHeadsUpView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedKnoxView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->inflatedPublicView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newAmbientView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newContentView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newExpandedView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;Landroid/widget/RemoteViews;)Landroid/widget/RemoteViews;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationInflater$InflationProgress;->newHeadsUpView:Landroid/widget/RemoteViews;

    return-object p1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
