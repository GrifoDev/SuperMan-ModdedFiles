.class final synthetic Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/WindowLayersController;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowLayersController;->lambda$-com_android_server_wm_WindowLayersController_5495(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$rQWNC8oUFFqNI368PlDEO7_YsgQ$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
