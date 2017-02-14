.class Lcom/android/launcher2/Workspace$5;
.super Ljava/lang/Thread;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->setWallpaperDimension()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;
    invoke-static {v0}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mWallpaperWidth:I
    invoke-static {v1}, Lcom/android/launcher2/Workspace;->access$700(Lcom/android/launcher2/Workspace;)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace$5;->this$0:Lcom/android/launcher2/Workspace;

    # getter for: Lcom/android/launcher2/Workspace;->mWallpaperHeight:I
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    return-void
.end method
