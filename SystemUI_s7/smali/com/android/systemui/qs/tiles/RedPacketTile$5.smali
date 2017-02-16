.class Lcom/android/systemui/qs/tiles/RedPacketTile$5;
.super Ljava/lang/Object;
.source "RedPacketTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RedPacketTile;->showConfirmCheckboxPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

.field final synthetic val$dontShowCheckbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RedPacketTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$5;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$5;->val$dontShowCheckbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$5;->val$dontShowCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$5;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-get2(Lcom/android/systemui/qs/tiles/RedPacketTile;)Lcom/android/systemui/qs/SystemSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RedPacketTile$5;->this$0:Lcom/android/systemui/qs/tiles/RedPacketTile;

    invoke-static {v0, v1}, Lcom/android/systemui/qs/tiles/RedPacketTile;->-wrap2(Lcom/android/systemui/qs/tiles/RedPacketTile;Z)V

    return-void
.end method
