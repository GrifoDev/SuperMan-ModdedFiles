.class Lcom/android/systemui/qs/tiles/LocationTile$3;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/LocationTile;->showLocationConsentDialog()V
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

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->refreshState()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$3;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/LocationTile;->-set0(Lcom/android/systemui/qs/tiles/LocationTile;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method
