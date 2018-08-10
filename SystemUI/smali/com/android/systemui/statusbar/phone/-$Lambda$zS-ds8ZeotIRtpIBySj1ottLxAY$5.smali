.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/app/NotificationManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/content/pm/IPackageManager;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->lambda$-com_android_systemui_statusbar_phone_PhoneStatusBarPolicy_33994(Landroid/util/ArraySet;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$zS-ds8ZeotIRtpIBySj1ottLxAY$5;->$m$0()V

    return-void
.end method
