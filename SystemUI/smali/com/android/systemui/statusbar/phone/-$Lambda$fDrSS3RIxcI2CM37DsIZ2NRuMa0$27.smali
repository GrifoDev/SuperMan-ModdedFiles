.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationInfo$CheckSaveListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$-com_android_systemui_statusbar_phone_StatusBar_439906(Landroid/os/UserHandle;Ljava/lang/Runnable;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final checkSave(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fDrSS3RIxcI2CM37DsIZ2NRuMa0$27;->$m$0(Ljava/lang/Runnable;)V

    return-void
.end method
