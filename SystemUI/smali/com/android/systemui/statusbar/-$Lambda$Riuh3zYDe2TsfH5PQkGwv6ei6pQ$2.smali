.class final synthetic Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/phone/DoubleTapHelper$DoubleTapLogListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ZFF)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/classifier/FalsingManager;

    invoke-static {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->-com_android_systemui_statusbar_ActivatableNotificationView-mthref-1(Lcom/android/systemui/classifier/FalsingManager;ZFF)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDoubleTapLog(ZFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/-$Lambda$Riuh3zYDe2TsfH5PQkGwv6ei6pQ$2;->$m$0(ZFF)V

    return-void
.end method
