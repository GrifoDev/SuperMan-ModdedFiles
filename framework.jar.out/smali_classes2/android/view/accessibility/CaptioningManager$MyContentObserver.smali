.class Landroid/view/accessibility/CaptioningManager$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "CaptioningManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/CaptioningManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/view/accessibility/CaptioningManager;


# direct methods
.method public constructor <init>(Landroid/view/accessibility/CaptioningManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "accessibility_captioning_enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap0(Landroid/view/accessibility/CaptioningManager;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "accessibility_captioning_locale"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap2(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "accessibility_captioning_font_scale"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v2}, Landroid/view/accessibility/CaptioningManager;->-wrap1(Landroid/view/accessibility/CaptioningManager;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->-get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/view/accessibility/CaptioningManager$MyContentObserver;->this$0:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v3}, Landroid/view/accessibility/CaptioningManager;->-get0(Landroid/view/accessibility/CaptioningManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
