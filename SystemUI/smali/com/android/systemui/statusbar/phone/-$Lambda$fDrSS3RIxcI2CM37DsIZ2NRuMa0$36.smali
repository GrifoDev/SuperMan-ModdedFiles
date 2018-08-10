.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$OnAppSettingsClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$-com_android_systemui_statusbar_phone_StatusBar_439414(Lcom/android/systemui/statusbar/NotificationGuts;Landroid/service/notification/StatusBarNotification;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$36;->$m$0(Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
