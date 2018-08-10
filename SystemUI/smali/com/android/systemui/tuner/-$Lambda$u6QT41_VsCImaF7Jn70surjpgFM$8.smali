.class final synthetic Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;

.field private final synthetic -$f5:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/content/DialogInterface;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/preference/Preference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    iget-object v5, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f5:Ljava/lang/Object;

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$-com_android_systemui_tuner_NavBarTuner_7397(Landroid/widget/EditText;Landroid/support/v7/preference/Preference;Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/ListPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f4:Ljava/lang/Object;

    iput-object p6, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->-$f5:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$8;->$m$0(Landroid/content/DialogInterface;I)V

    return-void
.end method
