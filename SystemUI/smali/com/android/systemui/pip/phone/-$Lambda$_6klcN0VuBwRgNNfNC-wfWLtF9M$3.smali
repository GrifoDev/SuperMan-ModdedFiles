.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f0:Z

    iget v2, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f1:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5050(ZI)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$3;->$m$0()V

    return-void
.end method
