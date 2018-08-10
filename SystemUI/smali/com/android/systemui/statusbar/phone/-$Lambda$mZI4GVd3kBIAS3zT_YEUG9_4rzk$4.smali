.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaView_17100(Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$4;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk$4;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
