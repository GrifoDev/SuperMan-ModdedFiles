.class final synthetic Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$SlideBackListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/ActivatableNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-com_android_systemui_statusbar_ActivatableNotificationView-mthref-0()Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSlideBack()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$3;->$m$0()Z

    move-result v0

    return v0
.end method
