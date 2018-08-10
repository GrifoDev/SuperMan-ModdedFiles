.class final synthetic Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/AppWindowContainerController;

    iget-object v1, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f2:Ljava/lang/Object;

    check-cast v1, Landroid/view/WindowManagerPolicy$StartingSurface;

    iget-object v2, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f0:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/AppWindowContainerController;->lambda$-com_android_server_wm_AppWindowContainerController_36862(Landroid/view/WindowManagerPolicy$StartingSurface;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f0:I

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->-$f3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/-$Lambda$yD_PJl7HJqiWmREGaMLSh2Wy11U$3;->$m$0()V

    return-void
.end method
