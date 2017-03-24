.class Lcom/android/systemui/qs/tiles/WifiCallingTile$9;
.super Ljava/lang/Object;
.source "WifiCallingTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/WifiCallingTile;->showLocationInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

.field final synthetic val$disableAlertCheckBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiCallingTile;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;->val$disableAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_dialog_show_never_again"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/WifiCallingTile$9;->this$0:Lcom/android/systemui/qs/tiles/WifiCallingTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/WifiCallingTile;->-get3(Lcom/android/systemui/qs/tiles/WifiCallingTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wfc_dialog_show_never_again"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
