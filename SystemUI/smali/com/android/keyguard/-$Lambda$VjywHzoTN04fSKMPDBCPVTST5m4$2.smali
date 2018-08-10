.class final synthetic Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/keyguard/KeyguardFMMView;

    iget v1, p0, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;->-$f0:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/KeyguardFMMView;->lambda$-com_android_keyguard_KeyguardFMMView_8579(IZI)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;->-$f0:I

    iput-object p2, p0, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onChecked(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/-$Lambda$VjywHzoTN04fSKMPDBCPVTST5m4$2;->$m$0(ZI)V

    return-void
.end method
