.class final synthetic Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogComponent;

    check-cast p1, Lcom/android/systemui/plugins/VolumeDialog;

    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogComponent;->lambda$-com_android_systemui_volume_VolumeDialogComponent_3896(Lcom/android/systemui/plugins/VolumeDialog;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
