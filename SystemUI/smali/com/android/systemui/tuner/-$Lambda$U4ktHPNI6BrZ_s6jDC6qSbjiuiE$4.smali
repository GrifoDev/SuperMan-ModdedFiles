.class final synthetic Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$App;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/LockscreenFragment$App;->lambda$-com_android_systemui_tuner_LockscreenFragment$App_8491(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$4;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
