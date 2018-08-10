.class final synthetic Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;->-$f0:I

    iget v1, p0, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;->-$f1:I

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskTapPointerEventListener;->lambda$-com_android_server_wm_TaskTapPointerEventListener_15166(IILcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;->-$f0:I

    iput p2, p0, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;->-$f1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
