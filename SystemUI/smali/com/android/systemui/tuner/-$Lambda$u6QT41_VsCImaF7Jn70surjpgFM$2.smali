.class final synthetic Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$-com_android_systemui_tuner_NavBarTuner_5038(Landroid/support/v7/preference/ListPreference;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$2;->$m$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
