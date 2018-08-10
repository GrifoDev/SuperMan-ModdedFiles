.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f2:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f3:Ljava/lang/Object;

    check-cast v3, Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$-com_android_systemui_statusbar_phone_StatusBar_439718(Lcom/android/systemui/statusbar/NotificationInfo;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$40;->$m$0(Landroid/view/View;)V

    return-void
.end method
