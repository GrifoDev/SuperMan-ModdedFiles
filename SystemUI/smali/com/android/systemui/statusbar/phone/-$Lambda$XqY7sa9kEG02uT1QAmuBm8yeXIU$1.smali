.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f0:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/statusbar/StatusBarIcon;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v1, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_7100(ILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f0:I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
