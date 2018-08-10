.class final synthetic Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsComponent;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/GlobalActionsComponent;->lambda$-com_android_systemui_globalactions_GlobalActionsComponent_1955()Lcom/android/systemui/plugins/GlobalActions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/globalactions/-$Lambda$2rUcRmPVP2t4i4QQIidfILmOG0w;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
