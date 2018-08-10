.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/pip/phone/InputConsumerController$RegistrationListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipTouchHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->-com_android_systemui_pip_phone_PipTouchHandler-mthref-1(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onRegistrationChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/-$Lambda$DtUkKn4xIMuq8TSa5smVIdc6GkM;->$m$0(Z)V

    return-void
.end method
