.class final synthetic Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    invoke-static {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$5;->lambda$-android_hardware_fingerprint_FingerprintManager$5_44477(Landroid/os/PowerManager$WakeLock;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/fingerprint/-$Lambda$mAn4tgSaQL9G4z96dzSedXu3vvs;->$m$0()V

    return-void
.end method
