.class public Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/MaterialColorMapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MaterialPalette"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;

    invoke-direct {v0}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    iput p2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/common/util/MaterialColorMapUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    iget v2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    iget v3, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    iget v3, p1, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
