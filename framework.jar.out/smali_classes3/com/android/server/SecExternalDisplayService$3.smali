.class Lcom/android/server/SecExternalDisplayService$3;
.super Ljava/lang/Object;
.source "SecExternalDisplayService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/SecExternalDisplayService;->updateExternalDisplayStatus(IZ)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayService$3;->this$0:Lcom/android/server/SecExternalDisplayService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/SecExternalDisplayService;->updateExternalDisplayStatus(IZ)V

    return-void
.end method
