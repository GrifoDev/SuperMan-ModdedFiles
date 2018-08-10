.class Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;
.super Ljava/lang/Object;
.source "NavigationBarPressureGaugePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ButtonViewHolder"
.end annotation


# instance fields
.field private mBackgroundCircle:[Landroid/widget/ImageView;

.field private mButtonImage:[Landroid/widget/ImageView;

.field private mPressure_Gauge:[Landroid/widget/ImageView;

.field private mRippleView:[Landroid/widget/ImageView;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    return-object v0
.end method

.method public constructor <init>(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mButtonImage:[Landroid/widget/ImageView;

    new-array v0, v1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mRippleView:[Landroid/widget/ImageView;

    const v0, 0x7f0a03e9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mBackgroundCircle:[Landroid/widget/ImageView;

    const v0, 0x7f0a03e2

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mButtonImage:[Landroid/widget/ImageView;

    const v0, 0x7f0a03e3

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/navigationbar/NavigationBarPressureGaugePreference$ButtonViewHolder;->mPressure_Gauge:[Landroid/widget/ImageView;

    const v0, 0x7f0a03e7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    return-void
.end method
