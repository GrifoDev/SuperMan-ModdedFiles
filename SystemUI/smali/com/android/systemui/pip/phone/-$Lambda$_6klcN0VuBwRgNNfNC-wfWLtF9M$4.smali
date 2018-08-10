.class final synthetic Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Z

.field private final synthetic -$f1:I

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f3:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f4:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f5:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f0:Z

    iget v5, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f1:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_phone_PipManager$PinnedStackListener_5611(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)V

    return-void
.end method

.method public synthetic constructor <init>(ZILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f0:Z

    iput p2, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f1:I

    iput-object p3, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/-$Lambda$_6klcN0VuBwRgNNfNC-wfWLtF9M$4;->$m$0()V

    return-void
.end method
