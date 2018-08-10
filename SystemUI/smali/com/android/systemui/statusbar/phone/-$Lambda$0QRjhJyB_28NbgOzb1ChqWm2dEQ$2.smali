.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;->-$f0:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;->lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaShortcutView$BottomShortcutCallback_16306(I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$0QRjhJyB_28NbgOzb1ChqWm2dEQ$2;->$m$0()V

    return-void
.end method
