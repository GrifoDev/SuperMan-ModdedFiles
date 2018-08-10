.class Lcom/android/server/wm/SnapshotStartingData;
.super Lcom/android/server/wm/StartingData;
.source "SnapshotStartingData.java"


# instance fields
.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/ActivityManager$TaskSnapshot;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/StartingData;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object p1, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    return-void
.end method


# virtual methods
.method createStartingSurface(Lcom/android/server/wm/AppWindowToken;)Landroid/view/WindowManagerPolicy$StartingSurface;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SnapshotStartingData;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v1, p0, Lcom/android/server/wm/SnapshotStartingData;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TaskSnapshotController;->createStartingSurface(Lcom/android/server/wm/AppWindowToken;Landroid/app/ActivityManager$TaskSnapshot;)Landroid/view/WindowManagerPolicy$StartingSurface;

    move-result-object v0

    return-object v0
.end method
