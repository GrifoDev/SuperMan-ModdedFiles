.class final synthetic Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$ActivationListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->lambda$-com_android_systemui_statusbar_ActivatableNotificationView_9127(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onActiveChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ;->$m$0(Z)V

    return-void
.end method
