.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->lambda$-com_android_systemui_statusbar_notification_HybridGroupManager_7131(Landroid/widget/TextView;Ljava/lang/Float;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$taUDKRZB-LDsIHlbK58foapdOOc;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
