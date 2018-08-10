.class Lcom/android/systemui/volume/VolumeDialogImpl$9;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->updateExpandButtonH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/VolumeDialogImpl;->-set1(Lcom/android/systemui/volume/VolumeDialogImpl;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap10(Lcom/android/systemui/volume/VolumeDialogImpl;)V

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$9;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogImpl;->rescheduleTimeoutH()V

    return-void
.end method
