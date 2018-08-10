.class Lcom/android/systemui/qs/SecQsAnimator$2;
.super Ljava/lang/Object;
.source "SecQsAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/SecQsAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/SecQsAnimator;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/SecQsAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v0}, Lcom/android/systemui/qs/SecQsAnimator;->-wrap0(Lcom/android/systemui/qs/SecQsAnimator;)V

    iget-object v0, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    iget-object v1, p0, Lcom/android/systemui/qs/SecQsAnimator$2;->this$0:Lcom/android/systemui/qs/SecQsAnimator;

    invoke-static {v1}, Lcom/android/systemui/qs/SecQsAnimator;->-get0(Lcom/android/systemui/qs/SecQsAnimator;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SecQsAnimator;->setPosition(F)V

    return-void
.end method
