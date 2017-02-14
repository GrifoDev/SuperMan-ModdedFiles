.class public Landroid/text/style/LocaleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "LocaleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final mLocales:Landroid/os/LocaleList;


# direct methods
.method public constructor <init>(Landroid/os/LocaleList;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    const-string/jumbo v0, "locales cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    sget-object v0, Landroid/os/LocaleList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 3

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/LocaleList;->getEmptyLocaleList()Landroid/os/LocaleList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-void

    :cond_0
    new-instance v0, Landroid/os/LocaleList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getLocales()Landroid/os/LocaleList;
    .locals 1

    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public getSpanTypeId()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/style/LocaleSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const/16 v0, 0x17

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-static {p1, v0}, Landroid/text/style/LocaleSpan;->apply(Landroid/graphics/Paint;Landroid/os/LocaleList;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/LocaleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/text/style/LocaleSpan;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, p1, p2}, Landroid/os/LocaleList;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
