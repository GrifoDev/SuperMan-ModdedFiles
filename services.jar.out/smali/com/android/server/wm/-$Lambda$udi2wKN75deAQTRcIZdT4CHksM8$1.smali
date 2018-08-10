.class final synthetic Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:I

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/VirtualScreenPointerEventListener;

    iget v1, p0, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;->-$f0:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/VirtualScreenPointerEventListener;->lambda$-com_android_server_wm_VirtualScreenPointerEventListener_9724(ILandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;->-$f0:I

    iput-object p2, p0, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/-$Lambda$udi2wKN75deAQTRcIZdT4CHksM8$1;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
