.class Lcom/android/incallui/fragment/VideoCallVGAFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

.field final synthetic val$isPreview:Z

.field final synthetic val$savedDuration:I

.field final synthetic val$viewGroup:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VideoCallVGAFragment;ZILandroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

    iput-boolean p2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$isPreview:Z

    iput p3, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$savedDuration:I

    iput-object p4, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGlobalLayout - setBigViewLocation : isPreview="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$isPreview:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$savedDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->location(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$viewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->this$0:Lcom/android/incallui/fragment/VideoCallVGAFragment;

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$isPreview:Z

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallVGAFragment$2;->val$savedDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/fragment/VideoCallVGAFragment;->setBigViewLocation(ZI)V

    goto :goto_0
.end method
