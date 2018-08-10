.class final synthetic Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    iget v0, p0, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;->-$f0:I

    iget v1, p0, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;->-$f1:I

    invoke-static {v0, v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->lambda$-com_android_settingslib_display_DisplayDensityUtils_7884(II)V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;->-$f0:I

    iput p2, p0, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;->-$f1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/display/-$Lambda$pGzFcZ6qKPQrTlXKGgeDC1fwDUg;->$m$0()V

    return-void
.end method
