.class Lcom/android/systemui/qs/tiles/MobileDataTile$14;
.super Ljava/lang/Object;
.source "MobileDataTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MobileDataTile;->showPopupDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$14;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$14;->this$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/MobileDataTile;->refreshState()V

    return-void
.end method
