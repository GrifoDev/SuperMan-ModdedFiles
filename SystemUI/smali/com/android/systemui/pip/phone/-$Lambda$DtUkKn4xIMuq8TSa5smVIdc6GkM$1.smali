.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-com_android_systemui_pip_phone_PipTouchHandler-mthref-0(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM$1;->$m$0(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
