.class final synthetic Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierText;

    iget-object v1, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierText;->lambda$-com_android_systemui_slimindicator_SlimIndicatorCarrierText_2527(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/slimindicator/-$Lambda$_FxZPpNB3gNr5SEnpXRe0d4TBl4;->$m$0()V

    return-void
.end method
