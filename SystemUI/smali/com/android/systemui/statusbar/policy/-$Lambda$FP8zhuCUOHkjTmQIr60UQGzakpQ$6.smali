.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$6;->-$f0:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6387(ZLcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$6;->-$f0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$6;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
