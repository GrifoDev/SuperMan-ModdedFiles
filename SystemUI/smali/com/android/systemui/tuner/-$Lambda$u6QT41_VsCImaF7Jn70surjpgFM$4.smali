.class final synthetic Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;

.field private final synthetic -$f2:Ljava/lang/Object;

.field private final synthetic -$f3:Ljava/lang/Object;

.field private final synthetic -$f4:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/NavBarTuner;

    iget-object v1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f2:Ljava/lang/Object;

    check-cast v2, Landroid/support/v7/preference/ListPreference;

    iget-object v3, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f3:Ljava/lang/Object;

    check-cast v3, Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f4:Ljava/lang/Object;

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$-com_android_systemui_tuner_NavBarTuner_6689(Ljava/lang/String;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Landroid/support/v7/preference/ListPreference;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f2:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f3:Ljava/lang/Object;

    iput-object p5, p0, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->-$f4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/tuner/-$Lambda$u6QT41_VsCImaF7Jn70surjpgFM$4;->$m$0(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
