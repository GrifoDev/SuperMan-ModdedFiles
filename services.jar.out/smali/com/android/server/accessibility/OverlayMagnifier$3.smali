.class Lcom/android/server/accessibility/OverlayMagnifier$3;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "OverlayMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/OverlayMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/OverlayMagnifier;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/OverlayMagnifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1, v0}, Lcom/android/server/accessibility/OverlayMagnifier;->-set0(Lcom/android/server/accessibility/OverlayMagnifier;Z)Z

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-get1(Lcom/android/server/accessibility/OverlayMagnifier;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/OverlayMagnifier$3;->this$0:Lcom/android/server/accessibility/OverlayMagnifier;

    invoke-static {v1}, Lcom/android/server/accessibility/OverlayMagnifier;->-wrap0(Lcom/android/server/accessibility/OverlayMagnifier;)V

    :cond_0
    return-void
.end method
