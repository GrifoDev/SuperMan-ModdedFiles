.class final synthetic Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/leak/GarbageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/util/leak/GarbageMonitor;->-com_android_systemui_util_leak_GarbageMonitor-mthref-0()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU$2;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/leak/-$Lambda$RsX3wyQZkYTyPR7kzc5MrLkubWU$2;->$m$0()V

    return-void
.end method
