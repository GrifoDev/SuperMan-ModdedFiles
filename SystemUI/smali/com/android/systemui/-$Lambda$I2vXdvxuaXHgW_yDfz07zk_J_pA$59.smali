.class final synthetic Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    invoke-static {v0, p1}, Lcom/android/systemui/Dependency;->lambda$-com_android_systemui_Dependency_16952(Landroid/content/res/Configuration;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/-$Lambda$I2vXdvxuaXHgW_yDfz07zk_J_pA$59;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
