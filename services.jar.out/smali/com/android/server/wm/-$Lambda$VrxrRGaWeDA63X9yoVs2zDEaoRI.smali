.class final synthetic Lcom/android/server/wm/-$Lambda$VrxrRGaWeDA63X9yoVs2zDEaoRI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$VrxrRGaWeDA63X9yoVs2zDEaoRI;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport;->lambda$-com_android_server_wm_AccessibilityController$DisplayMagnifier$MagnifiedViewport_30417(Landroid/util/SparseArray;Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$VrxrRGaWeDA63X9yoVs2zDEaoRI;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$VrxrRGaWeDA63X9yoVs2zDEaoRI;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
