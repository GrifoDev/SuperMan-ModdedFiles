.class final synthetic Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/desktopmode/DesktopModeHwManager;

    invoke-virtual {v0, p1}, Lcom/android/server/desktopmode/DesktopModeHwManager;->lambda$-com_android_server_desktopmode_DesktopModeHwManager_10872(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/-$Lambda$twugYrERql87KSIXgMjV0NFML4A;->$m$0(Landroid/view/MotionEvent;)V

    return-void
.end method
