.class final Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;
.super Ljava/lang/Object;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayMagnifierPolicy"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;
    }
.end annotation


# static fields
.field private static final LONG_HOVER_RECOGNITION_TIME:I = 0x3e8

.field private static final MESSAGE_MAGNIFIER_START:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIsMagnifying:Z

.field private mLatestMotionEvent:Landroid/view/MotionEvent;

.field private final mMagnificationSpec:Landroid/view/MagnificationSpec;

.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return p1
.end method

.method public constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    new-instance v0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy$1;-><init>(Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;)V

    iput-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public isMagnifying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    return v0
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ACTION_HOVER_ENTER"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mLatestMotionEvent:Landroid/view/MotionEvent;

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/server/accessibility/OverlayMagnifier;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Overlay Magnifier end!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public stopMagnifier()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mIsMagnifying:Z

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/OverlayMagnifier$OverlayMagnifierPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
