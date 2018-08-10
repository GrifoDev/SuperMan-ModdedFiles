.class final synthetic Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/tuner/LockscreenFragment$Holder;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;->lambda$-com_android_systemui_tuner_LockscreenFragment$Adapter_9881(Lcom/android/systemui/tuner/LockscreenFragment$Holder;Landroid/view/View;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$2;->$m$0(Landroid/view/View;)V

    return-void
.end method
