.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/Clock$1;->lambda$-com_android_systemui_statusbar_policy_Clock$1_7303()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$pZ0oZpPErYNcol5r_dtBZYKiXOk;->$m$0()V

    return-void
.end method
