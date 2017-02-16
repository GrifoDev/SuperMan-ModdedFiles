.class Landroid/util/ResolutionOverride$2;
.super Ljava/lang/Object;
.source "ResolutionOverride.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/util/ResolutionOverride;->handleResize(Landroid/view/SurfaceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/util/ResolutionOverride;

.field final synthetic val$surfaceView:Landroid/view/SurfaceView;


# direct methods
.method constructor <init>(Landroid/util/ResolutionOverride;Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/util/ResolutionOverride;
    .param p2, "val$surfaceView"    # Landroid/view/SurfaceView;

    .prologue
    .line 136
    iput-object p1, p0, Landroid/util/ResolutionOverride$2;->this$0:Landroid/util/ResolutionOverride;

    iput-object p2, p0, Landroid/util/ResolutionOverride$2;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Landroid/util/ResolutionOverride$2;->val$surfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 138
    return-void
.end method
