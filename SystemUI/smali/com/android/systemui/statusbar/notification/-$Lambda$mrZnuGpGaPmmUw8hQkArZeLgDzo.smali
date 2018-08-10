.class final synthetic Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->lambda$-com_android_systemui_statusbar_notification_NotificationDozeHelper_3101(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$mrZnuGpGaPmmUw8hQkArZeLgDzo;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
