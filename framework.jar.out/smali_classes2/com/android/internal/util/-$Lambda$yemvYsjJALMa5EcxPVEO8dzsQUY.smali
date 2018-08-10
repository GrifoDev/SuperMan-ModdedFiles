.class final synthetic Lcom/android/internal/util/-$Lambda$yemvYsjJALMa5EcxPVEO8dzsQUY;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/-$Lambda$yemvYsjJALMa5EcxPVEO8dzsQUY;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->lambda$-com_android_internal_util_StateMachine$SmHandler_43582(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/-$Lambda$yemvYsjJALMa5EcxPVEO8dzsQUY;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/util/-$Lambda$yemvYsjJALMa5EcxPVEO8dzsQUY;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
