.class Lcom/android/systemui/volume/VolumeDialogController$C$3;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogController$C;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

.field final synthetic val$copy:Lcom/android/systemui/volume/VolumeDialogController$State;

.field final synthetic val$entry:Ljava/util/Map$Entry;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController$C;Ljava/util/Map$Entry;Lcom/android/systemui/volume/VolumeDialogController$State;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$C$3;->this$1:Lcom/android/systemui/volume/VolumeDialogController$C;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumeDialogController$C$3;->val$entry:Ljava/util/Map$Entry;

    iput-object p3, p0, Lcom/android/systemui/volume/VolumeDialogController$C$3;->val$copy:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$C$3;->val$entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$C$3;->val$copy:Lcom/android/systemui/volume/VolumeDialogController$State;

    invoke-interface {v0, v1}, Lcom/android/systemui/volume/VolumeDialogController$Callbacks;->onStateChanged(Lcom/android/systemui/volume/VolumeDialogController$State;)V

    return-void
.end method
