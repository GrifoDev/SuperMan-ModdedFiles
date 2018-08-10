.class public final Landroid/view/textservice/SpellCheckerSubtype;
.super Ljava/lang/Object;
.source "SpellCheckerSubtype.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textservice/SpellCheckerSubtype$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_VALUE_KEY_VALUE_SEPARATOR:Ljava/lang/String; = "="

.field private static final EXTRA_VALUE_PAIR_SEPARATOR:Ljava/lang/String; = ","

.field public static final SUBTYPE_ID_NONE:I = 0x0

.field private static final SUBTYPE_LANGUAGE_TAG_NONE:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mExtraValueHashMapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubtypeExtraValue:Ljava/lang/String;

.field private final mSubtypeHashCode:I

.field private final mSubtypeId:I

.field private final mSubtypeLanguageTag:Ljava/lang/String;

.field private final mSubtypeLocale:Ljava/lang/String;

.field private final mSubtypeNameResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/view/textservice/SpellCheckerSubtype$1;

    invoke-direct {v0}, Landroid/view/textservice/SpellCheckerSubtype$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SpellCheckerSubtype;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string/jumbo v3, ""

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/textservice/SpellCheckerSubtype;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    if-eqz p3, :cond_1

    :goto_1
    iput-object p3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    if-eqz p4, :cond_2

    :goto_2
    iput-object p4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    iput p5, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    :goto_3
    iput v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return-void

    :cond_0
    const-string/jumbo p2, ""

    goto :goto_0

    :cond_1
    const-string/jumbo p3, ""

    goto :goto_1

    :cond_2
    const-string/jumbo p4, ""

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    :goto_3
    iput v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return-void

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_2
    const-string/jumbo v0, ""

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_3
.end method

.method private getExtraValueHashMap()Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    if-nez v4, :cond_3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v0, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v4, v3, v1

    const-string/jumbo v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-ne v4, v7, :cond_1

    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    invoke-virtual {v4, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v4, v2

    if-le v4, v7, :cond_0

    array-length v4, v2

    const/4 v5, 0x2

    if-le v4, v5, :cond_2

    sget-object v4, Landroid/view/textservice/SpellCheckerSubtype;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "ExtraValue has two or more \'=\'s"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    aget-object v5, v2, v8

    aget-object v6, v2, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mExtraValueHashMapCache:Ljava/util/HashMap;

    return-object v4
.end method

.method private static hashCodeInternal(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static sort(Landroid/content/Context;ILandroid/view/textservice/SpellCheckerInfo;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/view/textservice/SpellCheckerInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/textservice/SpellCheckerSubtype;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/textservice/SpellCheckerSubtype;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-object v2
.end method


# virtual methods
.method public containsExtraValueKey(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Landroid/view/textservice/SpellCheckerSubtype;

    if-eqz v2, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/textservice/SpellCheckerSubtype;

    iget v2, v0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-nez v2, :cond_0

    iget v2, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getNameResId()I

    move-result v3

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLanguageTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_3
    return v1

    :cond_4
    return v1
.end method

.method public getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget v3, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    if-nez v3, :cond_1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {v3, p2, v4, p3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    return-object v1
.end method

.method public getExtraValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraValueOf(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Landroid/view/textservice/SpellCheckerSubtype;->getExtraValueHashMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocaleObject()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/inputmethod/InputMethodUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getNameResId()I
    .locals 1

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeHashCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeNameResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLocale:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeLanguageTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeExtraValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textservice/SpellCheckerSubtype;->mSubtypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
