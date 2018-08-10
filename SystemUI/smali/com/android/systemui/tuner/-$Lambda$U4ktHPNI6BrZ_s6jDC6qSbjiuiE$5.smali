.class final synthetic Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$-com_android_systemui_tuner_LockscreenFragment_4038(Landroid/support/v14/preference/SwitchPreference;Landroid/support/v7/preference/Preference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/-$Lambda$U4ktHPNI6BrZ_s6jDC6qSbjiuiE$5;->$m$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
