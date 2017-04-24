.class Lcom/android/systemui/qs/tiles/LocationTile$2;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->handleClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->IS_DCM_POPUP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->-get1(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(ZZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$2;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    return-void
.end method
