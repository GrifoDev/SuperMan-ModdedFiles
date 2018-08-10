.class final synthetic Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-virtual {v0}, Lcom/android/systemui/volume/VolumeDialogComponent;->-com_android_systemui_volume_VolumeDialogComponent-mthref-0()Lcom/android/systemui/plugins/VolumeDialog;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/volume/-$Lambda$vM5D88JNNgGAVWmVTcPK7FEgNVw$1;->$m$0()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
