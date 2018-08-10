.class final synthetic Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager$PinnedStackListener;->lambda$-com_android_systemui_pip_tv_PipManager$PinnedStackListener_7207()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pip/tv/-$Lambda$JQDRGc8obeL_Mc3RL89dKRiDWno;->$m$0()V

    return-void
.end method
