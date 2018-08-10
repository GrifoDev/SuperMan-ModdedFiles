.class Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;
.super Ljava/lang/Object;
.source "NeonAnimationNewMessage.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CountAnimatiorListener"
.end annotation


# instance fields
.field protected final mBaseCount:I

.field final synthetic this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;->this$0:Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimationNewMessage$CountAnimatiorListener;->mBaseCount:I

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
