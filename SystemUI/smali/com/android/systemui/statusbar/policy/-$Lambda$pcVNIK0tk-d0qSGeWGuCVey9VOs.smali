.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_18033(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$pcVNIK0tk-d0qSGeWGuCVey9VOs;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
