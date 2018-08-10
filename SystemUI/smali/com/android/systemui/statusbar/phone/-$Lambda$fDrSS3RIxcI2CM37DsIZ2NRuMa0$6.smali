.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$-com_android_systemui_statusbar_phone_StatusBar_440299(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$6;->$m$0()Z

    move-result v0

    return v0
.end method
