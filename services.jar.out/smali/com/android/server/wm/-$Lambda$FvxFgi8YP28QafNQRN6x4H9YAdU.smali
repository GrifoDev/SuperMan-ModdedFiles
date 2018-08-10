.class final synthetic Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:F

.field private final synthetic -$f1:F

.field private final synthetic -$f2:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f2:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/DragState;

    iget v1, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f0:F

    iget v2, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f1:F

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/DragState;->lambda$-com_android_server_wm_DragState_12157(FFLcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public synthetic constructor <init>(FFLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f0:F

    iput p2, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f1:F

    iput-object p3, p0, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->-$f2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$FvxFgi8YP28QafNQRN6x4H9YAdU;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
