.class final synthetic Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$App;->lambda$-com_android_systemui_tuner_LockscreenFragment$App_8586(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
