.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:I


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$5;->-$f0:I

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6253(ILcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$5;->-$f0:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$FP8zhuCUOHkjTmQIr60UQGzakpQ$5;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
