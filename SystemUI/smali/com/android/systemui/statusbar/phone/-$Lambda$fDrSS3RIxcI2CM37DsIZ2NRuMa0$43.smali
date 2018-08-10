.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Z

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f3:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f0:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f1:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$-com_android_systemui_statusbar_phone_StatusBar_271251(Ljava/lang/Runnable;ZZ)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(ZZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f0:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$43;->$m$0()Z

    move-result v0

    return v0
.end method
