.class Lcom/android/systemui/volume/VolumeDialogComponent$1;
.super Ljava/lang/Object;
.source "VolumeDialogComponent.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumeDialogComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZenPrioritySettingsClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_PRIORITY_SETTINGS:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->-wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V

    return-void
.end method

.method public onZenSettingsClicked()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent$1;->this$0:Lcom/android/systemui/volume/VolumeDialogComponent;

    sget-object v1, Lcom/android/systemui/volume/ZenModePanel;->ZEN_SETTINGS:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogComponent;->-wrap0(Lcom/android/systemui/volume/VolumeDialogComponent;Landroid/content/Intent;)V

    return-void
.end method
