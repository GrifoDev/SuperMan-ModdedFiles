.class Lcom/android/systemui/qs/tiles/RotationLockTile$1;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotationLockStateChanged(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$1;->this$0:Lcom/android/systemui/qs/tiles/RotationLockTile;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/RotationLockTile;->-wrap0(Lcom/android/systemui/qs/tiles/RotationLockTile;Ljava/lang/Object;)V

    return-void
.end method
