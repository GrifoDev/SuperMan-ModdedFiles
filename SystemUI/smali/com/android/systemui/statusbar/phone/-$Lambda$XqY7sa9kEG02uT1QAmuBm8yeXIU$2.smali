.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;->-$f0:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;->-$f1:I

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_5703(IILcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;->-$f0:I

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;->-$f1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$2;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
