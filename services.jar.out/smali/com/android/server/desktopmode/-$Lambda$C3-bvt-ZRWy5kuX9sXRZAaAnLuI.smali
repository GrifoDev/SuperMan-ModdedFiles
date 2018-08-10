.class final synthetic Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f1:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v2, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f0:I

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/ToastManager;->lambda$-com_android_server_desktopmode_ToastManager_1237(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f0:I

    iput-object p2, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/desktopmode/-$Lambda$C3-bvt-ZRWy5kuX9sXRZAaAnLuI;->$m$0()V

    return-void
.end method
