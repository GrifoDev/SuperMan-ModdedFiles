.class final synthetic Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    iget-object v1, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/io/PrintWriter;

    iget-object v2, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f2:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/systemui/Dependency;->lambda$-com_android_systemui_Dependency_16635(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$60;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
