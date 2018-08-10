.class Lcom/android/systemui/volume/VolumeDialogImpl$8;
.super Ljava/lang/Object;
.source "VolumeDialogImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogImpl;->dismissH(I)V
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

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogImpl$8;->this$0:Lcom/android/systemui/volume/VolumeDialogImpl;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumeDialogImpl;->-wrap11(Lcom/android/systemui/volume/VolumeDialogImpl;ZZ)V

    return-void
.end method
