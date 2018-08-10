.class final synthetic Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic -$f0:Z


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;->-$f0:Z

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-static {v0, p1}, Lcom/android/systemui/DockedStackExistsListener;->lambda$-com_android_systemui_DockedStackExistsListener_2817(ZLjava/lang/ref/WeakReference;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;->-$f0:Z

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/-$Lambda$hrhGgnBZlI4TxBMU92uUeesjggg;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
