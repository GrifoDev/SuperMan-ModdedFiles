.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f1:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f2:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f0:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f3:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/statusbar/StatusBarIcon;

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;

    invoke-static {v2, v0, v3, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconControllerImpl;->lambda$-com_android_systemui_statusbar_phone_StatusBarIconControllerImpl_4749(ILjava/lang/String;ZLcom/android/internal/statusbar/StatusBarIcon;Lcom/android/systemui/statusbar/phone/StatusBarIconController$IconManager;)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$XqY7sa9kEG02uT1QAmuBm8yeXIU$3;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
